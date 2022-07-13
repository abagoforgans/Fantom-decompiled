contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_5935f3ac(?)
#
address stor0;
mapping of uint8 stor1;

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is owner'
    stor0 = arg1
}

function updateWhitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Caller is owner'
    stor1[address(arg1)] = uint8(arg2)
}

function _fallback() payable {
    mem[64] = 96
    mem[0 len calldata.size] = call.data[0 len calldata.size]
    mem[3 len 8] = 92
    call this.address with:
         gas gas_remaining wei
        args mem[4 len calldata.size - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'Caller is owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer successful'
}

function sub_b691d78c(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not stor1[tx.origin]:
        revert with 0, 'origin is whitelisted'
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, arg3, address(this.address), Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drain(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Caller is owner'
    if not arg2:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'Transfer successful'
    else:
        require ext_code.size(arg2)
        call arg2.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function sub_9fe75541(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg4 >= 1000:
        revert with 0, 'Fee is too large'
    if 1000 < arg4:
        revert with 'NH{q', 17
    if arg1 and -arg4 + 1000 > -1 / arg1:
        revert with 'NH{q', 17
    if (1000 * arg1) - (arg4 * arg1) and arg3 > -1 / (1000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 17
    if arg2 and 1000 > -1 / arg2:
        revert with 'NH{q', 17
    if 1000 * arg2 > (-1000 * arg1) + (arg4 * arg1) - 1:
        revert with 'NH{q', 17
    if not (1000 * arg2) + (1000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 18
    return ((1000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (1000 * arg2) + (1000 * arg1) - (arg4 * arg1))
}

function sub_17be1cc0(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if arg1 <= 0:
        revert with 0, 'amountOut has to be non-zero'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg4 >= 1000:
        revert with 0, 'Fee is too large'
    if arg2 and arg1 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * arg1 and 1000 > -1 / arg2 * arg1:
        revert with 'NH{q', 17
    if arg1 and 1000 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 and arg4 > -1 / arg1:
        revert with 'NH{q', 17
    if 1000 < arg4:
        revert with 'NH{q', 17
    if arg3 and -arg4 + 1000 > -1 / arg3:
        revert with 'NH{q', 17
    if (1000 * arg3) - (arg4 * arg3) > (-1 * arg1 * arg4) - 1:
        revert with 'NH{q', 17
    if (1000 * arg3) - (arg4 * arg3) + (arg1 * arg4) < 1000 * arg1:
        revert with 'NH{q', 17
    if not (1000 * arg3) - (arg4 * arg3) + (arg1 * arg4) - (1000 * arg1):
        revert with 'NH{q', 18
    if 1000 * arg2 * arg1 % (1000 * arg3) - (arg4 * arg3) + (arg1 * arg4) - (1000 * arg1) <= 0:
        return (1000 * arg2 * arg1 / (1000 * arg3) - (arg4 * arg3) + (arg1 * arg4) - (1000 * arg1))
    if 1000 * arg2 * arg1 / (1000 * arg3) - (arg4 * arg3) + (arg1 * arg4) - (1000 * arg1) > -2:
        revert with 'NH{q', 17
    return ((1000 * arg2 * arg1 / (1000 * arg3) - (arg4 * arg3) + (arg1 * arg4) - (1000 * arg1)) + 1)
}

function sub_26f91506(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    if stor0 != msg.sender:
        revert with 0, 'Caller is owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Input lengths have to match'
    if address(cd[68]):
        require ext_code.size(address(cd[68]))
        call address(cd[68]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(cd[68]))
        call address(cd[68]).0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[((32 * idx) + cd[36] + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'Transfer successful'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_fcb2245c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    if stor0 != msg.sender:
        revert with 0, 'Caller is owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        require mem[_15] == mem[_15]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = _16
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[36]), _16
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_19] == bool(mem[_19])
        if not mem[_19]:
            revert with 0, 'Transfer successful'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_5078894c(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == bool(arg3)
    require arg4 == arg4
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg2 <= 0:
        revert with 0, 'amountOut has to be non-zero'
    if not arg3:
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if arg4 >= 1000:
            revert with 0, 'Fee is too large'
        if ext_call.return_data[18 len 14] and arg2 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] * arg2 and 1000 > -1 / ext_call.return_data[18 len 14] * arg2:
            revert with 'NH{q', 17
        if arg2 and 1000 > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 and arg4 > -1 / arg2:
            revert with 'NH{q', 17
        if 1000 < arg4:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and -arg4 + 1000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if (1000 * ext_call.return_data[50 len 14]) - (arg4 * ext_call.return_data[50 len 14]) > (-1 * arg2 * arg4) - 1:
            revert with 'NH{q', 17
        if (1000 * ext_call.return_data[50 len 14]) - (arg4 * ext_call.return_data[50 len 14]) + (arg2 * arg4) < 1000 * arg2:
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[50 len 14]) - (arg4 * ext_call.return_data[50 len 14]) + (arg2 * arg4) - (1000 * arg2):
            revert with 'NH{q', 18
        if 1000 * ext_call.return_data[18 len 14] * arg2 % (1000 * ext_call.return_data[50 len 14]) - (arg4 * ext_call.return_data[50 len 14]) + (arg2 * arg4) - (1000 * arg2) <= 0:
            return (1000 * ext_call.return_data[18 len 14] * arg2 / (1000 * ext_call.return_data[50 len 14]) - (arg4 * ext_call.return_data[50 len 14]) + (arg2 * arg4) - (1000 * arg2))
        if 1000 * ext_call.return_data[18 len 14] * arg2 / (1000 * ext_call.return_data[50 len 14]) - (arg4 * ext_call.return_data[50 len 14]) + (arg2 * arg4) - (1000 * arg2) > -2:
            revert with 'NH{q', 17
        return ((1000 * ext_call.return_data[18 len 14] * arg2 / (1000 * ext_call.return_data[50 len 14]) - (arg4 * ext_call.return_data[50 len 14]) + (arg2 * arg4) - (1000 * arg2)) + 1)
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg4 >= 1000:
        revert with 0, 'Fee is too large'
    if ext_call.return_data[50 len 14] and arg2 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] * arg2 and 1000 > -1 / ext_call.return_data[50 len 14] * arg2:
        revert with 'NH{q', 17
    if arg2 and 1000 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 and arg4 > -1 / arg2:
        revert with 'NH{q', 17
    if 1000 < arg4:
        revert with 'NH{q', 17
    if ext_call.return_data[18 len 14] and -arg4 + 1000 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if (1000 * ext_call.return_data[18 len 14]) - (arg4 * ext_call.return_data[18 len 14]) > (-1 * arg2 * arg4) - 1:
        revert with 'NH{q', 17
    if (1000 * ext_call.return_data[18 len 14]) - (arg4 * ext_call.return_data[18 len 14]) + (arg2 * arg4) < 1000 * arg2:
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[18 len 14]) - (arg4 * ext_call.return_data[18 len 14]) + (arg2 * arg4) - (1000 * arg2):
        revert with 'NH{q', 18
    if 1000 * ext_call.return_data[50 len 14] * arg2 % (1000 * ext_call.return_data[18 len 14]) - (arg4 * ext_call.return_data[18 len 14]) + (arg2 * arg4) - (1000 * arg2) <= 0:
        return (1000 * ext_call.return_data[50 len 14] * arg2 / (1000 * ext_call.return_data[18 len 14]) - (arg4 * ext_call.return_data[18 len 14]) + (arg2 * arg4) - (1000 * arg2))
    if 1000 * ext_call.return_data[50 len 14] * arg2 / (1000 * ext_call.return_data[18 len 14]) - (arg4 * ext_call.return_data[18 len 14]) + (arg2 * arg4) - (1000 * arg2) > -2:
        revert with 'NH{q', 17
    return ((1000 * ext_call.return_data[50 len 14] * arg2 / (1000 * ext_call.return_data[18 len 14]) - (arg4 * ext_call.return_data[18 len 14]) + (arg2 * arg4) - (1000 * arg2)) + 1)
}



}
