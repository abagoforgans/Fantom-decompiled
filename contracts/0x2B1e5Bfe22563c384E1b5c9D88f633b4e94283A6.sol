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

function sub_08966597(?) payable {
    require calldata.size - 4 >= 128
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5946756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65,
                    mem[201 len 27]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = arg2
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 0
    mem[292] = this.address
    mem[324] = arg4
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, address(this.address), arg4, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require 1 < mem[ceil32(return_data.size) + 192]
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
    if arg2:
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
    emit GetAddress(ext_call.return_data[12 len 20]);
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
                mem[228] = 0
                mem[292] = this.address
                mem[324] = cd[(arg4 + 36)]
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, address(this.address), cd[(arg4 + 36)], 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require 1 < mem[ceil32(return_data.size) + 192]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1
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
                mem[228] = 0
                mem[292] = this.address
                mem[324] = cd[(arg4 + 36)]
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, address(this.address), cd[(arg4 + 36)], 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require 1 < mem[ceil32(return_data.size) + 192]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg3)) + 1
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
                mem[228] = 0
                mem[292] = this.address
                mem[324] = cd[(arg4 + 36)]
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, address(this.address), cd[(arg4 + 36)], 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require 1 < mem[ceil32(return_data.size) + 192]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1
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
                mem[228] = 0
                mem[292] = this.address
                mem[324] = cd[(arg4 + 36)]
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, address(this.address), cd[(arg4 + 36)], 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require 1 < mem[ceil32(return_data.size) + 192]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg3)) + 1
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
                mem[228] = 0
                mem[292] = this.address
                mem[324] = cd[(arg4 + 36)]
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(this.address), cd[(arg4 + 36)], 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require 1 < mem[ceil32(return_data.size) + 192]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1
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
                mem[228] = 0
                mem[292] = this.address
                mem[324] = cd[(arg4 + 36)]
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(this.address), cd[(arg4 + 36)], 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require 1 < mem[ceil32(return_data.size) + 192]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * arg2)) + 1
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
                mem[228] = 0
                mem[292] = this.address
                mem[324] = cd[(arg4 + 36)]
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(this.address), cd[(arg4 + 36)], 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require 1 < mem[ceil32(return_data.size) + 192]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * arg2)) + 1
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
                mem[228] = 0
                mem[292] = this.address
                mem[324] = cd[(arg4 + 36)]
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(this.address), cd[(arg4 + 36)], 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
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
}



}
