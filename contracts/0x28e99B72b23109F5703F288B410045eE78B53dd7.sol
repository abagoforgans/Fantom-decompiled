contract main {




// =====================  Runtime code  =====================


function _fallback() {
    call call.func_hash with:
       value cd[64] wei
         gas cd[32] wei
        args call.data[96 len calldata.size - 96]
    revert with Mask(8, 248, ext_call.success) >> 248, ext_call.return_data[0 len return_data.size]
}



}
