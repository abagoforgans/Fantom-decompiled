contract main {




// =====================  Runtime code  =====================


address stor0;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == stor0)
}

function sub_fa15c887(?) payable {
    require calldata.size - 4 >= 160
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5946756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65,
                    mem[201 len 27]
    require ext_code.size(stor2)
    staticcall stor2.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    mem[128] = arg5
    mem[96] = 32
    mem[160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    mem[164] = arg3
    mem[196] = arg4
    mem[228] = this.address
    mem[260] = 128
    mem[292] = 32
    mem[324] = arg5
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 128, 32, arg5
    if ext_call.success:
        emit 0xf074c8e8: Array(len=24, data='No Error with UniV2Pair?')
    else:
        if return_data.size < 68:
            emit 0xf074c8e8: Array(len=22, data='Error 2 with UniV2Pair')
        else:
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                emit 0xf074c8e8: Array(len=22, data='Error 2 with UniV2Pair')
            else:
                mem[160 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if 0, Mask(224, 32, arg3) >> 32 > test266151307() or 0, Mask(224, 32, arg3) >> 32 + 36 > return_data.size:
                    emit 0xf074c8e8: Array(len=22, data='Error 2 with UniV2Pair')
                else:
                    if mem[0, Mask(224, 32, arg3) >> 32 + 160] > test266151307():
                        emit 0xf074c8e8: Array(len=22, data='Error 2 with UniV2Pair')
                    else:
                        if 0, Mask(224, 32, arg3) >> 32 + mem[0, Mask(224, 32, arg3) >> 32 + 160] + 32 > return_data.size:
                            emit 0xf074c8e8: Array(len=22, data='Error 2 with UniV2Pair')
                        else:
                            mem[64] = 0, Mask(224, 32, arg3) >> 32 + ceil32(mem[0, Mask(224, 32, arg3) >> 32 + 160]) + 192
                            if not 0, Mask(224, 32, arg3) >> 32 + 160:
                                emit 0xf074c8e8: Array(len=22, data='Error 2 with UniV2Pair')
                            else:
                                mem[mem[64] + 32] = 20
                                mem[mem[64] + 64] = 'Error with UniV2Pair'
                                emit 0xf074c8e8: Array(len=20, data='Error with UniV2Pair')
                                _153 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[0, Mask(224, 32, arg3) >> 32 + 160]
                                _155 = mem[0, Mask(224, 32, arg3) >> 32 + 160]
                                mem[mem[64] + 64 len ceil32(mem[0, Mask(224, 32, arg3) >> 32 + 160])] = mem[0, Mask(224, 32, arg3) >> 32 + 192 len ceil32(mem[0, Mask(224, 32, arg3) >> 32 + 160])]
                                if not _155 % 32:
                                    emit 0xf074c8e8: 32, mem[mem[64] + 32 len _155 + 32]
                                else:
                                    mem[floor32(_155) + mem[64] + 64] = mem[floor32(_155) + mem[64] + -(_155 % 32) + 96 len _155 % 32]
                                    emit 0xf074c8e8: mem[mem[64] len floor32(_155) + _153 + -mem[64] + 96]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not arg2:
        require arg4.length >= 32
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        staticcall stor2.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, 'Not from pair?'
        if not arg2:
            if arg3 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                            mem[208 len 20]
            if not arg2:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not arg3:
                    if ext_call.return_data[50 len 14] - arg3 > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[50 len 14]) - (998 * arg3) / 998 != ext_call.return_data[50 len 14] - arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[50 len 14]) - (998 * arg3)
                    if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * arg3)) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * arg3):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2723 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2723 + 192])] = mem[_2723 + 224 len floor32(mem[_2723 + 192])]
                        else:
                            _2725 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2725 + 192])] = mem[_2725 + 224 len floor32(mem[_2725 + 192])]
                    else:
                        if not arg2:
                            _2727 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2727 + 192])] = mem[_2727 + 224 len floor32(mem[_2727 + 192])]
                        else:
                            _2729 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2729 + 192])] = mem[_2729 + 224 len floor32(mem[_2729 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1));
                else:
                    require arg3
                    if ext_call.return_data[18 len 14] * arg3 / arg3 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] * arg3 / 1000 != ext_call.return_data[18 len 14] * arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] - arg3 > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[50 len 14]) - (998 * arg3) / 998 != ext_call.return_data[50 len 14] - arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[50 len 14]) - (998 * arg3)
                    if (1000 * ext_call.return_data[18 len 14] * arg3 / (998 * ext_call.return_data[50 len 14]) - (998 * arg3)) + 1 < 1000 * ext_call.return_data[18 len 14] * arg3 / (998 * ext_call.return_data[50 len 14]) - (998 * arg3):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2731 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2731 + 192])] = mem[_2731 + 224 len floor32(mem[_2731 + 192])]
                        else:
                            _2733 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2733 + 192])] = mem[_2733 + 224 len floor32(mem[_2733 + 192])]
                    else:
                        if not arg2:
                            _2735 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2735 + 192])] = mem[_2735 + 224 len floor32(mem[_2735 + 192])]
                        else:
                            _2737 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2737 + 192])] = mem[_2737 + 224 len floor32(mem[_2737 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1));
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not arg3:
                    if ext_call.return_data[18 len 14] - arg3 > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[18 len 14]) - (998 * arg3) / 998 != ext_call.return_data[18 len 14] - arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[18 len 14]) - (998 * arg3)
                    if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * arg3)) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * arg3):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2739 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2739 + 192])] = mem[_2739 + 224 len floor32(mem[_2739 + 192])]
                        else:
                            _2741 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2741 + 192])] = mem[_2741 + 224 len floor32(mem[_2741 + 192])]
                    else:
                        if not arg2:
                            _2743 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2743 + 192])] = mem[_2743 + 224 len floor32(mem[_2743 + 192])]
                        else:
                            _2745 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2745 + 192])] = mem[_2745 + 224 len floor32(mem[_2745 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1));
                else:
                    require arg3
                    if ext_call.return_data[50 len 14] * arg3 / arg3 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] * arg3 / 1000 != ext_call.return_data[50 len 14] * arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] - arg3 > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[18 len 14]) - (998 * arg3) / 998 != ext_call.return_data[18 len 14] - arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[18 len 14]) - (998 * arg3)
                    if (1000 * ext_call.return_data[50 len 14] * arg3 / (998 * ext_call.return_data[18 len 14]) - (998 * arg3)) + 1 < 1000 * ext_call.return_data[50 len 14] * arg3 / (998 * ext_call.return_data[18 len 14]) - (998 * arg3):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2747 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2747 + 192])] = mem[_2747 + 224 len floor32(mem[_2747 + 192])]
                        else:
                            _2749 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2749 + 192])] = mem[_2749 + 224 len floor32(mem[_2749 + 192])]
                    else:
                        if not arg2:
                            _2751 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2751 + 192])] = mem[_2751 + 224 len floor32(mem[_2751 + 192])]
                        else:
                            _2753 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2753 + 192])] = mem[_2753 + 224 len floor32(mem[_2753 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1));
        else:
            if arg2 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                            mem[208 len 20]
            if not arg2:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not arg2:
                    if ext_call.return_data[50 len 14] - arg2 > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[50 len 14]) - (998 * arg2) / 998 != ext_call.return_data[50 len 14] - arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[50 len 14]) - (998 * arg2)
                    if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * arg2)) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * arg2):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg2
                    mem[228] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2755 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2755 + 192])] = mem[_2755 + 224 len floor32(mem[_2755 + 192])]
                        else:
                            _2757 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2757 + 192])] = mem[_2757 + 224 len floor32(mem[_2757 + 192])]
                    else:
                        if not arg2:
                            _2759 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2759 + 192])] = mem[_2759 + 224 len floor32(mem[_2759 + 192])]
                        else:
                            _2761 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2761 + 192])] = mem[_2761 + 224 len floor32(mem[_2761 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1));
                else:
                    require arg2
                    if ext_call.return_data[18 len 14] * arg2 / arg2 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] * arg2 / 1000 != ext_call.return_data[18 len 14] * arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] - arg2 > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[50 len 14]) - (998 * arg2) / 998 != ext_call.return_data[50 len 14] - arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[50 len 14]) - (998 * arg2)
                    if (1000 * ext_call.return_data[18 len 14] * arg2 / (998 * ext_call.return_data[50 len 14]) - (998 * arg2)) + 1 < 1000 * ext_call.return_data[18 len 14] * arg2 / (998 * ext_call.return_data[50 len 14]) - (998 * arg2):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg2
                    mem[228] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2763 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2763 + 192])] = mem[_2763 + 224 len floor32(mem[_2763 + 192])]
                        else:
                            _2765 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2765 + 192])] = mem[_2765 + 224 len floor32(mem[_2765 + 192])]
                    else:
                        if not arg2:
                            _2767 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2767 + 192])] = mem[_2767 + 224 len floor32(mem[_2767 + 192])]
                        else:
                            _2769 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2769 + 192])] = mem[_2769 + 224 len floor32(mem[_2769 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1));
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not arg2:
                    if ext_call.return_data[18 len 14] - arg2 > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[18 len 14]) - (998 * arg2) / 998 != ext_call.return_data[18 len 14] - arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[18 len 14]) - (998 * arg2)
                    if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * arg2)) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * arg2):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg2
                    mem[228] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2771 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2771 + 192])] = mem[_2771 + 224 len floor32(mem[_2771 + 192])]
                        else:
                            _2773 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2773 + 192])] = mem[_2773 + 224 len floor32(mem[_2773 + 192])]
                    else:
                        if not arg2:
                            _2775 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2775 + 192])] = mem[_2775 + 224 len floor32(mem[_2775 + 192])]
                        else:
                            _2777 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2777 + 192])] = mem[_2777 + 224 len floor32(mem[_2777 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1));
                else:
                    require arg2
                    if ext_call.return_data[50 len 14] * arg2 / arg2 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] * arg2 / 1000 != ext_call.return_data[50 len 14] * arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] - arg2 > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[18 len 14]) - (998 * arg2) / 998 != ext_call.return_data[18 len 14] - arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[18 len 14]) - (998 * arg2)
                    if (1000 * ext_call.return_data[50 len 14] * arg2 / (998 * ext_call.return_data[18 len 14]) - (998 * arg2)) + 1 < 1000 * ext_call.return_data[50 len 14] * arg2 / (998 * ext_call.return_data[18 len 14]) - (998 * arg2):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg2
                    mem[228] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2779 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2779 + 192])] = mem[_2779 + 224 len floor32(mem[_2779 + 192])]
                        else:
                            _2781 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2781 + 192])] = mem[_2781 + 224 len floor32(mem[_2781 + 192])]
                    else:
                        if not arg2:
                            _2783 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2783 + 192])] = mem[_2783 + 224 len floor32(mem[_2783 + 192])]
                        else:
                            _2785 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2785 + 192])] = mem[_2785 + 224 len floor32(mem[_2785 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1));
    else:
        if arg3:
            revert with 0, 'ERROR'
        require arg4.length >= 32
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        staticcall stor2.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, 'Not from pair?'
        if not arg2:
            if arg3 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                            mem[208 len 20]
            if not arg2:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not arg3:
                    if ext_call.return_data[50 len 14] - arg3 > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[50 len 14]) - (998 * arg3) / 998 != ext_call.return_data[50 len 14] - arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[50 len 14]) - (998 * arg3)
                    if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * arg3)) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * arg3):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2787 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2787 + 192])] = mem[_2787 + 224 len floor32(mem[_2787 + 192])]
                        else:
                            _2789 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2789 + 192])] = mem[_2789 + 224 len floor32(mem[_2789 + 192])]
                    else:
                        if not arg2:
                            _2791 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2791 + 192])] = mem[_2791 + 224 len floor32(mem[_2791 + 192])]
                        else:
                            _2793 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2793 + 192])] = mem[_2793 + 224 len floor32(mem[_2793 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1));
                else:
                    require arg3
                    if ext_call.return_data[18 len 14] * arg3 / arg3 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] * arg3 / 1000 != ext_call.return_data[18 len 14] * arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] - arg3 > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[50 len 14]) - (998 * arg3) / 998 != ext_call.return_data[50 len 14] - arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[50 len 14]) - (998 * arg3)
                    if (1000 * ext_call.return_data[18 len 14] * arg3 / (998 * ext_call.return_data[50 len 14]) - (998 * arg3)) + 1 < 1000 * ext_call.return_data[18 len 14] * arg3 / (998 * ext_call.return_data[50 len 14]) - (998 * arg3):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2795 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2795 + 192])] = mem[_2795 + 224 len floor32(mem[_2795 + 192])]
                        else:
                            _2797 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2797 + 192])] = mem[_2797 + 224 len floor32(mem[_2797 + 192])]
                    else:
                        if not arg2:
                            _2799 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2799 + 192])] = mem[_2799 + 224 len floor32(mem[_2799 + 192])]
                        else:
                            _2801 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2801 + 192])] = mem[_2801 + 224 len floor32(mem[_2801 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) - 1));
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not arg3:
                    if ext_call.return_data[18 len 14] - arg3 > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[18 len 14]) - (998 * arg3) / 998 != ext_call.return_data[18 len 14] - arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[18 len 14]) - (998 * arg3)
                    if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * arg3)) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * arg3):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2803 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2803 + 192])] = mem[_2803 + 224 len floor32(mem[_2803 + 192])]
                        else:
                            _2805 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2805 + 192])] = mem[_2805 + 224 len floor32(mem[_2805 + 192])]
                    else:
                        if not arg2:
                            _2807 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2807 + 192])] = mem[_2807 + 224 len floor32(mem[_2807 + 192])]
                        else:
                            _2809 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2809 + 192])] = mem[_2809 + 224 len floor32(mem[_2809 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1));
                else:
                    require arg3
                    if ext_call.return_data[50 len 14] * arg3 / arg3 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] * arg3 / 1000 != ext_call.return_data[50 len 14] * arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] - arg3 > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[18 len 14]) - (998 * arg3) / 998 != ext_call.return_data[18 len 14] - arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[18 len 14]) - (998 * arg3)
                    if (1000 * ext_call.return_data[50 len 14] * arg3 / (998 * ext_call.return_data[18 len 14]) - (998 * arg3)) + 1 < 1000 * ext_call.return_data[50 len 14] * arg3 / (998 * ext_call.return_data[18 len 14]) - (998 * arg3):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg3
                    mem[228] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2811 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2811 + 192])] = mem[_2811 + 224 len floor32(mem[_2811 + 192])]
                        else:
                            _2813 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2813 + 192])] = mem[_2813 + 224 len floor32(mem[_2813 + 192])]
                    else:
                        if not arg2:
                            _2815 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2815 + 192])] = mem[_2815 + 224 len floor32(mem[_2815 + 192])]
                        else:
                            _2817 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2817 + 192])] = mem[_2817 + 224 len floor32(mem[_2817 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) - 1));
        else:
            if arg2 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                            mem[208 len 20]
            if not arg2:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not arg2:
                    if ext_call.return_data[50 len 14] - arg2 > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[50 len 14]) - (998 * arg2) / 998 != ext_call.return_data[50 len 14] - arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[50 len 14]) - (998 * arg2)
                    if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * arg2)) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * arg2):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg2
                    mem[228] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2819 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2819 + 192])] = mem[_2819 + 224 len floor32(mem[_2819 + 192])]
                        else:
                            _2821 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2821 + 192])] = mem[_2821 + 224 len floor32(mem[_2821 + 192])]
                    else:
                        if not arg2:
                            _2823 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2823 + 192])] = mem[_2823 + 224 len floor32(mem[_2823 + 192])]
                        else:
                            _2825 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2825 + 192])] = mem[_2825 + 224 len floor32(mem[_2825 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1));
                else:
                    require arg2
                    if ext_call.return_data[18 len 14] * arg2 / arg2 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] * arg2 / 1000 != ext_call.return_data[18 len 14] * arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] - arg2 > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[50 len 14]) - (998 * arg2) / 998 != ext_call.return_data[50 len 14] - arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[50 len 14]) - (998 * arg2)
                    if (1000 * ext_call.return_data[18 len 14] * arg2 / (998 * ext_call.return_data[50 len 14]) - (998 * arg2)) + 1 < 1000 * ext_call.return_data[18 len 14] * arg2 / (998 * ext_call.return_data[50 len 14]) - (998 * arg2):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg2
                    mem[228] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2827 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2827 + 192])] = mem[_2827 + 224 len floor32(mem[_2827 + 192])]
                        else:
                            _2829 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2829 + 192])] = mem[_2829 + 224 len floor32(mem[_2829 + 192])]
                    else:
                        if not arg2:
                            _2831 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2831 + 192])] = mem[_2831 + 224 len floor32(mem[_2831 + 192])]
                        else:
                            _2833 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2833 + 192])] = mem[_2833 + 224 len floor32(mem[_2833 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) - 1));
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not arg2:
                    if ext_call.return_data[18 len 14] - arg2 > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[18 len 14]) - (998 * arg2) / 998 != ext_call.return_data[18 len 14] - arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[18 len 14]) - (998 * arg2)
                    if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * arg2)) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * arg2):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg2
                    mem[228] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2835 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2835 + 192])] = mem[_2835 + 224 len floor32(mem[_2835 + 192])]
                        else:
                            _2837 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2837 + 192])] = mem[_2837 + 224 len floor32(mem[_2837 + 192])]
                    else:
                        if not arg2:
                            _2839 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2839 + 192])] = mem[_2839 + 224 len floor32(mem[_2839 + 192])]
                        else:
                            _2841 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2841 + 192])] = mem[_2841 + 224 len floor32(mem[_2841 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1));
                else:
                    require arg2
                    if ext_call.return_data[50 len 14] * arg2 / arg2 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] * arg2 / 1000 != ext_call.return_data[50 len 14] * arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] - arg2 > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (998 * ext_call.return_data[18 len 14]) - (998 * arg2) / 998 != ext_call.return_data[18 len 14] - arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    require (998 * ext_call.return_data[18 len 14]) - (998 * arg2)
                    if (1000 * ext_call.return_data[50 len 14] * arg2 / (998 * ext_call.return_data[18 len 14]) - (998 * arg2)) + 1 < 1000 * ext_call.return_data[50 len 14] * arg2 / (998 * ext_call.return_data[18 len 14]) - (998 * arg2):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg2
                    mem[228] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1
                    mem[292] = this.address
                    mem[324] = cd[(arg4 + 36)]
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1, Array(len=2, data=mem[388 len 64]), address(this.address), cd[(arg4 + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    if not arg2:
                        if not arg2:
                            _2843 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2843 + 192])] = mem[_2843 + 224 len floor32(mem[_2843 + 192])]
                        else:
                            _2845 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2845 + 192])] = mem[_2845 + 224 len floor32(mem[_2845 + 192])]
                    else:
                        if not arg2:
                            _2847 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2847 + 192])] = mem[_2847 + 224 len floor32(mem[_2847 + 192])]
                        else:
                            _2849 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2849 + 192])] = mem[_2849 + 224 len floor32(mem[_2849 + 192])]
                    require 1 < mem[ceil32(return_data.size) + 192]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt repay'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Couldnt transfer profits'
                    if mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1 > mem[ceil32(return_data.size) + 256]:
                        revert with 0, 'ds-math-sub-underflow'
                    emit Profit((mem[ceil32(return_data.size) + 256] + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) - 1));
}



}
