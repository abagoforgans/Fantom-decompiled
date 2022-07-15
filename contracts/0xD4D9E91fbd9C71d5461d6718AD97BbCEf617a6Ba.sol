contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function test2(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call arg1 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function test(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
