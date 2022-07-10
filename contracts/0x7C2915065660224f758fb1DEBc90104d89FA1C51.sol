contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
array of address stor8;
array of address stor9;
array of address stor10;
mapping of uint256 sub_390eff28;
array of address stor12;
uint256 stor13;
address stor14;
address stor15;

function sub_390eff28(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_390eff28[arg1]
}

function _fallback() payable {
    revert
}

function sub_16fe7c2e(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor12.length:
        mem[0] = 12
        if stor12[idx] != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        require ext_code.size(stor4)
        call stor4.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 10^18 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if sub_390eff28[msg.sender] > !(10^18 * arg1):
            revert with 0, 17
        sub_390eff28[msg.sender] += 10^18 * arg1
    revert with 0, 'Not in whitelist'
}

function sell() payable {
    require ext_code.size(stor15)
    staticcall stor15.getReserves() with:
            gas gas_remaining wei
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor15)
    staticcall stor15.token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor15)
    staticcall stor15.token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == stor4:
        if ext_call.return_data[12 len 20] == stor4:
            if Mask(112, 0, ext_call.return_data[32]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(stor14)
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(stor14)
                staticcall stor14.token0() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor14)
                staticcall stor14.token0() with:
                        gas gas_remaining wei
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == stor7:
                    if ext_call.return_data[12 len 20] == stor7:
                        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1339 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1355 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1339 + (32 * _1355) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1355] = mem[(10 * ceil32(return_data.size)) + _1339 + 128 len 32 * _1355]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2203 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2219 = mem[_2203]
                            require mem[_2203] <= test266151307()
                            require _2203 + mem[_2203] + 31 < _2203 + return_data.size
                            _2235 = mem[_2203 + mem[_2203]]
                            if mem[_2203 + mem[_2203]] > test266151307():
                                revert with 0, 65
                            if _2203 + ceil32(return_data.size) + ceil32(32 * mem[_2203 + mem[_2203]]) + 1 > test266151307() or ceil32(32 * mem[_2203 + mem[_2203]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2203 + ceil32(return_data.size) + ceil32(32 * mem[_2203 + mem[_2203]]) + 1
                            mem[_2203 + ceil32(return_data.size)] = _2235
                            require return_data.size >= _2219 + (32 * _2235) + 32
                            mem[_2203 + ceil32(return_data.size) + 32 len 32 * _2235] = mem[_2203 + _2219 + 32 len 32 * _2235]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2587 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2603 = mem[_2587]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2603
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2603, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2827 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2827] <= test266151307()
                            require _2827 + mem[_2827] + 31 < _2827 + return_data.size
                            if mem[_2827 + mem[_2827]] > test266151307():
                                revert with 0, 65
                            if _2827 + ceil32(return_data.size) + ceil32(32 * mem[_2827 + mem[_2827]]) + 1 > test266151307() or ceil32(32 * mem[_2827 + mem[_2827]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2827] + (32 * mem[_2827 + mem[_2827]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1340 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1356 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1340 + (32 * _1356) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1356] = mem[(10 * ceil32(return_data.size)) + _1340 + 128 len 32 * _1356]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2204 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2220 = mem[_2204]
                            require mem[_2204] <= test266151307()
                            require _2204 + mem[_2204] + 31 < _2204 + return_data.size
                            _2236 = mem[_2204 + mem[_2204]]
                            if mem[_2204 + mem[_2204]] > test266151307():
                                revert with 0, 65
                            if _2204 + ceil32(return_data.size) + ceil32(32 * mem[_2204 + mem[_2204]]) + 1 > test266151307() or ceil32(32 * mem[_2204 + mem[_2204]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2204 + ceil32(return_data.size) + ceil32(32 * mem[_2204 + mem[_2204]]) + 1
                            mem[_2204 + ceil32(return_data.size)] = _2236
                            require return_data.size >= _2220 + (32 * _2236) + 32
                            mem[_2204 + ceil32(return_data.size) + 32 len 32 * _2236] = mem[_2204 + _2220 + 32 len 32 * _2236]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2588 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2604 = mem[_2588]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2604
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2604, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2828 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2828] <= test266151307()
                            require _2828 + mem[_2828] + 31 < _2828 + return_data.size
                            if mem[_2828 + mem[_2828]] > test266151307():
                                revert with 0, 65
                            if _2828 + ceil32(return_data.size) + ceil32(32 * mem[_2828 + mem[_2828]]) + 1 > test266151307() or ceil32(32 * mem[_2828 + mem[_2828]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2828] + (32 * mem[_2828 + mem[_2828]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if ext_call.return_data[12 len 20] == stor7:
                        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1341 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1357 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1341 + (32 * _1357) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1357] = mem[(10 * ceil32(return_data.size)) + _1341 + 128 len 32 * _1357]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2205 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2221 = mem[_2205]
                            require mem[_2205] <= test266151307()
                            require _2205 + mem[_2205] + 31 < _2205 + return_data.size
                            _2237 = mem[_2205 + mem[_2205]]
                            if mem[_2205 + mem[_2205]] > test266151307():
                                revert with 0, 65
                            if _2205 + ceil32(return_data.size) + ceil32(32 * mem[_2205 + mem[_2205]]) + 1 > test266151307() or ceil32(32 * mem[_2205 + mem[_2205]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2205 + ceil32(return_data.size) + ceil32(32 * mem[_2205 + mem[_2205]]) + 1
                            mem[_2205 + ceil32(return_data.size)] = _2237
                            require return_data.size >= _2221 + (32 * _2237) + 32
                            mem[_2205 + ceil32(return_data.size) + 32 len 32 * _2237] = mem[_2205 + _2221 + 32 len 32 * _2237]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2605 = mem[_2589]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2605
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2605, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2829 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2829] <= test266151307()
                            require _2829 + mem[_2829] + 31 < _2829 + return_data.size
                            if mem[_2829 + mem[_2829]] > test266151307():
                                revert with 0, 65
                            if _2829 + ceil32(return_data.size) + ceil32(32 * mem[_2829 + mem[_2829]]) + 1 > test266151307() or ceil32(32 * mem[_2829 + mem[_2829]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2829] + (32 * mem[_2829 + mem[_2829]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1342 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1358 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1342 + (32 * _1358) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1358] = mem[(10 * ceil32(return_data.size)) + _1342 + 128 len 32 * _1358]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2206 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2222 = mem[_2206]
                            require mem[_2206] <= test266151307()
                            require _2206 + mem[_2206] + 31 < _2206 + return_data.size
                            _2238 = mem[_2206 + mem[_2206]]
                            if mem[_2206 + mem[_2206]] > test266151307():
                                revert with 0, 65
                            if _2206 + ceil32(return_data.size) + ceil32(32 * mem[_2206 + mem[_2206]]) + 1 > test266151307() or ceil32(32 * mem[_2206 + mem[_2206]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2206 + ceil32(return_data.size) + ceil32(32 * mem[_2206 + mem[_2206]]) + 1
                            mem[_2206 + ceil32(return_data.size)] = _2238
                            require return_data.size >= _2222 + (32 * _2238) + 32
                            mem[_2206 + ceil32(return_data.size) + 32 len 32 * _2238] = mem[_2206 + _2222 + 32 len 32 * _2238]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2590 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2606 = mem[_2590]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2606
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2606, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2830 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2830] <= test266151307()
                            require _2830 + mem[_2830] + 31 < _2830 + return_data.size
                            if mem[_2830 + mem[_2830]] > test266151307():
                                revert with 0, 65
                            if _2830 + ceil32(return_data.size) + ceil32(32 * mem[_2830 + mem[_2830]]) + 1 > test266151307() or ceil32(32 * mem[_2830 + mem[_2830]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2830] + (32 * mem[_2830 + mem[_2830]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
        else:
            if Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(stor14)
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(stor14)
                staticcall stor14.token0() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor14)
                staticcall stor14.token0() with:
                        gas gas_remaining wei
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == stor7:
                    if ext_call.return_data[12 len 20] == stor7:
                        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1343 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1359 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1343 + (32 * _1359) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1359] = mem[(10 * ceil32(return_data.size)) + _1343 + 128 len 32 * _1359]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2207 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2223 = mem[_2207]
                            require mem[_2207] <= test266151307()
                            require _2207 + mem[_2207] + 31 < _2207 + return_data.size
                            _2239 = mem[_2207 + mem[_2207]]
                            if mem[_2207 + mem[_2207]] > test266151307():
                                revert with 0, 65
                            if _2207 + ceil32(return_data.size) + ceil32(32 * mem[_2207 + mem[_2207]]) + 1 > test266151307() or ceil32(32 * mem[_2207 + mem[_2207]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2207 + ceil32(return_data.size) + ceil32(32 * mem[_2207 + mem[_2207]]) + 1
                            mem[_2207 + ceil32(return_data.size)] = _2239
                            require return_data.size >= _2223 + (32 * _2239) + 32
                            mem[_2207 + ceil32(return_data.size) + 32 len 32 * _2239] = mem[_2207 + _2223 + 32 len 32 * _2239]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2591 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2607 = mem[_2591]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2607
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2607, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2831 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2831] <= test266151307()
                            require _2831 + mem[_2831] + 31 < _2831 + return_data.size
                            if mem[_2831 + mem[_2831]] > test266151307():
                                revert with 0, 65
                            if _2831 + ceil32(return_data.size) + ceil32(32 * mem[_2831 + mem[_2831]]) + 1 > test266151307() or ceil32(32 * mem[_2831 + mem[_2831]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2831] + (32 * mem[_2831 + mem[_2831]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1344 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1360 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1344 + (32 * _1360) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1360] = mem[(10 * ceil32(return_data.size)) + _1344 + 128 len 32 * _1360]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2208 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2224 = mem[_2208]
                            require mem[_2208] <= test266151307()
                            require _2208 + mem[_2208] + 31 < _2208 + return_data.size
                            _2240 = mem[_2208 + mem[_2208]]
                            if mem[_2208 + mem[_2208]] > test266151307():
                                revert with 0, 65
                            if _2208 + ceil32(return_data.size) + ceil32(32 * mem[_2208 + mem[_2208]]) + 1 > test266151307() or ceil32(32 * mem[_2208 + mem[_2208]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2208 + ceil32(return_data.size) + ceil32(32 * mem[_2208 + mem[_2208]]) + 1
                            mem[_2208 + ceil32(return_data.size)] = _2240
                            require return_data.size >= _2224 + (32 * _2240) + 32
                            mem[_2208 + ceil32(return_data.size) + 32 len 32 * _2240] = mem[_2208 + _2224 + 32 len 32 * _2240]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2608 = mem[_2592]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2608
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2608, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2832 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2832] <= test266151307()
                            require _2832 + mem[_2832] + 31 < _2832 + return_data.size
                            if mem[_2832 + mem[_2832]] > test266151307():
                                revert with 0, 65
                            if _2832 + ceil32(return_data.size) + ceil32(32 * mem[_2832 + mem[_2832]]) + 1 > test266151307() or ceil32(32 * mem[_2832 + mem[_2832]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2832] + (32 * mem[_2832 + mem[_2832]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if ext_call.return_data[12 len 20] == stor7:
                        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1345 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1361 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1345 + (32 * _1361) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1361] = mem[(10 * ceil32(return_data.size)) + _1345 + 128 len 32 * _1361]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2209 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2225 = mem[_2209]
                            require mem[_2209] <= test266151307()
                            require _2209 + mem[_2209] + 31 < _2209 + return_data.size
                            _2241 = mem[_2209 + mem[_2209]]
                            if mem[_2209 + mem[_2209]] > test266151307():
                                revert with 0, 65
                            if _2209 + ceil32(return_data.size) + ceil32(32 * mem[_2209 + mem[_2209]]) + 1 > test266151307() or ceil32(32 * mem[_2209 + mem[_2209]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2209 + ceil32(return_data.size) + ceil32(32 * mem[_2209 + mem[_2209]]) + 1
                            mem[_2209 + ceil32(return_data.size)] = _2241
                            require return_data.size >= _2225 + (32 * _2241) + 32
                            mem[_2209 + ceil32(return_data.size) + 32 len 32 * _2241] = mem[_2209 + _2225 + 32 len 32 * _2241]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2593 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2609 = mem[_2593]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2609
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2609, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2833 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2833] <= test266151307()
                            require _2833 + mem[_2833] + 31 < _2833 + return_data.size
                            if mem[_2833 + mem[_2833]] > test266151307():
                                revert with 0, 65
                            if _2833 + ceil32(return_data.size) + ceil32(32 * mem[_2833 + mem[_2833]]) + 1 > test266151307() or ceil32(32 * mem[_2833 + mem[_2833]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2833] + (32 * mem[_2833 + mem[_2833]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1346 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1362 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1346 + (32 * _1362) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1362] = mem[(10 * ceil32(return_data.size)) + _1346 + 128 len 32 * _1362]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2210 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2226 = mem[_2210]
                            require mem[_2210] <= test266151307()
                            require _2210 + mem[_2210] + 31 < _2210 + return_data.size
                            _2242 = mem[_2210 + mem[_2210]]
                            if mem[_2210 + mem[_2210]] > test266151307():
                                revert with 0, 65
                            if _2210 + ceil32(return_data.size) + ceil32(32 * mem[_2210 + mem[_2210]]) + 1 > test266151307() or ceil32(32 * mem[_2210 + mem[_2210]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2210 + ceil32(return_data.size) + ceil32(32 * mem[_2210 + mem[_2210]]) + 1
                            mem[_2210 + ceil32(return_data.size)] = _2242
                            require return_data.size >= _2226 + (32 * _2242) + 32
                            mem[_2210 + ceil32(return_data.size) + 32 len 32 * _2242] = mem[_2210 + _2226 + 32 len 32 * _2242]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2594 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2610 = mem[_2594]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2610
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2610, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2834 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2834] <= test266151307()
                            require _2834 + mem[_2834] + 31 < _2834 + return_data.size
                            if mem[_2834 + mem[_2834]] > test266151307():
                                revert with 0, 65
                            if _2834 + ceil32(return_data.size) + ceil32(32 * mem[_2834 + mem[_2834]]) + 1 > test266151307() or ceil32(32 * mem[_2834 + mem[_2834]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2834] + (32 * mem[_2834 + mem[_2834]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
    else:
        if ext_call.return_data[12 len 20] == stor4:
            if Mask(112, 0, ext_call.return_data[32]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]):
                require ext_code.size(stor14)
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(stor14)
                staticcall stor14.token0() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor14)
                staticcall stor14.token0() with:
                        gas gas_remaining wei
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == stor7:
                    if ext_call.return_data[12 len 20] == stor7:
                        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1347 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1363 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1347 + (32 * _1363) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1363] = mem[(10 * ceil32(return_data.size)) + _1347 + 128 len 32 * _1363]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2211 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2227 = mem[_2211]
                            require mem[_2211] <= test266151307()
                            require _2211 + mem[_2211] + 31 < _2211 + return_data.size
                            _2243 = mem[_2211 + mem[_2211]]
                            if mem[_2211 + mem[_2211]] > test266151307():
                                revert with 0, 65
                            if _2211 + ceil32(return_data.size) + ceil32(32 * mem[_2211 + mem[_2211]]) + 1 > test266151307() or ceil32(32 * mem[_2211 + mem[_2211]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2211 + ceil32(return_data.size) + ceil32(32 * mem[_2211 + mem[_2211]]) + 1
                            mem[_2211 + ceil32(return_data.size)] = _2243
                            require return_data.size >= _2227 + (32 * _2243) + 32
                            mem[_2211 + ceil32(return_data.size) + 32 len 32 * _2243] = mem[_2211 + _2227 + 32 len 32 * _2243]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2595 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2611 = mem[_2595]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2611
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2611, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2835 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2835] <= test266151307()
                            require _2835 + mem[_2835] + 31 < _2835 + return_data.size
                            if mem[_2835 + mem[_2835]] > test266151307():
                                revert with 0, 65
                            if _2835 + ceil32(return_data.size) + ceil32(32 * mem[_2835 + mem[_2835]]) + 1 > test266151307() or ceil32(32 * mem[_2835 + mem[_2835]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2835] + (32 * mem[_2835 + mem[_2835]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1348 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1364 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1348 + (32 * _1364) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1364] = mem[(10 * ceil32(return_data.size)) + _1348 + 128 len 32 * _1364]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2212 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2228 = mem[_2212]
                            require mem[_2212] <= test266151307()
                            require _2212 + mem[_2212] + 31 < _2212 + return_data.size
                            _2244 = mem[_2212 + mem[_2212]]
                            if mem[_2212 + mem[_2212]] > test266151307():
                                revert with 0, 65
                            if _2212 + ceil32(return_data.size) + ceil32(32 * mem[_2212 + mem[_2212]]) + 1 > test266151307() or ceil32(32 * mem[_2212 + mem[_2212]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2212 + ceil32(return_data.size) + ceil32(32 * mem[_2212 + mem[_2212]]) + 1
                            mem[_2212 + ceil32(return_data.size)] = _2244
                            require return_data.size >= _2228 + (32 * _2244) + 32
                            mem[_2212 + ceil32(return_data.size) + 32 len 32 * _2244] = mem[_2212 + _2228 + 32 len 32 * _2244]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2596 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2612 = mem[_2596]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2612
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2612, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2836 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2836] <= test266151307()
                            require _2836 + mem[_2836] + 31 < _2836 + return_data.size
                            if mem[_2836 + mem[_2836]] > test266151307():
                                revert with 0, 65
                            if _2836 + ceil32(return_data.size) + ceil32(32 * mem[_2836 + mem[_2836]]) + 1 > test266151307() or ceil32(32 * mem[_2836 + mem[_2836]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2836] + (32 * mem[_2836 + mem[_2836]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if ext_call.return_data[12 len 20] == stor7:
                        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1349 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1365 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1349 + (32 * _1365) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1365] = mem[(10 * ceil32(return_data.size)) + _1349 + 128 len 32 * _1365]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2213 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2229 = mem[_2213]
                            require mem[_2213] <= test266151307()
                            require _2213 + mem[_2213] + 31 < _2213 + return_data.size
                            _2245 = mem[_2213 + mem[_2213]]
                            if mem[_2213 + mem[_2213]] > test266151307():
                                revert with 0, 65
                            if _2213 + ceil32(return_data.size) + ceil32(32 * mem[_2213 + mem[_2213]]) + 1 > test266151307() or ceil32(32 * mem[_2213 + mem[_2213]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2213 + ceil32(return_data.size) + ceil32(32 * mem[_2213 + mem[_2213]]) + 1
                            mem[_2213 + ceil32(return_data.size)] = _2245
                            require return_data.size >= _2229 + (32 * _2245) + 32
                            mem[_2213 + ceil32(return_data.size) + 32 len 32 * _2245] = mem[_2213 + _2229 + 32 len 32 * _2245]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2597 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2613 = mem[_2597]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2613
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2613, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2837 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2837] <= test266151307()
                            require _2837 + mem[_2837] + 31 < _2837 + return_data.size
                            if mem[_2837 + mem[_2837]] > test266151307():
                                revert with 0, 65
                            if _2837 + ceil32(return_data.size) + ceil32(32 * mem[_2837 + mem[_2837]]) + 1 > test266151307() or ceil32(32 * mem[_2837 + mem[_2837]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2837] + (32 * mem[_2837 + mem[_2837]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1350 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1366 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1350 + (32 * _1366) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1366] = mem[(10 * ceil32(return_data.size)) + _1350 + 128 len 32 * _1366]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2214 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2230 = mem[_2214]
                            require mem[_2214] <= test266151307()
                            require _2214 + mem[_2214] + 31 < _2214 + return_data.size
                            _2246 = mem[_2214 + mem[_2214]]
                            if mem[_2214 + mem[_2214]] > test266151307():
                                revert with 0, 65
                            if _2214 + ceil32(return_data.size) + ceil32(32 * mem[_2214 + mem[_2214]]) + 1 > test266151307() or ceil32(32 * mem[_2214 + mem[_2214]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2214 + ceil32(return_data.size) + ceil32(32 * mem[_2214 + mem[_2214]]) + 1
                            mem[_2214 + ceil32(return_data.size)] = _2246
                            require return_data.size >= _2230 + (32 * _2246) + 32
                            mem[_2214 + ceil32(return_data.size) + 32 len 32 * _2246] = mem[_2214 + _2230 + 32 len 32 * _2246]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2614 = mem[_2598]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2614
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2614, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2838 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2838] <= test266151307()
                            require _2838 + mem[_2838] + 31 < _2838 + return_data.size
                            if mem[_2838 + mem[_2838]] > test266151307():
                                revert with 0, 65
                            if _2838 + ceil32(return_data.size) + ceil32(32 * mem[_2838 + mem[_2838]]) + 1 > test266151307() or ceil32(32 * mem[_2838 + mem[_2838]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2838] + (32 * mem[_2838 + mem[_2838]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
        else:
            if Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]):
                require ext_code.size(stor14)
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(stor14)
                staticcall stor14.token0() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor14)
                staticcall stor14.token0() with:
                        gas gas_remaining wei
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == stor7:
                    if ext_call.return_data[12 len 20] == stor7:
                        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1351 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1367 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1351 + (32 * _1367) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1367] = mem[(10 * ceil32(return_data.size)) + _1351 + 128 len 32 * _1367]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2215 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2231 = mem[_2215]
                            require mem[_2215] <= test266151307()
                            require _2215 + mem[_2215] + 31 < _2215 + return_data.size
                            _2247 = mem[_2215 + mem[_2215]]
                            if mem[_2215 + mem[_2215]] > test266151307():
                                revert with 0, 65
                            if _2215 + ceil32(return_data.size) + ceil32(32 * mem[_2215 + mem[_2215]]) + 1 > test266151307() or ceil32(32 * mem[_2215 + mem[_2215]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2215 + ceil32(return_data.size) + ceil32(32 * mem[_2215 + mem[_2215]]) + 1
                            mem[_2215 + ceil32(return_data.size)] = _2247
                            require return_data.size >= _2231 + (32 * _2247) + 32
                            mem[_2215 + ceil32(return_data.size) + 32 len 32 * _2247] = mem[_2215 + _2231 + 32 len 32 * _2247]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2615 = mem[_2599]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2615
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2615, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2839 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2839] <= test266151307()
                            require _2839 + mem[_2839] + 31 < _2839 + return_data.size
                            if mem[_2839 + mem[_2839]] > test266151307():
                                revert with 0, 65
                            if _2839 + ceil32(return_data.size) + ceil32(32 * mem[_2839 + mem[_2839]]) + 1 > test266151307() or ceil32(32 * mem[_2839 + mem[_2839]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2839] + (32 * mem[_2839 + mem[_2839]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1352 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1368 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1352 + (32 * _1368) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1368] = mem[(10 * ceil32(return_data.size)) + _1352 + 128 len 32 * _1368]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2216 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2232 = mem[_2216]
                            require mem[_2216] <= test266151307()
                            require _2216 + mem[_2216] + 31 < _2216 + return_data.size
                            _2248 = mem[_2216 + mem[_2216]]
                            if mem[_2216 + mem[_2216]] > test266151307():
                                revert with 0, 65
                            if _2216 + ceil32(return_data.size) + ceil32(32 * mem[_2216 + mem[_2216]]) + 1 > test266151307() or ceil32(32 * mem[_2216 + mem[_2216]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2216 + ceil32(return_data.size) + ceil32(32 * mem[_2216 + mem[_2216]]) + 1
                            mem[_2216 + ceil32(return_data.size)] = _2248
                            require return_data.size >= _2232 + (32 * _2248) + 32
                            mem[_2216 + ceil32(return_data.size) + 32 len 32 * _2248] = mem[_2216 + _2232 + 32 len 32 * _2248]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2616 = mem[_2600]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2616
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2616, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2840 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2840] <= test266151307()
                            require _2840 + mem[_2840] + 31 < _2840 + return_data.size
                            if mem[_2840 + mem[_2840]] > test266151307():
                                revert with 0, 65
                            if _2840 + ceil32(return_data.size) + ceil32(32 * mem[_2840 + mem[_2840]]) + 1 > test266151307() or ceil32(32 * mem[_2840 + mem[_2840]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2840] + (32 * mem[_2840 + mem[_2840]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if ext_call.return_data[12 len 20] == stor7:
                        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1353 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1369 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1353 + (32 * _1369) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1369] = mem[(10 * ceil32(return_data.size)) + _1353 + 128 len 32 * _1369]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2217 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2233 = mem[_2217]
                            require mem[_2217] <= test266151307()
                            require _2217 + mem[_2217] + 31 < _2217 + return_data.size
                            _2249 = mem[_2217 + mem[_2217]]
                            if mem[_2217 + mem[_2217]] > test266151307():
                                revert with 0, 65
                            if _2217 + ceil32(return_data.size) + ceil32(32 * mem[_2217 + mem[_2217]]) + 1 > test266151307() or ceil32(32 * mem[_2217 + mem[_2217]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2217 + ceil32(return_data.size) + ceil32(32 * mem[_2217 + mem[_2217]]) + 1
                            mem[_2217 + ceil32(return_data.size)] = _2249
                            require return_data.size >= _2233 + (32 * _2249) + 32
                            mem[_2217 + ceil32(return_data.size) + 32 len 32 * _2249] = mem[_2217 + _2233 + 32 len 32 * _2249]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2601 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2617 = mem[_2601]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2617
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2617, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2841 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2841] <= test266151307()
                            require _2841 + mem[_2841] + 31 < _2841 + return_data.size
                            if mem[_2841 + mem[_2841]] > test266151307():
                                revert with 0, 65
                            if _2841 + ceil32(return_data.size) + ceil32(32 * mem[_2841 + mem[_2841]]) + 1 > test266151307() or ceil32(32 * mem[_2841 + mem[_2841]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2841] + (32 * mem[_2841 + mem[_2841]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                            revert with 0, 17
                        if Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])) > 0x10c6f7a0b5ed8d36b4c7f349:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]):
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]) > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                                revert with 0, 17
                            if 10^6 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, 10^6 * Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]) <= 12 * 10^16:
                            if stor13 > !stor0:
                                revert with 0, 17
                            if stor13 + stor0 >= block.timestamp:
                            idx = 0
                            while idx < stor12.length:
                                mem[0] = stor12[idx]
                                mem[32] = 11
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if False and stor1 > 0:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                            if 600 > !block.timestamp:
                                revert with 0, 17
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = 0
                            mem[(10 * ceil32(return_data.size)) + 132] = 0
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor8.length
                            mem[0] = 8
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < stor8.length:
                                mem[s] = stor8[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor8.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor8.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1354 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _1370 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            require return_data.size >= _1354 + (32 * _1370) + 32
                            mem[(11 * ceil32(return_data.size)) + 128 len 32 * _1370] = mem[(10 * ceil32(return_data.size)) + _1354 + 128 len 32 * _1370]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor9.length
                            mem[0] = 9
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor9.length:
                                mem[s] = stor9[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[mem[64] + 196 len 32 * stor9.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2218 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2234 = mem[_2218]
                            require mem[_2218] <= test266151307()
                            require _2218 + mem[_2218] + 31 < _2218 + return_data.size
                            _2250 = mem[_2218 + mem[_2218]]
                            if mem[_2218 + mem[_2218]] > test266151307():
                                revert with 0, 65
                            if _2218 + ceil32(return_data.size) + ceil32(32 * mem[_2218 + mem[_2218]]) + 1 > test266151307() or ceil32(32 * mem[_2218 + mem[_2218]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2218 + ceil32(return_data.size) + ceil32(32 * mem[_2218 + mem[_2218]]) + 1
                            mem[_2218 + ceil32(return_data.size)] = _2250
                            require return_data.size >= _2234 + (32 * _2250) + 32
                            mem[_2218 + ceil32(return_data.size) + 32 len 32 * _2250] = mem[_2218 + _2234 + 32 len 32 * _2250]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor6)
                            staticcall stor6.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2602 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2618 = mem[_2602]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2618
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = mem[64] + 196
                            t = 0
                            while idx < stor10.length:
                                mem[s] = stor10[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _2618, 0, 160, address(this.address), block.timestamp + 600, stor10.length, mem[mem[64] + 196 len 32 * stor10.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2842 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2842] <= test266151307()
                            require _2842 + mem[_2842] + 31 < _2842 + return_data.size
                            if mem[_2842 + mem[_2842]] > test266151307():
                                revert with 0, 65
                            if _2842 + ceil32(return_data.size) + ceil32(32 * mem[_2842 + mem[_2842]]) + 1 > test266151307() or ceil32(32 * mem[_2842 + mem[_2842]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_2842] + (32 * mem[_2842 + mem[_2842]]) + 32
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
    revert with 0, 18
}



}
