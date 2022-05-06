contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function test(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < 1000:
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(stor0)
    call stor0.0xd8ccd0f3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
