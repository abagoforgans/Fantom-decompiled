contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0x5e9007077e3d4f468a8a5a2de9339c728d282846 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
