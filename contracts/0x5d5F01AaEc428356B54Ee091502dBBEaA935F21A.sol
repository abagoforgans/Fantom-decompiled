contract main {




// =====================  Runtime code  =====================


#
#  - removeLiquidity(uint256 arg1, uint256[] arg2, uint256 arg3)
#  - addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3)
#  - removeLiquidityImbalance(uint256[] arg1, uint256 arg2, uint256 arg3)
#  - initialize(address arg1, address arg2, address arg3)
#
uint256 stor1;
address baseSwapAddress;
address metaSwapAddress;
array of address baseTokens;
array of address metaTokens;
array of address token;
address metaLPTokenAddress;

function baseTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < baseTokens.length
    return baseTokens[arg1]
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token.length
    return token[arg1]
}

function baseSwap() payable {
    return baseSwapAddress
}

function metaSwap() payable {
    return metaSwapAddress
}

function metaLPToken() payable {
    return metaLPTokenAddress
}

function getToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= token.length:
        revert with 0, 'index out of range'
    return token[arg1]
}

function metaTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < metaTokens.length
    return metaTokens[arg1]
}

function _fallback() payable {
    revert
}

function calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(metaSwapAddress)
    staticcall metaSwapAddress.calculateSwapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args arg1 << 248, arg2 << 248, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function calculateRemoveLiquidityOneToken(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(metaSwapAddress)
    if arg2 < uint8(metaTokens.length - 1):
        staticcall metaSwapAddress.0x342a87a1 with:
                gas gas_remaining wei
               args arg1, arg2
    else:
        staticcall metaSwapAddress.0x342a87a1 with:
                gas gas_remaining wei
               args arg1, uint8(metaTokens.length - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(baseSwapAddress)
        staticcall baseSwapAddress.0x342a87a1 with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint8(arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function calculateTokenAmount(uint256[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require metaTokens.length <= test266151307()
    mem[96] = metaTokens.length
    if not metaTokens.length:
        require baseTokens.length <= test266151307()
        mem[(32 * metaTokens.length) + 128] = baseTokens.length
        if not baseTokens.length:
            idx = 0
            while uint8(idx) < metaTokens.length - 1:
                require uint8(idx) < arg1.length
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = cd[((32 * uint8(idx)) + arg1 + 36)]
                idx = idx + 1
                continue 
            _168 = mem[(32 * metaTokens.length) + 128]
            idx = 0
            while uint8(idx) < _168:
                require metaTokens.length + uint8(idx) - 1 < arg1.length
                require uint8(idx) < mem[(32 * metaTokens.length) + 128]
                mem[(32 * uint8(idx)) + (32 * metaTokens.length) + 160] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                _168 = mem[(32 * metaTokens.length) + 128]
                idx = idx + 1
                continue 
        else:
            mem[(32 * metaTokens.length) + 160 len 32 * baseTokens.length] = call.data[calldata.size len 32 * baseTokens.length]
            idx = 0
            while uint8(idx) < metaTokens.length - 1:
                require uint8(idx) < arg1.length
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = cd[((32 * uint8(idx)) + arg1 + 36)]
                idx = idx + 1
                continue 
            _169 = mem[(32 * metaTokens.length) + 128]
            idx = 0
            while uint8(idx) < _169:
                require metaTokens.length + uint8(idx) - 1 < arg1.length
                require uint8(idx) < mem[(32 * metaTokens.length) + 128]
                mem[(32 * uint8(idx)) + (32 * metaTokens.length) + 160] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                _169 = mem[(32 * metaTokens.length) + 128]
                idx = idx + 1
                continue 
    else:
        mem[128 len 32 * metaTokens.length] = call.data[calldata.size len 32 * metaTokens.length]
        require baseTokens.length <= test266151307()
        mem[(32 * metaTokens.length) + 128] = baseTokens.length
        if not baseTokens.length:
            idx = 0
            while uint8(idx) < metaTokens.length - 1:
                require uint8(idx) < arg1.length
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = cd[((32 * uint8(idx)) + arg1 + 36)]
                idx = idx + 1
                continue 
            _170 = mem[(32 * metaTokens.length) + 128]
            idx = 0
            while uint8(idx) < _170:
                require metaTokens.length + uint8(idx) - 1 < arg1.length
                require uint8(idx) < mem[(32 * metaTokens.length) + 128]
                mem[(32 * uint8(idx)) + (32 * metaTokens.length) + 160] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                _170 = mem[(32 * metaTokens.length) + 128]
                idx = idx + 1
                continue 
        else:
            mem[(32 * metaTokens.length) + 160 len 32 * baseTokens.length] = call.data[calldata.size len 32 * baseTokens.length]
            idx = 0
            while uint8(idx) < metaTokens.length - 1:
                require uint8(idx) < arg1.length
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = cd[((32 * uint8(idx)) + arg1 + 36)]
                idx = idx + 1
                continue 
            _171 = mem[(32 * metaTokens.length) + 128]
            idx = 0
            while uint8(idx) < _171:
                require metaTokens.length + uint8(idx) - 1 < arg1.length
                require uint8(idx) < mem[(32 * metaTokens.length) + 128]
                mem[(32 * uint8(idx)) + (32 * metaTokens.length) + 160] = cd[((32 * metaTokens.length + uint8(idx) - 1) + arg1 + 36)]
                _171 = mem[(32 * metaTokens.length) + 128]
                idx = idx + 1
                continue 
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 160] = 0xe6ab280600000000000000000000000000000000000000000000000000000000
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 196] = arg2
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 164] = 64
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 228] = mem[(32 * metaTokens.length) + 128]
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 260 len floor32(mem[(32 * metaTokens.length) + 128])] = mem[(32 * metaTokens.length) + 160 len floor32(mem[(32 * metaTokens.length) + 128])]
    require ext_code.size(baseSwapAddress)
    staticcall baseSwapAddress.0xe6ab2806 with:
            gas gas_remaining wei
           args 64, arg2, mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 228 len (32 * mem[(32 * metaTokens.length) + 128]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require metaTokens.length - 1 < mem[96]
    mem[(32 * metaTokens.length - 1) + 128] = ext_call.return_data[0]
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 160] = 0xe6ab280600000000000000000000000000000000000000000000000000000000
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 196] = arg2
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 164] = 64
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 228] = mem[96]
    mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 260 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    require ext_code.size(metaSwapAddress)
    staticcall metaSwapAddress.0xe6ab2806 with:
            gas gas_remaining wei
           args 64, arg2, mem[(32 * metaTokens.length) + (32 * baseTokens.length) + 228 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function calculateRemoveLiquidity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0xf2fad2b600000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(metaSwapAddress)
    staticcall metaSwapAddress.0xf2fad2b6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[64] = (32 * _7) + ceil32(return_data.size) + 128
    _45 = mem[ceil32(return_data.size) + 96]
    require uint8(mem[ceil32(return_data.size) + 96] - 1) < mem[ceil32(return_data.size) + 96]
    _47 = mem[(32 * uint8(mem[ceil32(return_data.size) + 96] - 1)) + ceil32(return_data.size) + 128]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 0xf2fad2b600000000000000000000000000000000000000000000000000000000
    mem[(32 * _7) + ceil32(return_data.size) + 132] = _47
    require ext_code.size(baseSwapAddress)
    staticcall baseSwapAddress.0xf2fad2b6 with:
            gas gas_remaining wei
           args _47
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _7) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _7) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _51 = mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 <= 4294967296
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + 32 <= return_data.size
    require mem[(32 * _7) + ceil32(return_data.size) + mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + 128] <= 4294967296 and mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + (32 * mem[(32 * _7) + ceil32(return_data.size) + mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + 128]) + 32 <= return_data.size
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _7) + ceil32(return_data.size) + mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + 128]
    _54 = mem[(32 * _7) + ceil32(return_data.size) + _51 + 128]
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _7) + ceil32(return_data.size) + _51 + 128])] = mem[(32 * _7) + ceil32(return_data.size) + _51 + 160 len floor32(mem[(32 * _7) + ceil32(return_data.size) + _51 + 128])]
    require uint8(mem[ceil32(return_data.size) + 96] - 1) + mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128] <= test266151307()
    mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160] = uint8(mem[ceil32(return_data.size) + 96] - 1) + mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]
    mem[64] = (32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + (32 * uint8(mem[ceil32(return_data.size) + 96] - 1) + mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]) + 192
    if not uint8(mem[ceil32(return_data.size) + 96] - 1) + mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]:
        idx = 0
        while uint8(idx) < uint8(_45 - 1):
            require uint8(idx) < mem[ceil32(return_data.size) + 96]
            require uint8(idx) < mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * uint8(idx)) + (32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 128]
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]:
            require uint8(idx) < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]
            require uint8(_45 + idx - 1) < mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
            mem[(32 * uint8(_45 + idx - 1)) + (32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * uint8(idx)) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
        _139 = mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[64] + 64 len floor32(mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160])] = mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160])]
        return 32, mem[mem[64] + 32 len (32 * _139) + 32]
    mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len 32 * uint8(mem[ceil32(return_data.size) + 96] - 1) + mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]] = call.data[calldata.size len 32 * uint8(mem[ceil32(return_data.size) + 96] - 1) + mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]]
    idx = 0
    while uint8(idx) < uint8(_45 - 1):
        require uint8(idx) < mem[ceil32(return_data.size) + 96]
        require uint8(idx) < mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
        mem[(32 * uint8(idx)) + (32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 128]
        idx = idx + 1
        continue 
    idx = 0
    while uint8(idx) < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]:
        require uint8(idx) < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]
        require uint8(_45 + idx - 1) < mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
        mem[(32 * uint8(_45 + idx - 1)) + (32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * uint8(idx)) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
    _144 = mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
    mem[mem[64] + 64 len floor32(mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160])] = mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _54) + (32 * _7) + (2 * ceil32(return_data.size)) + 160])]
    return 32, mem[mem[64] + 32 len (32 * _144) + 32]
}

function swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < token.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(token[arg1]):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    call token[arg1] with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg3
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(metaSwapAddress)
        call metaSwapAddress.swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1 << 248, arg2 << 248, arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 < token.length
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
        if not ext_code.size(token[arg2]):
            revert with 0, 'Address: call to non-contract'
        mem[456 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
        call token[arg2] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg3
            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(metaSwapAddress)
            call metaSwapAddress.swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1 << 248, arg2 << 248, arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg2 < token.length
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(token[arg2]):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 549 len 4] = 0
            call token[arg2] with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg3
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
                stor1 = 1
                return ext_call.return_data[0]
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            stor1 = 1
            return ext_call.return_data[0], 
                   mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(metaSwapAddress)
        call metaSwapAddress.swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1 << 248, arg2 << 248, arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 < token.length
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(token[arg2]):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
        mem[ceil32(return_data.size) + 521 len 0] = 0
        call token[arg2] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg3
            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
        else:
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
    stor1 = 1
    return ext_call.return_data[0]
}

function removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(metaLPTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call metaLPTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if arg2 < uint8(metaTokens.length - 1):
            require ext_code.size(metaSwapAddress)
            call metaSwapAddress.0x3e3a1560 with:
                 gas gas_remaining wei
                args arg1, arg2 << 248, arg3, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg2 < metaTokens.length
            require ext_code.size(metaTokens[arg2])
            staticcall metaTokens[arg2].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if not ext_code.size(metaTokens[arg2]):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
            mem[520 len 0] = 0
            call metaTokens[arg2] with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[520 len 4]
        else:
            if arg2 >= uint8(metaTokens.length + baseTokens.length - 1):
                revert with 0, 'out of range'
            require ext_code.size(metaSwapAddress)
            call metaSwapAddress.0x3e3a1560 with:
                 gas gas_remaining wei
                args arg1, metaTokens.length - 1 << 248, 0, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(baseSwapAddress)
            call baseSwapAddress.0x3e3a1560 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff << 248, arg3, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < baseTokens.length
            require ext_code.size(baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)])
            staticcall baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if not ext_code.size(baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)]):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
            call baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)] with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
        stor1 = 1
        return ext_call.return_data[0]
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        if arg2 < uint8(metaTokens.length - 1):
            require ext_code.size(metaSwapAddress)
            call metaSwapAddress.0x3e3a1560 with:
                 gas gas_remaining wei
                args arg1, arg2 << 248, arg3, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg2 < metaTokens.length
            require ext_code.size(metaTokens[arg2])
            staticcall metaTokens[arg2].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(metaTokens[arg2]):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 549 len 4] = 0
            call metaTokens[arg2] with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
                stor1 = 1
                return ext_call.return_data[0]
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            stor1 = 1
            return ext_call.return_data[0], 
                   mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if arg2 >= uint8(metaTokens.length + baseTokens.length - 1):
            revert with 0, 'out of range'
        require ext_code.size(metaSwapAddress)
        call metaSwapAddress.0x3e3a1560 with:
             gas gas_remaining wei
            args arg1, metaTokens.length - 1 << 248, 0, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(baseSwapAddress)
        call baseSwapAddress.0x3e3a1560 with:
             gas gas_remaining wei
            args ext_call.return_data[0], arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff << 248, arg3, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint8(arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < baseTokens.length
        require ext_code.size(baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)])
        staticcall baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)]):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
        mem[ceil32(return_data.size) + 521 len 0] = 0
        call baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
        else:
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
        stor1 = 1
        return ext_call.return_data[0]
    require return_data.size >= 32
    if not mem[324]:
        revert with 0, 
                    32,
                    42,
                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 403 len 22]
    if arg2 < uint8(metaTokens.length - 1):
        require ext_code.size(metaSwapAddress)
        call metaSwapAddress.0x3e3a1560 with:
             gas gas_remaining wei
            args arg1, arg2 << 248, arg3, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 < metaTokens.length
        require ext_code.size(metaTokens[arg2])
        staticcall metaTokens[arg2].balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(metaTokens[arg2]):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
        mem[ceil32(return_data.size) + 521 len 0] = 0
        call metaTokens[arg2] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
        else:
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
        stor1 = 1
        return ext_call.return_data[0]
    if arg2 >= uint8(metaTokens.length + baseTokens.length - 1):
        revert with 0, 'out of range'
    require ext_code.size(metaSwapAddress)
    call metaSwapAddress.0x3e3a1560 with:
         gas gas_remaining wei
        args arg1, metaTokens.length - 1 << 248, 0, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseSwapAddress)
    call baseSwapAddress.0x3e3a1560 with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff << 248, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require uint8(arg2 + -metaTokens.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < baseTokens.length
    require ext_code.size(baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)])
    staticcall baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)].balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 563 len 26]
    if not ext_code.size(baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)]):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    mem[ceil32(return_data.size) + 549 len 4] = 0
    call baseTokens[uint8(arg2 + -stor54.length - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)] with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 521 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 567 len 22]
        stor1 = 1
        return ext_call.return_data[0]
    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 489]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    stor1 = 1
    return ext_call.return_data[0], 
           mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
