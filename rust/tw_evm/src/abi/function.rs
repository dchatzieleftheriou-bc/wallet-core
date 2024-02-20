// SPDX-License-Identifier: Apache-2.0
//
// Copyright © 2017 Trust Wallet.

use crate::abi::decode::decode_params;
use crate::abi::encode::encode_tokens;
use crate::abi::param::Param;
use crate::abi::param_token::NamedToken;
use crate::abi::signature::short_signature;
use crate::abi::token::Token;
use crate::abi::{AbiError, AbiErrorKind, AbiResult};
use itertools::Itertools;
use serde::Deserialize;
use tw_coin_entry::error::prelude::*;
use tw_memory::Data;

#[derive(Clone, Debug, Default, Deserialize)]
pub struct Function {
    /// Function name.
    pub name: String,
    /// Function input.
    pub inputs: Vec<Param>,
    /// Function output.
    pub outputs: Vec<Param>,
}

impl Function {
    /// Returns a signature that uniquely identifies this function.
    ///
    /// Examples:
    /// - `functionName()`
    /// - `functionName():(uint256)`
    /// - `functionName(bool):(uint256,string)`
    /// - `functionName(uint256,bytes32):(string,uint256)`
    pub fn signature(&self) -> String {
        let inputs = self.inputs.iter().map(|p| p.kind.to_type_long()).join(",");

        let outputs = self.outputs.iter().map(|p| p.kind.to_type_long()).join(",");

        match (inputs.len(), outputs.len()) {
            (_, 0) => format!("{}({inputs})", self.name),
            (_, _) => format!("{}({inputs}):({outputs})", self.name),
        }
    }

    /// Parses the ABI function input to a list of tokens.
    pub fn decode_input(&self, data: &[u8]) -> AbiResult<Vec<NamedToken>> {
        decode_params(&self.inputs, data)
    }

    /// Encodes function input to Eth ABI binary.
    pub fn encode_input(&self, tokens: &[Token]) -> AbiResult<Data> {
        // Check if the given tokens match `Self::inputs` ABI.
        let input_param_types: Vec<_> =
            self.inputs.iter().map(|param| param.kind.clone()).collect();
        for (token_idx, (token, kind)) in tokens.iter().zip(input_param_types.iter()).enumerate() {
            let actual_kind = token.to_param_type();
            if actual_kind != *kind {
                return AbiError::err(AbiErrorKind::Error_abi_mismatch).with_context(|| {
                    format!(
                        "Expected {kind:?} type parameter at {token_idx}, found {actual_kind:?}"
                    )
                });
            }
        }

        // Note: the `short_signature` methods only takes the `input_param_types` which come from the ERC20 abi (see erc20.abi.json)
        // as a result it will create the correct signature regardless of the passed Tokens, 
        // Any extra Token that do not appear on the ERC20 Abi json will be ignored!
        let signed = short_signature(&self.name, &input_param_types);
        // this encodes all the given Tokens
        let encoded = encode_tokens(tokens);
        Ok(signed.into_iter().chain(encoded).collect())
    }
}
