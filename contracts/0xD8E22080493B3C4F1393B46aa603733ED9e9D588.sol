contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function approveAll(address arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    while idx < arg2.length:
        mem[96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), cd[((32 * idx) + arg2 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
