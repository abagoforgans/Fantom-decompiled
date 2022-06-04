contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function testFlashSwap(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!pair'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if arg1 == address(ext_call.return_data[0]):
        if arg1 == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg2, arg2, address(this.address), 128, 64, address(arg1), arg2
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg2, 0, address(this.address), 128, 64, address(arg1), arg2
    else:
        if arg1 == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg2, address(this.address), 128, 64, address(arg1), arg2
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 64, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!pair'
    if arg1 != this.address:
        revert with 0, '!sender'
    require arg4.length >= 64
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == cd[(arg4 + 68)]
    if cd[(arg4 + 68)] and 3 > -1 / cd[(arg4 + 68)]:
        revert with 'NH{q', 17
    if 3 * cd[(arg4 + 68)] / 997 > -2:
        revert with 'NH{q', 17
    if cd[(arg4 + 68)] > -(3 * cd[(arg4 + 68)] / 997) - 2:
        revert with 'NH{q', 17
    emit Log(Array(len=6, data='amount'), cd[(arg4 + 68)]);
    emit Log(Array(len=7, data='amount0'), arg2);
    emit Log(Array(len=7, data='amount1'), arg3);
    emit Log(Array(len=3, data='fee'), (3 * cd[(arg4 + 68)] / 997) + 1);
    emit Log(Array(len=15, data='amount to repay'), cd[(arg4 + 68)] + (3 * cd[(arg4 + 68)] / 997) + 1);
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), cd[(arg4 + 68)] + (3 * cd[(arg4 + 68)] / 997) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
