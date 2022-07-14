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
    require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
    staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
    staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'swapTokensV2: balance too low'
    mem[96] = 2
    mem[128] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if block.timestamp + 1800 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
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
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _570 = mem[192 len 4], ext_call.return_data[0 len 28]
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
    _573 = mem[_570 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_570 + 192])] = mem[_570 + 224 len floor32(mem[_570 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _1115 = mem[ceil32(return_data.size) + 256]
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < mem[ceil32(return_data.size) + 256]:
        revert with 0, 'swapTokensV2: balance too low'
    mem[(32 * _573) + ceil32(return_data.size) + 224] = 2
    mem[(32 * _573) + ceil32(return_data.size) + 256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[(32 * _573) + ceil32(return_data.size) + 288] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if block.timestamp + 1800 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[(32 * _573) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _573) + ceil32(return_data.size) + 324] = _1115
    mem[(32 * _573) + ceil32(return_data.size) + 356] = 0
    mem[(32 * _573) + ceil32(return_data.size) + 420] = this.address
    mem[(32 * _573) + ceil32(return_data.size) + 452] = block.timestamp + 1800
    mem[(32 * _573) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _573) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _573) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _1115, 0, 160, address(this.address), block.timestamp + 1800, 2, mem[(32 * _573) + ceil32(return_data.size) + 516 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _573) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _573) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _1655 = mem[(32 * _573) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _1115) >> 32
    require mem[(32 * _573) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _1115) >> 32 <= 4294967296
    require mem[(32 * _573) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _1115) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _573) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _1115) >> 32 + (32 * _573) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _573) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _1115) >> 32 + (32 * mem[mem[(32 * _573) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _1115) >> 32 + (32 * _573) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _573) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _573) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _1115) >> 32 + (32 * _573) + ceil32(return_data.size) + 320]
    _1658 = mem[_1655 + (32 * _573) + ceil32(return_data.size) + 320]
    mem[(32 * _573) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1655 + (32 * _573) + ceil32(return_data.size) + 320])] = mem[_1655 + (32 * _573) + ceil32(return_data.size) + 352 len floor32(mem[_1655 + (32 * _573) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _573) + (2 * ceil32(return_data.size)) + 320]
    if not mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384]:
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + 622 len 26]
        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + 516 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, 0
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + 580 len 0] = 0
        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
             gas gas_remaining wei
            args Mask(480, -256, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, 0) << 256, mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + 580 len 4]
        require return_data.size
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + 548]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 22]
        if 0 > mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384]:
            revert with 0, 'SafeMath: subtraction overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 26]
        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 64] = 0, address(arg1), mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384 len 28]
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 773 len 4] = 0
        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
             gas gas_remaining wei
            args mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384], mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 28], mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 4]
        require return_data.size
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = return_data.size
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 682] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 686] = 32
            mem[(32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 718] = 32
            mem[(32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 750] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 682
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
            return mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384], mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384]
        require return_data.size >= 32
        if mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
            return mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384], mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384]
    else:
        require mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384]
        if mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] * arg2 / mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] != arg2:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + 453 len 31]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + 622 len 26]
        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + 516 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] * arg2 / 1000) >> 32
        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
             gas gas_remaining wei
            args Mask(224, 32, mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] * arg2 / 1000) << 224, mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + 580 len 4]
        require return_data.size
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + 548]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 22]
        if mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] * arg2 / 1000 > mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384]:
            revert with 0, 'SafeMath: subtraction overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 26]
        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] - (mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] * arg2 / 1000)) >> 32
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 773 len 4] = 0
        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
             gas gas_remaining wei
            args Mask(224, 32, mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] - (mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] * arg2 / 1000)) << 224, mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 4]
        require return_data.size
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = return_data.size
        mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[(32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 682] = mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] - (mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] * arg2 / 1000)
            mem[(32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 714] = mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] - (mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] * arg2 / 1000)
            return memory
              from (32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 682
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
        require return_data.size >= 32
        if mem[(32 * _1658) + (32 * _573) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
            mem[(32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 682] = mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] - (mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] * arg2 / 1000)
            mem[(32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 714] = mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] - (mem[(32 * _573) + (2 * ceil32(return_data.size)) + 384] * arg2 / 1000)
            return memory
              from (32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 682
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
    ('iszero', ('mem', ('range', ('add', 713, ('mask_shl', 251, 0, 5, ('var', '_1658')), ('mask_shl', 251, 0, 5, ('var', '_573')), ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize')), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize'))), 32)))
    mem[(32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 682] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 686] = 32
    mem[(32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 718] = 42
    mem[(32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 750 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
    revert with memory
      from (32 * _1658) + (32 * _573) + (4 * ceil32(return_data.size)) + 682
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
