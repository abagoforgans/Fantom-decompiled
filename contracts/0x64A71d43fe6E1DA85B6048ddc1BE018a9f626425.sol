contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0xf39ace5c3e2553d0e86b8d8a07a05df3d0dd18d9 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
