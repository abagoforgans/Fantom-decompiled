contract main {




// =====================  Runtime code  =====================


const usdc = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const sub_470088f1(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const scream = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


address sub_e83476b8Address;
address sub_a5ff4ad7Address;

function sub_a5ff4ad7(?) payable {
    return sub_a5ff4ad7Address
}

function sub_e83476b8(?) payable {
    return sub_e83476b8Address
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_e83476b8Address != msg.sender:
        revert with 0, '!admin'
    sub_e83476b8Address = arg1
}

function setStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_e83476b8Address != msg.sender:
        revert with 0, '!admin'
    sub_a5ff4ad7Address = arg1
}

function sub_59d32bdb(?) payable {
    require calldata.size - 4 >= 96
    if sub_a5ff4ad7Address != msg.sender:
        revert with 0, '!strategy'
    else:
        require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
        staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
            staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'swapTokensV2: balance too low'
                else:
                    mem[96] = 2
                    mem[128] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = ext_call.return_data[0]
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp + 1800
                        mem[260] = 160
                        mem[356] = 2
                        mem[388 len 0] = None
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _738 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _741 = mem[_738 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_738 + 192])] = mem[_738 + 224 len floor32(mem[_738 + 192])]
                            require 1 < mem[ceil32(return_data.size) + 192]
                            _1451 = mem[ceil32(return_data.size) + 256]
                            if mem[ceil32(return_data.size) + 256]:
                                require mem[ceil32(return_data.size) + 256]
                                if mem[ceil32(return_data.size) + 256] * arg2 / mem[ceil32(return_data.size) + 256] != arg2:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _741) + ceil32(return_data.size) + 325 len 31]
                                else:
                                    mem[(32 * _741) + ceil32(return_data.size) + 260] = arg3
                                    mem[(32 * _741) + ceil32(return_data.size) + 292] = _1451 * arg2 / 1000
                                    mem[(32 * _741) + ceil32(return_data.size) + 224] = 68
                                    mem[(32 * _741) + ceil32(return_data.size) + 260 len 28] = address(arg3) << 64
                                    mem[(32 * _741) + ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                                    mem[(32 * _741) + ceil32(return_data.size) + 324] = 32
                                    mem[(32 * _741) + ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[(32 * _741) + ceil32(return_data.size) + 494 len 26]
                                    else:
                                        if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        else:
                                            mem[(32 * _741) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, _1451 * arg2 / 1000) >> 32
                                            mem[(32 * _741) + ceil32(return_data.size) + 480 len 4] = 0
                                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, _1451 * arg2 / 1000) << 224, mem[(32 * _741) + ceil32(return_data.size) + 452 len 4]
                                            if not return_data.size:
                                                require ext_call.success
                                                revert
                                            else:
                                                mem[(32 * _741) + ceil32(return_data.size) + 388] = return_data.size
                                                mem[(32 * _741) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                else:
                                                    if return_data.size <= 0:
                                                        if _1451 * arg2 / 1000 > _1451:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] < _1451 - (_1451 * arg2 / 1000):
                                                                    revert with 0, 'swapTokensV2: balance too low'
                                                                else:
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = 2
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 421] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
                                                                    if block.timestamp + 1800 < block.timestamp:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = _1451 - (_1451 * arg2 / 1000)
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = 0
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 585] = this.address
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = block.timestamp + 1800
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = 160
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = 2
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 0] = None
                                                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                             gas gas_remaining wei
                                                                            args _1451 - (_1451 * arg2 / 1000), 0, 160, address(this.address), block.timestamp + 1800, 2, mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 64]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
                                                                            require return_data.size >= 32
                                                                            _2882 = mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32
                                                                            require mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32 <= 4294967296
                                                                            require mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485] <= 4294967296 and mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32 + (32 * mem[mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485]) + 32 <= return_data.size
                                                                            mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = mem[mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485]
                                                                            _2904 = mem[_2882 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485]
                                                                            mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517 len floor32(mem[_2882 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485])] = mem[_2882 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len floor32(mem[_2882 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485])]
                                                                            require 1 < mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485]
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            38,
                                                                                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                                            mem[(32 * _2904) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 26]
                                                                            else:
                                                                                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                                                                    revert with 0, 'Address: call to non-contract'
                                                                                else:
                                                                                    mem[(32 * _2904) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 28]
                                                                                    mem[(32 * _2904) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 773 len 4] = 0
                                                                                    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                                                                         gas gas_remaining wei
                                                                                        args Mask(224, 32, mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]) << 224, mem[(32 * _2904) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 4]
                                                                                    if not return_data.size:
                                                                                        require ext_call.success
                                                                                        revert
                                                                                    else:
                                                                                        mem[(32 * _2904) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = return_data.size
                                                                                        mem[(32 * _2904) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                        if not ext_call.success:
                                                                                            if return_data.size > 0:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                                        else:
                                                                                            if return_data.size <= 0:
                                                                                                mem[(32 * _2904) + (32 * _741) + (4 * ceil32(return_data.size)) + 682] = mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                                mem[(32 * _2904) + (32 * _741) + (4 * ceil32(return_data.size)) + 714] = mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                                return memory
                                                                                                  from (32 * _2904) + (32 * _741) + (4 * ceil32(return_data.size)) + 682
                                                                                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if mem[(32 * _2904) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
                                                                                                    mem[(32 * _2904) + (32 * _741) + (4 * ceil32(return_data.size)) + 682] = mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                                    mem[(32 * _2904) + (32 * _741) + (4 * ceil32(return_data.size)) + 714] = mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                                    return memory
                                                                                                      from (32 * _2904) + (32 * _741) + (4 * ceil32(return_data.size)) + 682
                                                                                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                                                                                                else:
                                                                                                    mem[(32 * _2904) + (32 * _741) + (4 * ceil32(return_data.size)) + 682] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                    mem[(32 * _2904) + (32 * _741) + (4 * ceil32(return_data.size)) + 686] = 32
                                                                                                    mem[(32 * _2904) + (32 * _741) + (4 * ceil32(return_data.size)) + 718] = 42
                                                                                                    mem[(32 * _2904) + (32 * _741) + (4 * ceil32(return_data.size)) + 750 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                                                                    revert with memory
                                                                                                      from (32 * _2904) + (32 * _741) + (4 * ceil32(return_data.size)) + 682
                                                                                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                                    else:
                                                        require return_data.size >= 32
                                                        if not mem[(32 * _741) + ceil32(return_data.size) + 420]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
                                                        else:
                                                            if _1451 * arg2 / 1000 > _1451:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] < _1451 - (_1451 * arg2 / 1000):
                                                                        revert with 0, 'swapTokensV2: balance too low'
                                                                    else:
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = 2
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 421] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
                                                                        if block.timestamp + 1800 < block.timestamp:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = _1451 - (_1451 * arg2 / 1000)
                                                                            mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = 0
                                                                            mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 585] = this.address
                                                                            mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = block.timestamp + 1800
                                                                            mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = 160
                                                                            mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = 2
                                                                            mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 0] = None
                                                                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                                                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args _1451 - (_1451 * arg2 / 1000), 0, 160, address(this.address), block.timestamp + 1800, 2, mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 64]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
                                                                                require return_data.size >= 32
                                                                                _2884 = mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32
                                                                                require mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32 <= 4294967296
                                                                                require mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485] <= 4294967296 and mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32 + (32 * mem[mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485]) + 32 <= return_data.size
                                                                                mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = mem[mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451 - (_1451 * arg2 / 1000)) >> 32 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485]
                                                                                _2905 = mem[_2884 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485]
                                                                                mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517 len floor32(mem[_2884 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485])] = mem[_2884 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len floor32(mem[_2884 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485])]
                                                                                require 1 < mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485]
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                38,
                                                                                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                                                mem[(32 * _2905) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 26]
                                                                                else:
                                                                                    if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                                                                        revert with 0, 'Address: call to non-contract'
                                                                                    else:
                                                                                        mem[(32 * _2905) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 28]
                                                                                        mem[(32 * _2905) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 773 len 4] = 0
                                                                                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                                                                             gas gas_remaining wei
                                                                                            args Mask(224, 32, mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]) << 224, mem[(32 * _2905) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 4]
                                                                                        if not return_data.size:
                                                                                            require ext_call.success
                                                                                            revert
                                                                                        else:
                                                                                            mem[(32 * _2905) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = return_data.size
                                                                                            mem[(32 * _2905) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                            if not ext_call.success:
                                                                                                if return_data.size > 0:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                                            else:
                                                                                                if return_data.size <= 0:
                                                                                                    mem[(32 * _2905) + (32 * _741) + (4 * ceil32(return_data.size)) + 682] = mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                                    mem[(32 * _2905) + (32 * _741) + (4 * ceil32(return_data.size)) + 714] = mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                                    return memory
                                                                                                      from (32 * _2905) + (32 * _741) + (4 * ceil32(return_data.size)) + 682
                                                                                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if mem[(32 * _2905) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
                                                                                                        mem[(32 * _2905) + (32 * _741) + (4 * ceil32(return_data.size)) + 682] = mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                                        mem[(32 * _2905) + (32 * _741) + (4 * ceil32(return_data.size)) + 714] = mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                                        return memory
                                                                                                          from (32 * _2905) + (32 * _741) + (4 * ceil32(return_data.size)) + 682
                                                                                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                                                                                                    else:
                                                                                                        mem[(32 * _2905) + (32 * _741) + (4 * ceil32(return_data.size)) + 682] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                        mem[(32 * _2905) + (32 * _741) + (4 * ceil32(return_data.size)) + 686] = 32
                                                                                                        mem[(32 * _2905) + (32 * _741) + (4 * ceil32(return_data.size)) + 718] = 42
                                                                                                        mem[(32 * _2905) + (32 * _741) + (4 * ceil32(return_data.size)) + 750 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                                                                        revert with memory
                                                                                                          from (32 * _2905) + (32 * _741) + (4 * ceil32(return_data.size)) + 682
                                                                                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            else:
                                mem[(32 * _741) + ceil32(return_data.size) + 260] = arg3
                                mem[(32 * _741) + ceil32(return_data.size) + 292] = 0
                                mem[(32 * _741) + ceil32(return_data.size) + 224] = 68
                                mem[(32 * _741) + ceil32(return_data.size) + 260 len 28] = address(arg3) << 64
                                mem[(32 * _741) + ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                                mem[(32 * _741) + ceil32(return_data.size) + 324] = 32
                                mem[(32 * _741) + ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[(32 * _741) + ceil32(return_data.size) + 494 len 26]
                                else:
                                    if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    else:
                                        mem[(32 * _741) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, 0
                                        mem[(32 * _741) + ceil32(return_data.size) + 480 len 4] = 0
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                                             gas gas_remaining wei
                                            args 0, mem[(32 * _741) + ceil32(return_data.size) + 452 len 4]
                                        if not return_data.size:
                                            require ext_call.success
                                            revert
                                        else:
                                            mem[(32 * _741) + ceil32(return_data.size) + 388] = return_data.size
                                            mem[(32 * _741) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                            else:
                                                if return_data.size <= 0:
                                                    if 0 > _1451:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] < _1451:
                                                                revert with 0, 'swapTokensV2: balance too low'
                                                            else:
                                                                mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = 2
                                                                mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 421] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                                mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
                                                                if block.timestamp + 1800 < block.timestamp:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = _1451
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = 0
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 585] = this.address
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = block.timestamp + 1800
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = 160
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = 2
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 0] = None
                                                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args _1451, 0, 160, address(this.address), block.timestamp + 1800, 2, mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 64]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
                                                                        require return_data.size >= 32
                                                                        _2890 = mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32
                                                                        require mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32 <= 4294967296
                                                                        require mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32 + 32 <= return_data.size
                                                                        require mem[mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485] <= 4294967296 and mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32 + (32 * mem[mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485]) + 32 <= return_data.size
                                                                        mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = mem[mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485]
                                                                        _2908 = mem[_2890 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485]
                                                                        mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517 len floor32(mem[_2890 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485])] = mem[_2890 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len floor32(mem[_2890 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485])]
                                                                        require 1 < mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485]
                                                                        if eth.balance(this.address) < 0:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        38,
                                                                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                                        mem[(32 * _2908) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 26]
                                                                        else:
                                                                            if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                                                                revert with 0, 'Address: call to non-contract'
                                                                            else:
                                                                                mem[(32 * _2908) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 28]
                                                                                mem[(32 * _2908) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 773 len 4] = 0
                                                                                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                                                                     gas gas_remaining wei
                                                                                    args Mask(224, 32, mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]) << 224, mem[(32 * _2908) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 4]
                                                                                if not return_data.size:
                                                                                    require ext_call.success
                                                                                    revert
                                                                                else:
                                                                                    mem[(32 * _2908) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = return_data.size
                                                                                    mem[(32 * _2908) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                    if not ext_call.success:
                                                                                        if return_data.size > 0:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                                    else:
                                                                                        if return_data.size <= 0:
                                                                                            mem[(32 * _2908) + (32 * _741) + (4 * ceil32(return_data.size)) + 682] = mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                            mem[(32 * _2908) + (32 * _741) + (4 * ceil32(return_data.size)) + 714] = mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                            return memory
                                                                                              from (32 * _2908) + (32 * _741) + (4 * ceil32(return_data.size)) + 682
                                                                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if mem[(32 * _2908) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
                                                                                                mem[(32 * _2908) + (32 * _741) + (4 * ceil32(return_data.size)) + 682] = mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                                mem[(32 * _2908) + (32 * _741) + (4 * ceil32(return_data.size)) + 714] = mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                                return memory
                                                                                                  from (32 * _2908) + (32 * _741) + (4 * ceil32(return_data.size)) + 682
                                                                                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                                                                                            else:
                                                                                                mem[(32 * _2908) + (32 * _741) + (4 * ceil32(return_data.size)) + 682] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                                                mem[(32 * _2908) + (32 * _741) + (4 * ceil32(return_data.size)) + 686] = 32
                                                                                                mem[(32 * _2908) + (32 * _741) + (4 * ceil32(return_data.size)) + 718] = 42
                                                                                                mem[(32 * _2908) + (32 * _741) + (4 * ceil32(return_data.size)) + 750 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                                                                revert with memory
                                                                                                  from (32 * _2908) + (32 * _741) + (4 * ceil32(return_data.size)) + 682
                                                                                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                                else:
                                                    require return_data.size >= 32
                                                    if not mem[(32 * _741) + ceil32(return_data.size) + 420]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
                                                    else:
                                                        if 0 > _1451:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] < _1451:
                                                                    revert with 0, 'swapTokensV2: balance too low'
                                                                else:
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = 2
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 421] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                                    mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
                                                                    if block.timestamp + 1800 < block.timestamp:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = _1451
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = 0
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 585] = this.address
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = block.timestamp + 1800
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = 160
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = 2
                                                                        mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 0] = None
                                                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                             gas gas_remaining wei
                                                                            args _1451, 0, 160, address(this.address), block.timestamp + 1800, 2, mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 64]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
                                                                            require return_data.size >= 32
                                                                            _2892 = mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32
                                                                            require mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32 <= 4294967296
                                                                            require mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485] <= 4294967296 and mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32 + (32 * mem[mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485]) + 32 <= return_data.size
                                                                            mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = mem[mem[(32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], Mask(224, 32, _1451) >> 32 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485]
                                                                            _2909 = mem[_2892 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485]
                                                                            mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 517 len floor32(mem[_2892 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485])] = mem[_2892 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len floor32(mem[_2892 + (32 * _741) + ceil32(return_data.size) + ceil32(return_data.size) + 485])]
                                                                            require 1 < mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485]
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            38,
                                                                                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                                            mem[(32 * _2909) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 26]
                                                                            else:
                                                                                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                                                                                    revert with 0, 'Address: call to non-contract'
                                                                                else:
                                                                                    mem[(32 * _2909) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 28]
                                                                                    mem[(32 * _2909) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 0] = 0
                                                                                    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                                                                                         gas gas_remaining wei
                                                                                        args Mask(480, -256, mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 28]) << 256, mem[(32 * _2909) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 4]
                                                                                    if not return_data.size:
                                                                                        require ext_call.success
                                                                                        revert
                                                                                    else:
                                                                                        mem[(32 * _2909) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                        if not ext_call.success:
                                                                                            if return_data.size > 0:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                                        else:
                                                                                            if return_data.size <= 0:
                                                                                                return mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549], 
                                                                                                       mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if not mem[(32 * _2909) + (32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
                                                                                                    revert with 0, 
                                                                                                                32,
                                                                                                                42,
                                                                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                mem[(32 * _2909) + (32 * _741) + (4 * ceil32(return_data.size)) + 792 len 22]
                                                                                                else:
                                                                                                    return mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549], 
                                                                                                           mem[(32 * _741) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 549]
}



}
