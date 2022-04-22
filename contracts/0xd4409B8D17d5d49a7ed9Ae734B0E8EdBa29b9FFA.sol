contract main {




// =====================  Runtime code  =====================


#
#  - cTokenMetadata(address arg1)
#
function _fallback() payable {
    revert
}

function cTokenUnderlyingPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.comptroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return address(arg1), ext_call.return_data[0]
}

function getAccountLimits(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    require ext_code.size(arg1)
    staticcall arg1.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args arg2
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require 0 == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 288] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = arg2
    require ext_code.size(arg1)
    staticcall arg1.getAssetsIn(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _11 = mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64
    require mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 319 < ceil32(return_data.size) + return_data.size + 288
    _12 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]) + 320 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]) + 320
    mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]
    require _11 + (32 * _12) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _11 + 320
    t = (2 * ceil32(return_data.size)) + 320
    while idx < _12:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 192] = (2 * ceil32(return_data.size)) + 288
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    _25 = mem[(2 * ceil32(return_data.size)) + 288]
    mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 288]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 320
    t = mem[64] + 160
    while idx < _25:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 256]
    return 32, 96, mem[mem[64] + 64 len (32 * _25) + 96]
}

function cTokenUnderlyingPriceAll(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _53 = mem[64]
            mem[64] = mem[64] + 64
            mem[_53] = 0
            mem[_53 + 32] = 0
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).comptroller() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _60 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_60] == mem[_60 + 12 len 20]
            require ext_code.size(mem[_60 + 12 len 20])
            staticcall mem[_60 + 12 len 20].oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _71 = mem[_70]
            require mem[_70] == mem[_70 + 12 len 20]
            _76 = mem[64]
            mem[64] = mem[64] + 64
            mem[_76] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(_71))
            staticcall address(_71).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_81] == mem[_81]
            mem[_76 + 32] = mem[_81]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _76
            idx = idx + 1
            continue 
        _46 = mem[64]
        mem[mem[64]] = 32
        _47 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _47:
            _89 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_89 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _46 + (64 * _47) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[var16001] = (32 * arg1.length) + 128
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        _119 = mem[64]
        mem[64] = mem[64] + 64
        mem[_119] = 0
        mem[_119 + 32] = 0
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).comptroller() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_123] == mem[_123 + 12 len 20]
        require ext_code.size(mem[_123 + 12 len 20])
        staticcall mem[_123 + 12 len 20].oracle() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _128 = mem[_127]
        require mem[_127] == mem[_127 + 12 len 20]
        _129 = mem[64]
        mem[64] = mem[64] + 64
        mem[_129] = address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
        require ext_code.size(address(_128))
        staticcall address(_128).getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_132] == mem[_132]
        mem[_129 + 32] = mem[_132]
        require idx < mem[96]
        mem[(32 * idx) + 128] = _129
        idx = idx + 1
        continue 
    _114 = mem[64]
    mem[mem[64]] = 32
    _115 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _115:
        _135 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_135 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _114 + (64 * _115) + -mem[64] + 64
}

function getClaimableSushiRewards(address[] arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            mem[mem[64] + 4] = arg3
            require ext_code.size(arg2)
            staticcall arg2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _61 = mem[_56]
            require mem[_56] == mem[_56]
            require idx < arg1.length
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = arg3
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).claimSushi(address rg1) with:
                 gas gas_remaining wei
                args address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_68] == mem[_68]
            mem[mem[64] + 4] = arg3
            require ext_code.size(arg2)
            staticcall arg2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _78 = mem[_76]
            require mem[_76] == mem[_76]
            _80 = mem[64]
            mem[64] = mem[64] + 64
            mem[_80] = 21
            mem[_80 + 32] = 'subtraction underflow' << 88
            if _61 <= _78:
                require idx < mem[96]
                mem[(32 * idx) + 128] = _78 - _61
                idx = idx + 1
                continue 
            _82 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 21
            idx = 0
            while idx < 21:
                mem[idx + _82 + 68] = mem[idx + _80 + 32]
                idx = idx + 32
                continue 
            mem[_82 + 89] = 0
            revert with memory
              from mem[64]
               len _82 + -mem[64] + 100
    else:
        mem[128 len 32 * arg1.length] = code.data[9703 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            mem[mem[64] + 4] = arg3
            require ext_code.size(arg2)
            staticcall arg2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _63 = mem[_57]
            require mem[_57] == mem[_57]
            require idx < arg1.length
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = arg3
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).claimSushi(address rg1) with:
                 gas gas_remaining wei
                args address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_69] == mem[_69]
            mem[mem[64] + 4] = arg3
            require ext_code.size(arg2)
            staticcall arg2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _77 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _79 = mem[_77]
            require mem[_77] == mem[_77]
            _81 = mem[64]
            mem[64] = mem[64] + 64
            mem[_81] = 21
            mem[_81 + 32] = 'subtraction underflow' << 88
            if _63 <= _79:
                require idx < mem[96]
                mem[(32 * idx) + 128] = _79 - _63
                idx = idx + 1
                continue 
            _83 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 21
            idx = 0
            while idx < 21:
                mem[idx + _83 + 68] = mem[idx + _81 + 32]
                idx = idx + 32
                continue 
            mem[_83 + 89] = 0
            revert with memory
              from mem[64]
               len _83 + -mem[64] + 100
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_da84fefe(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = address(cd[68])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _61 = mem[_56]
            require mem[_56] == mem[_56]
            require idx < ('cd', 4).length
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[68])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).claimComp(address rg1) with:
                 gas gas_remaining wei
                args address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_68] == mem[_68]
            mem[mem[64] + 4] = address(cd[68])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _78 = mem[_76]
            require mem[_76] == mem[_76]
            _80 = mem[64]
            mem[64] = mem[64] + 64
            mem[_80] = 21
            mem[_80 + 32] = 'subtraction underflow' << 88
            if _61 <= _78:
                require idx < mem[96]
                mem[(32 * idx) + 128] = _78 - _61
                idx = idx + 1
                continue 
            _82 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 21
            idx = 0
            while idx < 21:
                mem[idx + _82 + 68] = mem[idx + _80 + 32]
                idx = idx + 32
                continue 
            mem[_82 + 89] = 0
            revert with memory
              from mem[64]
               len _82 + -mem[64] + 100
    else:
        mem[128 len 32 * ('cd', 4).length] = code.data[9703 len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = address(cd[68])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _63 = mem[_57]
            require mem[_57] == mem[_57]
            require idx < ('cd', 4).length
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[68])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).claimComp(address rg1) with:
                 gas gas_remaining wei
                args address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_69] == mem[_69]
            mem[mem[64] + 4] = address(cd[68])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _77 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _79 = mem[_77]
            require mem[_77] == mem[_77]
            _81 = mem[64]
            mem[64] = mem[64] + 64
            mem[_81] = 21
            mem[_81 + 32] = 'subtraction underflow' << 88
            if _63 <= _79:
                require idx < mem[96]
                mem[(32 * idx) + 128] = _79 - _63
                idx = idx + 1
                continue 
            _83 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 21
            idx = 0
            while idx < 21:
                mem[idx + _83 + 68] = mem[idx + _81 + 32]
                idx = idx + 32
                continue 
            mem[_83 + 89] = 0
            revert with memory
              from mem[64]
               len _83 + -mem[64] + 100
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function cTokenBalances(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[324] = arg2
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg2
    mem[320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 324] = arg2
    require ext_code.size(arg1)
    call arg1.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args arg2
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 324] = arg2
    require ext_code.size(arg1)
    call arg1.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args arg2
    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.comptroller() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 320] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _21 = mem[(6 * ceil32(return_data.size)) + 320]
    require mem[(6 * ceil32(return_data.size)) + 320] <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320] + 351 < (6 * ceil32(return_data.size)) + return_data.size + 320
    _22 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320] + 320]
    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320] + 320] <= test266151307()
    require ceil32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320] + 320]) + 32 >= 0 and (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320] + 320]) + 352 <= test266151307()
    mem[64] = (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320] + 320]) + 352
    mem[(7 * ceil32(return_data.size)) + 320] = _22
    require _21 + _22 + 32 <= return_data.size
    mem[(7 * ceil32(return_data.size)) + 352 len ceil32(_22)] = mem[(6 * ceil32(return_data.size)) + _21 + 352 len ceil32(_22)]
    if ceil32(_22) <= _22:
        _202 = mem[64]
        mem[64] = mem[64] + 64
        mem[_202] = 5
        mem[_202 + 32] = 0x637246544d000000000000000000000000000000000000000000000000000000
        _204 = mem[64]
        mem[mem[64] + 32] = 0x637246544d000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 37] = 0
        _824 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 37
        _826 = sha3(mem[_824 + 32 len mem[_824]])
        mem[_204 + 69 len ceil32(_22)] = mem[(7 * ceil32(return_data.size)) + 352 len ceil32(_22)]
        if ceil32(_22) > _22:
            mem[_22 + _204 + 69] = 0
        mem[64] = _22 + _204 + 69
        if sha3(mem[_204 + 69 len _22]) == _826:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).checkMembership(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return arg1 << 192, 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       eth.balance(arg2),
                       eth.balance(arg2),
                       0
            require ext_code.size(arg1)
            staticcall arg1.getAccountSnapshot(address rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            return arg1 << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   eth.balance(arg2),
                   eth.balance(arg2),
                   ext_call.return_data[32]
    else:
        mem[_22 + (7 * ceil32(return_data.size)) + 352] = 0
        _203 = mem[64]
        mem[64] = mem[64] + 64
        mem[_203] = 5
        mem[_203 + 32] = 0x637246544d000000000000000000000000000000000000000000000000000000
        _205 = mem[64]
        mem[mem[64] + 32] = 0x637246544d000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 37] = 0
        _832 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 37
        _834 = sha3(mem[_832 + 32 len mem[_832]])
        mem[_205 + 69 len ceil32(_22)] = mem[(7 * ceil32(return_data.size)) + 352 len ceil32(_22)]
        if ceil32(_22) > _22:
            mem[_22 + _205 + 69] = 0
        mem[64] = _22 + _205 + 69
        if sha3(mem[_205 + 69 len _22]) == _834:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).checkMembership(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return arg1 << 192, 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       eth.balance(arg2),
                       eth.balance(arg2),
                       0
            require ext_code.size(arg1)
            staticcall arg1.getAccountSnapshot(address rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            return arg1 << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   eth.balance(arg2),
                   eth.balance(arg2),
                   ext_call.return_data[32]
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).checkMembership(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return arg1 << 192, 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               0
    require ext_code.size(arg1)
    staticcall arg1.getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    return arg1 << 192, 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[32]
}

function cTokenBalancesAll(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _912 = mem[64]
            mem[64] = mem[64] + 224
            mem[_912] = 0
            mem[_912 + 32] = 0
            mem[_912 + 64] = 0
            mem[_912 + 96] = 0
            mem[_912 + 128] = 0
            mem[_912 + 160] = 0
            mem[_912 + 192] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _925 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _928 = mem[_925]
            require mem[_925] == mem[_925]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _939 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _941 = mem[_939]
            require mem[_939] == mem[_939]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _947 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _949 = mem[_947]
            require mem[_947] == mem[_947]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).comptroller() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _954 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _957 = mem[_954]
            require mem[_954] == mem[_954 + 12 len 20]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _962 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _963 = mem[_962]
            require mem[_962] <= test266151307()
            require _962 + mem[_962] + 31 < _962 + return_data.size
            _967 = mem[_962 + mem[_962]]
            require mem[_962 + mem[_962]] <= test266151307()
            require ceil32(mem[_962 + mem[_962]]) + 32 >= 0 and _962 + ceil32(return_data.size) + ceil32(mem[_962 + mem[_962]]) + 32 <= test266151307()
            mem[64] = _962 + ceil32(return_data.size) + ceil32(mem[_962 + mem[_962]]) + 32
            mem[_962 + ceil32(return_data.size)] = _967
            require _963 + _967 + 32 <= return_data.size
            s = 0
            while s < _967:
                mem[s + _962 + ceil32(return_data.size) + 32] = mem[s + _962 + _963 + 32]
                s = s + 32
                continue 
            if ceil32(_967) <= _967:
                _1347 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1347] = 5
                mem[_1347 + 32] = 0x637246544d000000000000000000000000000000000000000000000000000000
                _1349 = mem[64]
                s = 0
                while s < 5:
                    mem[s + _1349 + 32] = mem[s + _1347 + 32]
                    s = s + 32
                    continue 
                mem[_1349 + 37] = 0
                _1973 = mem[64]
                mem[mem[64]] = _1349 + -mem[64] + 5
                mem[64] = _1349 + 37
                _1975 = sha3(mem[_1973 + 32 len mem[_1973]])
                _1990 = mem[_962 + ceil32(return_data.size)]
                s = 0
                while s < _1990:
                    mem[s + _1349 + 69] = mem[s + _962 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_1990) <= _1990:
                    _2763 = mem[64]
                    mem[mem[64]] = _1990 + _1349 + -mem[64] + 37
                    mem[64] = _1990 + _1349 + 69
                    if sha3(mem[_2763 + 32 len mem[_2763]]) == _1975:
                        mem[_1990 + _1349 + 73] = arg2
                        mem[_1990 + _1349 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_957))
                        staticcall address(_957).checkMembership(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1990 + _1349 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1990 + _1349 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[64] = _1990 + _1349 + ceil32(return_data.size) + 293
                            mem[_1990 + _1349 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1990 + _1349 + ceil32(return_data.size) + 101] = _928
                            mem[_1990 + _1349 + ceil32(return_data.size) + 133] = _941
                            mem[_1990 + _1349 + ceil32(return_data.size) + 165] = _949
                            mem[_1990 + _1349 + ceil32(return_data.size) + 197] = eth.balance(arg2)
                            mem[_1990 + _1349 + ceil32(return_data.size) + 229] = eth.balance(arg2)
                            mem[_1990 + _1349 + ceil32(return_data.size) + 261] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1990 + _1349 + ceil32(return_data.size) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[_1990 + _1349 + ceil32(return_data.size) + 69 len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            require ext_call.return_data[96] == ext_call.return_data[96]
                            mem[64] = _1990 + _1349 + (2 * ceil32(return_data.size)) + 293
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 101] = _928
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 133] = _941
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 165] = _949
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 197] = eth.balance(arg2)
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 229] = eth.balance(arg2)
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1990 + _1349 + (2 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1990 + _1349 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1990 + _1349 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1990 + _1349 + ceil32(return_data.size) + 73] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_1990 + _1349 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1990 + _1349 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 73] = arg2
                        mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1990 + _1349 + (4 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1990 + _1349 + (4 * ceil32(return_data.size)) + 73] = arg2
                        mem[_1990 + _1349 + (4 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_957))
                        staticcall address(_957).checkMembership(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1990 + _1349 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1990 + _1349 + (6 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[64] = _1990 + _1349 + (6 * ceil32(return_data.size)) + 293
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 101] = _928
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 133] = _941
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 165] = _949
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 261] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1990 + _1349 + (6 * ceil32(return_data.size)) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 69 len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            require ext_call.return_data[96] == ext_call.return_data[96]
                            mem[64] = _1990 + _1349 + (7 * ceil32(return_data.size)) + 293
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 101] = _928
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 133] = _941
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 165] = _949
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1990 + _1349 + (7 * ceil32(return_data.size)) + 69
                else:
                    mem[_1990 + _1349 + 69] = 0
                    _2766 = mem[64]
                    mem[mem[64]] = _1990 + _1349 + -mem[64] + 37
                    mem[64] = _1990 + _1349 + 69
                    if sha3(mem[_2766 + 32 len mem[_2766]]) == _1975:
                        mem[_1990 + _1349 + 73] = arg2
                        mem[_1990 + _1349 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_957))
                        staticcall address(_957).checkMembership(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1990 + _1349 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1990 + _1349 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[64] = _1990 + _1349 + ceil32(return_data.size) + 293
                            mem[_1990 + _1349 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1990 + _1349 + ceil32(return_data.size) + 101] = _928
                            mem[_1990 + _1349 + ceil32(return_data.size) + 133] = _941
                            mem[_1990 + _1349 + ceil32(return_data.size) + 165] = _949
                            mem[_1990 + _1349 + ceil32(return_data.size) + 197] = eth.balance(arg2)
                            mem[_1990 + _1349 + ceil32(return_data.size) + 229] = eth.balance(arg2)
                            mem[_1990 + _1349 + ceil32(return_data.size) + 261] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1990 + _1349 + ceil32(return_data.size) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[_1990 + _1349 + ceil32(return_data.size) + 69 len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            require ext_call.return_data[96] == ext_call.return_data[96]
                            mem[64] = _1990 + _1349 + (2 * ceil32(return_data.size)) + 293
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 101] = _928
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 133] = _941
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 165] = _949
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 197] = eth.balance(arg2)
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 229] = eth.balance(arg2)
                            mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1990 + _1349 + (2 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1990 + _1349 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1990 + _1349 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1990 + _1349 + ceil32(return_data.size) + 73] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_1990 + _1349 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1990 + _1349 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 73] = arg2
                        mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1990 + _1349 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1990 + _1349 + (4 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1990 + _1349 + (4 * ceil32(return_data.size)) + 73] = arg2
                        mem[_1990 + _1349 + (4 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_957))
                        staticcall address(_957).checkMembership(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1990 + _1349 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1990 + _1349 + (6 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[64] = _1990 + _1349 + (6 * ceil32(return_data.size)) + 293
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 101] = _928
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 133] = _941
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 165] = _949
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 261] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1990 + _1349 + (6 * ceil32(return_data.size)) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[_1990 + _1349 + (6 * ceil32(return_data.size)) + 69 len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            require ext_call.return_data[96] == ext_call.return_data[96]
                            mem[64] = _1990 + _1349 + (7 * ceil32(return_data.size)) + 293
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 101] = _928
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 133] = _941
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 165] = _949
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            mem[_1990 + _1349 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1990 + _1349 + (7 * ceil32(return_data.size)) + 69
            else:
                mem[_967 + _962 + ceil32(return_data.size) + 32] = 0
                _1348 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1348] = 5
                mem[_1348 + 32] = 0x637246544d000000000000000000000000000000000000000000000000000000
                _1350 = mem[64]
                s = 0
                while s < 5:
                    mem[s + _1350 + 32] = mem[s + _1348 + 32]
                    s = s + 32
                    continue 
                mem[_1350 + 37] = 0
                _1981 = mem[64]
                mem[mem[64]] = _1350 + -mem[64] + 5
                mem[64] = _1350 + 37
                _1983 = sha3(mem[_1981 + 32 len mem[_1981]])
                _1992 = mem[_962 + ceil32(return_data.size)]
                s = 0
                while s < _1992:
                    mem[s + _1350 + 69] = mem[s + _962 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_1992) <= _1992:
                    _2775 = mem[64]
                    mem[mem[64]] = _1992 + _1350 + -mem[64] + 37
                    mem[64] = _1992 + _1350 + 69
                    if sha3(mem[_2775 + 32 len mem[_2775]]) == _1983:
                        mem[_1992 + _1350 + 73] = arg2
                        mem[_1992 + _1350 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_957))
                        staticcall address(_957).checkMembership(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1992 + _1350 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1992 + _1350 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[64] = _1992 + _1350 + ceil32(return_data.size) + 293
                            mem[_1992 + _1350 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1992 + _1350 + ceil32(return_data.size) + 101] = _928
                            mem[_1992 + _1350 + ceil32(return_data.size) + 133] = _941
                            mem[_1992 + _1350 + ceil32(return_data.size) + 165] = _949
                            mem[_1992 + _1350 + ceil32(return_data.size) + 197] = eth.balance(arg2)
                            mem[_1992 + _1350 + ceil32(return_data.size) + 229] = eth.balance(arg2)
                            mem[_1992 + _1350 + ceil32(return_data.size) + 261] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1992 + _1350 + ceil32(return_data.size) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[_1992 + _1350 + ceil32(return_data.size) + 69 len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            require ext_call.return_data[96] == ext_call.return_data[96]
                            mem[64] = _1992 + _1350 + (2 * ceil32(return_data.size)) + 293
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 101] = _928
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 133] = _941
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 165] = _949
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 197] = eth.balance(arg2)
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 229] = eth.balance(arg2)
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1992 + _1350 + (2 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1992 + _1350 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1992 + _1350 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1992 + _1350 + ceil32(return_data.size) + 73] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_1992 + _1350 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1992 + _1350 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 73] = arg2
                        mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1992 + _1350 + (4 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1992 + _1350 + (4 * ceil32(return_data.size)) + 73] = arg2
                        mem[_1992 + _1350 + (4 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_957))
                        staticcall address(_957).checkMembership(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1992 + _1350 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1992 + _1350 + (6 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[64] = _1992 + _1350 + (6 * ceil32(return_data.size)) + 293
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 101] = _928
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 133] = _941
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 165] = _949
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 261] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1992 + _1350 + (6 * ceil32(return_data.size)) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 69 len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            require ext_call.return_data[96] == ext_call.return_data[96]
                            mem[64] = _1992 + _1350 + (7 * ceil32(return_data.size)) + 293
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 101] = _928
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 133] = _941
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 165] = _949
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1992 + _1350 + (7 * ceil32(return_data.size)) + 69
                else:
                    mem[_1992 + _1350 + 69] = 0
                    _2778 = mem[64]
                    mem[mem[64]] = _1992 + _1350 + -mem[64] + 37
                    mem[64] = _1992 + _1350 + 69
                    if sha3(mem[_2778 + 32 len mem[_2778]]) == _1983:
                        mem[_1992 + _1350 + 73] = arg2
                        mem[_1992 + _1350 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_957))
                        staticcall address(_957).checkMembership(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1992 + _1350 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1992 + _1350 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[64] = _1992 + _1350 + ceil32(return_data.size) + 293
                            mem[_1992 + _1350 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1992 + _1350 + ceil32(return_data.size) + 101] = _928
                            mem[_1992 + _1350 + ceil32(return_data.size) + 133] = _941
                            mem[_1992 + _1350 + ceil32(return_data.size) + 165] = _949
                            mem[_1992 + _1350 + ceil32(return_data.size) + 197] = eth.balance(arg2)
                            mem[_1992 + _1350 + ceil32(return_data.size) + 229] = eth.balance(arg2)
                            mem[_1992 + _1350 + ceil32(return_data.size) + 261] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1992 + _1350 + ceil32(return_data.size) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[_1992 + _1350 + ceil32(return_data.size) + 69 len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            require ext_call.return_data[96] == ext_call.return_data[96]
                            mem[64] = _1992 + _1350 + (2 * ceil32(return_data.size)) + 293
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 101] = _928
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 133] = _941
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 165] = _949
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 197] = eth.balance(arg2)
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 229] = eth.balance(arg2)
                            mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1992 + _1350 + (2 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1992 + _1350 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1992 + _1350 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1992 + _1350 + ceil32(return_data.size) + 73] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_1992 + _1350 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1992 + _1350 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 73] = arg2
                        mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1992 + _1350 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1992 + _1350 + (4 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1992 + _1350 + (4 * ceil32(return_data.size)) + 73] = arg2
                        mem[_1992 + _1350 + (4 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_957))
                        staticcall address(_957).checkMembership(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1992 + _1350 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1992 + _1350 + (6 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[64] = _1992 + _1350 + (6 * ceil32(return_data.size)) + 293
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 101] = _928
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 133] = _941
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 165] = _949
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 261] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1992 + _1350 + (6 * ceil32(return_data.size)) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[_1992 + _1350 + (6 * ceil32(return_data.size)) + 69 len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            require ext_call.return_data[96] == ext_call.return_data[96]
                            mem[64] = _1992 + _1350 + (7 * ceil32(return_data.size)) + 293
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 101] = _928
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 133] = _941
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 165] = _949
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            mem[_1992 + _1350 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1992 + _1350 + (7 * ceil32(return_data.size)) + 69
            idx = idx + 1
            continue 
        _904 = mem[64]
        mem[mem[64]] = 32
        _905 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _905:
            _1342 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1342 + 32]
            mem[t + 64] = mem[_1342 + 64]
            mem[t + 96] = mem[_1342 + 96]
            mem[t + 128] = mem[_1342 + 128]
            mem[t + 160] = mem[_1342 + 160]
            mem[t + 192] = mem[_1342 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _904 + (224 * _905) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 352
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = 0
    mem[(32 * arg1.length) + 256] = 0
    mem[(32 * arg1.length) + 288] = 0
    mem[(32 * arg1.length) + 320] = 0
    mem[var25001] = (32 * arg1.length) + 128
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 0
        mem[(32 * arg1.length) + 224] = 0
        mem[(32 * arg1.length) + 256] = 0
        mem[(32 * arg1.length) + 288] = 0
        mem[(32 * arg1.length) + 320] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        _1362 = mem[64]
        mem[64] = mem[64] + 224
        mem[_1362] = 0
        mem[_1362 + 32] = 0
        mem[_1362 + 64] = 0
        mem[_1362 + 96] = 0
        mem[_1362 + 128] = 0
        mem[_1362 + 160] = 0
        mem[_1362 + 192] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1420 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1453 = mem[_1420]
        require mem[_1420] == mem[_1420]
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1490 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1507 = mem[_1490]
        require mem[_1490] == mem[_1490]
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1566 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1575 = mem[_1566]
        require mem[_1566] == mem[_1566]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).comptroller() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1610 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1619 = mem[_1610]
        require mem[_1610] == mem[_1610 + 12 len 20]
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1646 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1647 = mem[_1646]
        require mem[_1646] <= test266151307()
        require _1646 + mem[_1646] + 31 < _1646 + return_data.size
        _1656 = mem[_1646 + mem[_1646]]
        require mem[_1646 + mem[_1646]] <= test266151307()
        require ceil32(mem[_1646 + mem[_1646]]) + 32 >= 0 and _1646 + ceil32(return_data.size) + ceil32(mem[_1646 + mem[_1646]]) + 32 <= test266151307()
        mem[64] = _1646 + ceil32(return_data.size) + ceil32(mem[_1646 + mem[_1646]]) + 32
        mem[_1646 + ceil32(return_data.size)] = _1656
        require _1647 + _1656 + 32 <= return_data.size
        s = 0
        while s < _1656:
            mem[s + _1646 + ceil32(return_data.size) + 32] = mem[s + _1646 + _1647 + 32]
            s = s + 32
            continue 
        if ceil32(_1656) <= _1656:
            _1985 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1985] = 5
            mem[_1985 + 32] = 0x637246544d000000000000000000000000000000000000000000000000000000
            _1987 = mem[64]
            s = 0
            while s < 5:
                mem[s + _1987 + 32] = mem[s + _1985 + 32]
                s = s + 32
                continue 
            mem[_1987 + 37] = 0
            _2785 = mem[64]
            mem[mem[64]] = _1987 + -mem[64] + 5
            mem[64] = _1987 + 37
            _2787 = sha3(mem[_2785 + 32 len mem[_2785]])
            _2822 = mem[_1646 + ceil32(return_data.size)]
            s = 0
            while s < _2822:
                mem[s + _1987 + 69] = mem[s + _1646 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_2822) <= _2822:
                _3511 = mem[64]
                mem[mem[64]] = _2822 + _1987 + -mem[64] + 37
                mem[64] = _2822 + _1987 + 69
                if sha3(mem[_3511 + 32 len mem[_3511]]) == _2787:
                    mem[_2822 + _1987 + 73] = arg2
                    mem[_2822 + _1987 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_1619))
                    staticcall address(_1619).checkMembership(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2822 + _1987 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2822 + _1987 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        mem[64] = _2822 + _1987 + ceil32(return_data.size) + 293
                        mem[_2822 + _1987 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2822 + _1987 + ceil32(return_data.size) + 101] = _1453
                        mem[_2822 + _1987 + ceil32(return_data.size) + 133] = _1507
                        mem[_2822 + _1987 + ceil32(return_data.size) + 165] = _1575
                        mem[_2822 + _1987 + ceil32(return_data.size) + 197] = eth.balance(arg2)
                        mem[_2822 + _1987 + ceil32(return_data.size) + 229] = eth.balance(arg2)
                        mem[_2822 + _1987 + ceil32(return_data.size) + 261] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2822 + _1987 + ceil32(return_data.size) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_2822 + _1987 + ceil32(return_data.size) + 69 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        mem[64] = _2822 + _1987 + (2 * ceil32(return_data.size)) + 293
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 101] = _1453
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 133] = _1507
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 165] = _1575
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 197] = eth.balance(arg2)
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 229] = eth.balance(arg2)
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2822 + _1987 + (2 * ceil32(return_data.size)) + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_2822 + _1987 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2822 + _1987 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_2822 + _1987 + ceil32(return_data.size) + 73] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[_2822 + _1987 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2822 + _1987 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 73] = arg2
                    mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2822 + _1987 + (4 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_2822 + _1987 + (4 * ceil32(return_data.size)) + 73] = arg2
                    mem[_2822 + _1987 + (4 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_1619))
                    staticcall address(_1619).checkMembership(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2822 + _1987 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2822 + _1987 + (6 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        mem[64] = _2822 + _1987 + (6 * ceil32(return_data.size)) + 293
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 101] = _1453
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 133] = _1507
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 165] = _1575
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 261] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2822 + _1987 + (6 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 69 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        mem[64] = _2822 + _1987 + (7 * ceil32(return_data.size)) + 293
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 101] = _1453
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 133] = _1507
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 165] = _1575
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2822 + _1987 + (7 * ceil32(return_data.size)) + 69
            else:
                mem[_2822 + _1987 + 69] = 0
                _3514 = mem[64]
                mem[mem[64]] = _2822 + _1987 + -mem[64] + 37
                mem[64] = _2822 + _1987 + 69
                if sha3(mem[_3514 + 32 len mem[_3514]]) == _2787:
                    mem[_2822 + _1987 + 73] = arg2
                    mem[_2822 + _1987 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_1619))
                    staticcall address(_1619).checkMembership(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2822 + _1987 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2822 + _1987 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        mem[64] = _2822 + _1987 + ceil32(return_data.size) + 293
                        mem[_2822 + _1987 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2822 + _1987 + ceil32(return_data.size) + 101] = _1453
                        mem[_2822 + _1987 + ceil32(return_data.size) + 133] = _1507
                        mem[_2822 + _1987 + ceil32(return_data.size) + 165] = _1575
                        mem[_2822 + _1987 + ceil32(return_data.size) + 197] = eth.balance(arg2)
                        mem[_2822 + _1987 + ceil32(return_data.size) + 229] = eth.balance(arg2)
                        mem[_2822 + _1987 + ceil32(return_data.size) + 261] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2822 + _1987 + ceil32(return_data.size) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_2822 + _1987 + ceil32(return_data.size) + 69 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        mem[64] = _2822 + _1987 + (2 * ceil32(return_data.size)) + 293
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 101] = _1453
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 133] = _1507
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 165] = _1575
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 197] = eth.balance(arg2)
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 229] = eth.balance(arg2)
                        mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2822 + _1987 + (2 * ceil32(return_data.size)) + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_2822 + _1987 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2822 + _1987 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_2822 + _1987 + ceil32(return_data.size) + 73] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[_2822 + _1987 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2822 + _1987 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 73] = arg2
                    mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2822 + _1987 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2822 + _1987 + (4 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_2822 + _1987 + (4 * ceil32(return_data.size)) + 73] = arg2
                    mem[_2822 + _1987 + (4 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_1619))
                    staticcall address(_1619).checkMembership(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2822 + _1987 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2822 + _1987 + (6 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        mem[64] = _2822 + _1987 + (6 * ceil32(return_data.size)) + 293
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 101] = _1453
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 133] = _1507
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 165] = _1575
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 261] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2822 + _1987 + (6 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_2822 + _1987 + (6 * ceil32(return_data.size)) + 69 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        mem[64] = _2822 + _1987 + (7 * ceil32(return_data.size)) + 293
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 101] = _1453
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 133] = _1507
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 165] = _1575
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        mem[_2822 + _1987 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2822 + _1987 + (7 * ceil32(return_data.size)) + 69
        else:
            mem[_1656 + _1646 + ceil32(return_data.size) + 32] = 0
            _1986 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1986] = 5
            mem[_1986 + 32] = 0x637246544d000000000000000000000000000000000000000000000000000000
            _1988 = mem[64]
            s = 0
            while s < 5:
                mem[s + _1988 + 32] = mem[s + _1986 + 32]
                s = s + 32
                continue 
            mem[_1988 + 37] = 0
            _2793 = mem[64]
            mem[mem[64]] = _1988 + -mem[64] + 5
            mem[64] = _1988 + 37
            _2795 = sha3(mem[_2793 + 32 len mem[_2793]])
            _2824 = mem[_1646 + ceil32(return_data.size)]
            s = 0
            while s < _2824:
                mem[s + _1988 + 69] = mem[s + _1646 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_2824) <= _2824:
                _3523 = mem[64]
                mem[mem[64]] = _2824 + _1988 + -mem[64] + 37
                mem[64] = _2824 + _1988 + 69
                if sha3(mem[_3523 + 32 len mem[_3523]]) == _2795:
                    mem[_2824 + _1988 + 73] = arg2
                    mem[_2824 + _1988 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_1619))
                    staticcall address(_1619).checkMembership(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2824 + _1988 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2824 + _1988 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        mem[64] = _2824 + _1988 + ceil32(return_data.size) + 293
                        mem[_2824 + _1988 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2824 + _1988 + ceil32(return_data.size) + 101] = _1453
                        mem[_2824 + _1988 + ceil32(return_data.size) + 133] = _1507
                        mem[_2824 + _1988 + ceil32(return_data.size) + 165] = _1575
                        mem[_2824 + _1988 + ceil32(return_data.size) + 197] = eth.balance(arg2)
                        mem[_2824 + _1988 + ceil32(return_data.size) + 229] = eth.balance(arg2)
                        mem[_2824 + _1988 + ceil32(return_data.size) + 261] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2824 + _1988 + ceil32(return_data.size) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_2824 + _1988 + ceil32(return_data.size) + 69 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        mem[64] = _2824 + _1988 + (2 * ceil32(return_data.size)) + 293
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 101] = _1453
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 133] = _1507
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 165] = _1575
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 197] = eth.balance(arg2)
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 229] = eth.balance(arg2)
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2824 + _1988 + (2 * ceil32(return_data.size)) + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_2824 + _1988 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2824 + _1988 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_2824 + _1988 + ceil32(return_data.size) + 73] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[_2824 + _1988 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2824 + _1988 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 73] = arg2
                    mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2824 + _1988 + (4 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_2824 + _1988 + (4 * ceil32(return_data.size)) + 73] = arg2
                    mem[_2824 + _1988 + (4 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_1619))
                    staticcall address(_1619).checkMembership(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2824 + _1988 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2824 + _1988 + (6 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        mem[64] = _2824 + _1988 + (6 * ceil32(return_data.size)) + 293
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 101] = _1453
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 133] = _1507
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 165] = _1575
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 261] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2824 + _1988 + (6 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 69 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        mem[64] = _2824 + _1988 + (7 * ceil32(return_data.size)) + 293
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 101] = _1453
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 133] = _1507
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 165] = _1575
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2824 + _1988 + (7 * ceil32(return_data.size)) + 69
            else:
                mem[_2824 + _1988 + 69] = 0
                _3526 = mem[64]
                mem[mem[64]] = _2824 + _1988 + -mem[64] + 37
                mem[64] = _2824 + _1988 + 69
                if sha3(mem[_3526 + 32 len mem[_3526]]) == _2795:
                    mem[_2824 + _1988 + 73] = arg2
                    mem[_2824 + _1988 + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_1619))
                    staticcall address(_1619).checkMembership(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2824 + _1988 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2824 + _1988 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        mem[64] = _2824 + _1988 + ceil32(return_data.size) + 293
                        mem[_2824 + _1988 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2824 + _1988 + ceil32(return_data.size) + 101] = _1453
                        mem[_2824 + _1988 + ceil32(return_data.size) + 133] = _1507
                        mem[_2824 + _1988 + ceil32(return_data.size) + 165] = _1575
                        mem[_2824 + _1988 + ceil32(return_data.size) + 197] = eth.balance(arg2)
                        mem[_2824 + _1988 + ceil32(return_data.size) + 229] = eth.balance(arg2)
                        mem[_2824 + _1988 + ceil32(return_data.size) + 261] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2824 + _1988 + ceil32(return_data.size) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_2824 + _1988 + ceil32(return_data.size) + 69 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        mem[64] = _2824 + _1988 + (2 * ceil32(return_data.size)) + 293
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 101] = _1453
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 133] = _1507
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 165] = _1575
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 197] = eth.balance(arg2)
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 229] = eth.balance(arg2)
                        mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2824 + _1988 + (2 * ceil32(return_data.size)) + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_2824 + _1988 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2824 + _1988 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_2824 + _1988 + ceil32(return_data.size) + 73] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[_2824 + _1988 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2824 + _1988 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 73] = arg2
                    mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2824 + _1988 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2824 + _1988 + (4 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_2824 + _1988 + (4 * ceil32(return_data.size)) + 73] = arg2
                    mem[_2824 + _1988 + (4 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(_1619))
                    staticcall address(_1619).checkMembership(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_2824 + _1988 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2824 + _1988 + (6 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        mem[64] = _2824 + _1988 + (6 * ceil32(return_data.size)) + 293
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 101] = _1453
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 133] = _1507
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 165] = _1575
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 261] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2824 + _1988 + (6 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_2824 + _1988 + (6 * ceil32(return_data.size)) + 69 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        mem[64] = _2824 + _1988 + (7 * ceil32(return_data.size)) + 293
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 101] = _1453
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 133] = _1507
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 165] = _1575
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        mem[_2824 + _1988 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[32]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2824 + _1988 + (7 * ceil32(return_data.size)) + 69
        idx = idx + 1
        continue 
    _1346 = mem[64]
    mem[mem[64]] = 32
    _1351 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _1351:
        _1965 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1965 + 32]
        mem[t + 64] = mem[_1965 + 64]
        mem[t + 96] = mem[_1965 + 96]
        mem[t + 128] = mem[_1965 + 128]
        mem[t + 160] = mem[_1965 + 160]
        mem[t + 192] = mem[_1965 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _1346 + (224 * _1351) + -mem[64] + 64
}

function cTokenMetadataAll(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _3322 = mem[64]
            mem[64] = mem[64] + 544
            mem[_3322] = 0
            mem[_3322 + 32] = 0
            mem[_3322 + 64] = 0
            mem[_3322 + 96] = 0
            mem[_3322 + 128] = 0
            mem[_3322 + 160] = 0
            mem[_3322 + 192] = 0
            mem[_3322 + 224] = 0
            mem[_3322 + 256] = 0
            mem[_3322 + 288] = 0
            mem[_3322 + 320] = 0
            mem[_3322 + 352] = 0
            mem[_3322 + 384] = 0
            mem[_3322 + 416] = 0
            mem[_3322 + 448] = 0
            mem[_3322 + 480] = 0
            mem[_3322 + 512] = 0
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).exchangeRateCurrent() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3328 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3332 = mem[_3328]
            require mem[_3328] == mem[_3328]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).comptroller() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3342 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3342] == mem[_3342 + 12 len 20]
            require ext_code.size(mem[_3342 + 12 len 20])
            staticcall mem[_3342 + 12 len 20].markets(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3363 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _3366 = mem[_3363]
            require mem[_3363] == bool(mem[_3363])
            _3373 = mem[_3363 + 32]
            require mem[_3363 + 32] == mem[_3363 + 32]
            _3377 = mem[_3363 + 64]
            require mem[_3363 + 64] == mem[_3363 + 64]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3386 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3388 = mem[_3386]
            require mem[_3386] <= test266151307()
            require _3386 + mem[_3386] + 31 < _3386 + return_data.size
            _3393 = mem[_3386 + mem[_3386]]
            require mem[_3386 + mem[_3386]] <= test266151307()
            require ceil32(mem[_3386 + mem[_3386]]) + 32 >= 0 and _3386 + ceil32(return_data.size) + ceil32(mem[_3386 + mem[_3386]]) + 32 <= test266151307()
            mem[64] = _3386 + ceil32(return_data.size) + ceil32(mem[_3386 + mem[_3386]]) + 32
            mem[_3386 + ceil32(return_data.size)] = _3393
            require _3388 + _3393 + 32 <= return_data.size
            s = 0
            while s < _3393:
                mem[s + _3386 + ceil32(return_data.size) + 32] = mem[s + _3386 + _3388 + 32]
                s = s + 32
                continue 
            if ceil32(_3393) <= _3393:
                _4808 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4808] = 5
                mem[_4808 + 32] = 0x637246544d000000000000000000000000000000000000000000000000000000
                _4812 = mem[64]
                s = 0
                while s < 5:
                    mem[s + _4812 + 32] = mem[s + _4808 + 32]
                    s = s + 32
                    continue 
                mem[_4812 + 37] = 0
                _7583 = mem[64]
                mem[mem[64]] = _4812 + -mem[64] + 5
                mem[64] = _4812 + 37
                _7585 = sha3(mem[_7583 + 32 len mem[_7583]])
                _7597 = mem[_3386 + ceil32(return_data.size)]
                s = 0
                while s < _7597:
                    mem[s + _4812 + 69] = mem[s + _3386 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_7597) <= _7597:
                    _9731 = mem[64]
                    mem[mem[64]] = _7597 + _4812 + -mem[64] + 37
                    mem[64] = _7597 + _4812 + 69
                    if sha3(mem[_9731 + 32 len mem[_9731]]) == _7585:
                        if _3377 != 1:
                            mem[64] = _7597 + _4812 + 613
                            mem[_7597 + _4812 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7597 + _4812 + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + ceil32(return_data.size) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 325] = ext_call.return_data[0]
                            mem[_7597 + _4812 + 357] = 0
                            mem[_7597 + _4812 + 389] = bool(_3366)
                            mem[_7597 + _4812 + 421] = _3373
                            mem[_7597 + _4812 + 453] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7597 + _4812 + (11 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + 485] = ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + 517] = 18
                            mem[_7597 + _4812 + 549] = _3377
                            mem[_7597 + _4812 + 581] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7597 + _4812 + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7597 + _4812 + ceil32(return_data.size) + 69
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7597 + _4812 + (2 * ceil32(return_data.size)) + 613
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 389] = bool(_3366)
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 421] = _3373
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 453] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7597 + _4812 + (13 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 517] = 18
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 549] = _3377
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7597 + _4812 + (2 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7597 + _4812 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7597 + _4812 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7597 + _4812 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7597 + _4812 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).decimals() with:
                                gas gas_remaining wei
                        mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7597 + _4812 + (4 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if _3377 != 1:
                            mem[64] = _7597 + _4812 + (4 * ceil32(return_data.size)) + 613
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 357] = 0
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 389] = bool(_3366)
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 421] = _3373
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7597 + _4812 + (14 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 549] = _3377
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 581] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7597 + _4812 + (4 * ceil32(return_data.size)) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7597 + _4812 + (6 * ceil32(return_data.size)) + 69
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (6 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7597 + _4812 + (7 * ceil32(return_data.size)) + 613
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (14 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 389] = bool(_3366)
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 421] = _3373
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (15 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7597 + _4812 + (16 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 549] = _3377
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7597 + _4812 + (7 * ceil32(return_data.size)) + 69
                else:
                    mem[_7597 + _4812 + 69] = 0
                    _9734 = mem[64]
                    mem[mem[64]] = _7597 + _4812 + -mem[64] + 37
                    mem[64] = _7597 + _4812 + 69
                    if sha3(mem[_9734 + 32 len mem[_9734]]) == _7585:
                        if _3377 != 1:
                            mem[64] = _7597 + _4812 + 613
                            mem[_7597 + _4812 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7597 + _4812 + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + ceil32(return_data.size) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + 325] = ext_call.return_data[0]
                            mem[_7597 + _4812 + 357] = 0
                            mem[_7597 + _4812 + 389] = bool(_3366)
                            mem[_7597 + _4812 + 421] = _3373
                            mem[_7597 + _4812 + 453] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7597 + _4812 + (11 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + 485] = ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + 517] = 18
                            mem[_7597 + _4812 + 549] = _3377
                            mem[_7597 + _4812 + 581] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7597 + _4812 + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7597 + _4812 + ceil32(return_data.size) + 69
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7597 + _4812 + (2 * ceil32(return_data.size)) + 613
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 389] = bool(_3366)
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 421] = _3373
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 453] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7597 + _4812 + (13 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 517] = 18
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 549] = _3377
                            mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7597 + _4812 + (2 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7597 + _4812 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7597 + _4812 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7597 + _4812 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7597 + _4812 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).decimals() with:
                                gas gas_remaining wei
                        mem[_7597 + _4812 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7597 + _4812 + (4 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if _3377 != 1:
                            mem[64] = _7597 + _4812 + (4 * ceil32(return_data.size)) + 613
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 357] = 0
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 389] = bool(_3366)
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 421] = _3373
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7597 + _4812 + (14 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 549] = _3377
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 581] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7597 + _4812 + (4 * ceil32(return_data.size)) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7597 + _4812 + (6 * ceil32(return_data.size)) + 69
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (6 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7597 + _4812 + (7 * ceil32(return_data.size)) + 613
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (14 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 389] = bool(_3366)
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 421] = _3373
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7597 + _4812 + (15 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7597 + _4812 + (16 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 549] = _3377
                            mem[_7597 + _4812 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7597 + _4812 + (7 * ceil32(return_data.size)) + 69
            else:
                mem[_3393 + _3386 + ceil32(return_data.size) + 32] = 0
                _4809 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4809] = 5
                mem[_4809 + 32] = 0x637246544d000000000000000000000000000000000000000000000000000000
                _4813 = mem[64]
                s = 0
                while s < 5:
                    mem[s + _4813 + 32] = mem[s + _4809 + 32]
                    s = s + 32
                    continue 
                mem[_4813 + 37] = 0
                _7591 = mem[64]
                mem[mem[64]] = _4813 + -mem[64] + 5
                mem[64] = _4813 + 37
                _7593 = sha3(mem[_7591 + 32 len mem[_7591]])
                _7599 = mem[_3386 + ceil32(return_data.size)]
                s = 0
                while s < _7599:
                    mem[s + _4813 + 69] = mem[s + _3386 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_7599) <= _7599:
                    _9743 = mem[64]
                    mem[mem[64]] = _7599 + _4813 + -mem[64] + 37
                    mem[64] = _7599 + _4813 + 69
                    if sha3(mem[_9743 + 32 len mem[_9743]]) == _7593:
                        if _3377 != 1:
                            mem[64] = _7599 + _4813 + 613
                            mem[_7599 + _4813 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7599 + _4813 + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + ceil32(return_data.size) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 325] = ext_call.return_data[0]
                            mem[_7599 + _4813 + 357] = 0
                            mem[_7599 + _4813 + 389] = bool(_3366)
                            mem[_7599 + _4813 + 421] = _3373
                            mem[_7599 + _4813 + 453] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7599 + _4813 + (11 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + 485] = ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + 517] = 18
                            mem[_7599 + _4813 + 549] = _3377
                            mem[_7599 + _4813 + 581] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7599 + _4813 + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7599 + _4813 + ceil32(return_data.size) + 69
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7599 + _4813 + (2 * ceil32(return_data.size)) + 613
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 389] = bool(_3366)
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 421] = _3373
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 453] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7599 + _4813 + (13 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 517] = 18
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 549] = _3377
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7599 + _4813 + (2 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7599 + _4813 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7599 + _4813 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7599 + _4813 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7599 + _4813 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).decimals() with:
                                gas gas_remaining wei
                        mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7599 + _4813 + (4 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if _3377 != 1:
                            mem[64] = _7599 + _4813 + (4 * ceil32(return_data.size)) + 613
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 357] = 0
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 389] = bool(_3366)
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 421] = _3373
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7599 + _4813 + (14 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 549] = _3377
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 581] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7599 + _4813 + (4 * ceil32(return_data.size)) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7599 + _4813 + (6 * ceil32(return_data.size)) + 69
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (6 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7599 + _4813 + (7 * ceil32(return_data.size)) + 613
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (14 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 389] = bool(_3366)
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 421] = _3373
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (15 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7599 + _4813 + (16 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 549] = _3377
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7599 + _4813 + (7 * ceil32(return_data.size)) + 69
                else:
                    mem[_7599 + _4813 + 69] = 0
                    _9746 = mem[64]
                    mem[mem[64]] = _7599 + _4813 + -mem[64] + 37
                    mem[64] = _7599 + _4813 + 69
                    if sha3(mem[_9746 + 32 len mem[_9746]]) == _7593:
                        if _3377 != 1:
                            mem[64] = _7599 + _4813 + 613
                            mem[_7599 + _4813 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7599 + _4813 + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + ceil32(return_data.size) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + 325] = ext_call.return_data[0]
                            mem[_7599 + _4813 + 357] = 0
                            mem[_7599 + _4813 + 389] = bool(_3366)
                            mem[_7599 + _4813 + 421] = _3373
                            mem[_7599 + _4813 + 453] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7599 + _4813 + (11 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + 485] = ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + 517] = 18
                            mem[_7599 + _4813 + 549] = _3377
                            mem[_7599 + _4813 + 581] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7599 + _4813 + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7599 + _4813 + ceil32(return_data.size) + 69
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7599 + _4813 + (2 * ceil32(return_data.size)) + 613
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 389] = bool(_3366)
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 421] = _3373
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 453] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7599 + _4813 + (13 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 517] = 18
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 549] = _3377
                            mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7599 + _4813 + (2 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7599 + _4813 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7599 + _4813 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7599 + _4813 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7599 + _4813 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).decimals() with:
                                gas gas_remaining wei
                        mem[_7599 + _4813 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7599 + _4813 + (4 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if _3377 != 1:
                            mem[64] = _7599 + _4813 + (4 * ceil32(return_data.size)) + 613
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 357] = 0
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 389] = bool(_3366)
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 421] = _3373
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7599 + _4813 + (14 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 549] = _3377
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 581] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7599 + _4813 + (4 * ceil32(return_data.size)) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7599 + _4813 + (6 * ceil32(return_data.size)) + 69
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (6 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7599 + _4813 + (7 * ceil32(return_data.size)) + 613
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 101] = _3332
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (14 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 389] = bool(_3366)
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 421] = _3373
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7599 + _4813 + (15 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7599 + _4813 + (16 * ceil32(return_data.size)) + 613
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 549] = _3377
                            mem[_7599 + _4813 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7599 + _4813 + (7 * ceil32(return_data.size)) + 69
            idx = idx + 1
            continue 
        _3314 = mem[64]
        mem[mem[64]] = 32
        _3315 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _3315:
            _4800 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_4800 + 32]
            mem[t + 64] = mem[_4800 + 64]
            mem[t + 96] = mem[_4800 + 96]
            mem[t + 128] = mem[_4800 + 128]
            mem[t + 160] = mem[_4800 + 160]
            mem[t + 192] = mem[_4800 + 192]
            mem[t + 224] = mem[_4800 + 224]
            mem[t + 256] = mem[_4800 + 256]
            mem[t + 288] = mem[_4800 + 288]
            mem[t + 320] = bool(mem[_4800 + 320])
            mem[t + 352] = mem[_4800 + 352]
            mem[t + 384] = mem[_4800 + 396 len 20]
            mem[t + 416] = mem[_4800 + 416]
            mem[t + 448] = mem[_4800 + 448]
            mem[t + 480] = mem[_4800 + 480]
            mem[t + 512] = mem[_4800 + 512]
            idx = idx + 1
            s = s + 32
            t = t + 544
            continue 
        return memory
          from mem[64]
           len _3314 + (544 * _3315) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 672
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = 0
    mem[(32 * arg1.length) + 256] = 0
    mem[(32 * arg1.length) + 288] = 0
    mem[(32 * arg1.length) + 320] = 0
    mem[(32 * arg1.length) + 352] = 0
    mem[(32 * arg1.length) + 384] = 0
    mem[(32 * arg1.length) + 416] = 0
    mem[(32 * arg1.length) + 448] = 0
    mem[(32 * arg1.length) + 480] = 0
    mem[(32 * arg1.length) + 512] = 0
    mem[(32 * arg1.length) + 544] = 0
    mem[(32 * arg1.length) + 576] = 0
    mem[(32 * arg1.length) + 608] = 0
    mem[(32 * arg1.length) + 640] = 0
    mem[var16001] = (32 * arg1.length) + 128
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 544
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 0
        mem[(32 * arg1.length) + 224] = 0
        mem[(32 * arg1.length) + 256] = 0
        mem[(32 * arg1.length) + 288] = 0
        mem[(32 * arg1.length) + 320] = 0
        mem[(32 * arg1.length) + 352] = 0
        mem[(32 * arg1.length) + 384] = 0
        mem[(32 * arg1.length) + 416] = 0
        mem[(32 * arg1.length) + 448] = 0
        mem[(32 * arg1.length) + 480] = 0
        mem[(32 * arg1.length) + 512] = 0
        mem[(32 * arg1.length) + 544] = 0
        mem[(32 * arg1.length) + 576] = 0
        mem[(32 * arg1.length) + 608] = 0
        mem[(32 * arg1.length) + 640] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        _7631 = mem[64]
        mem[64] = mem[64] + 544
        mem[_7631] = 0
        mem[_7631 + 32] = 0
        mem[_7631 + 64] = 0
        mem[_7631 + 96] = 0
        mem[_7631 + 128] = 0
        mem[_7631 + 160] = 0
        mem[_7631 + 192] = 0
        mem[_7631 + 224] = 0
        mem[_7631 + 256] = 0
        mem[_7631 + 288] = 0
        mem[_7631 + 320] = 0
        mem[_7631 + 352] = 0
        mem[_7631 + 384] = 0
        mem[_7631 + 416] = 0
        mem[_7631 + 448] = 0
        mem[_7631 + 480] = 0
        mem[_7631 + 512] = 0
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).exchangeRateCurrent() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7651 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7716 = mem[_7651]
        require mem[_7651] == mem[_7651]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).comptroller() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7746 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7746] == mem[_7746 + 12 len 20]
        require ext_code.size(mem[_7746 + 12 len 20])
        staticcall mem[_7746 + 12 len 20].markets(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7956 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _7997 = mem[_7956]
        require mem[_7956] == bool(mem[_7956])
        _8096 = mem[_7956 + 32]
        require mem[_7956 + 32] == mem[_7956 + 32]
        _8178 = mem[_7956 + 64]
        require mem[_7956 + 64] == mem[_7956 + 64]
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _8264 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _8281 = mem[_8264]
        require mem[_8264] <= test266151307()
        require _8264 + mem[_8264] + 31 < _8264 + return_data.size
        _8346 = mem[_8264 + mem[_8264]]
        require mem[_8264 + mem[_8264]] <= test266151307()
        require ceil32(mem[_8264 + mem[_8264]]) + 32 >= 0 and _8264 + ceil32(return_data.size) + ceil32(mem[_8264 + mem[_8264]]) + 32 <= test266151307()
        mem[64] = _8264 + ceil32(return_data.size) + ceil32(mem[_8264 + mem[_8264]]) + 32
        mem[_8264 + ceil32(return_data.size)] = _8346
        require _8281 + _8346 + 32 <= return_data.size
        s = 0
        while s < _8346:
            mem[s + _8264 + ceil32(return_data.size) + 32] = mem[s + _8264 + _8281 + 32]
            s = s + 32
            continue 
        if ceil32(_8346) <= _8346:
            _9749 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9749] = 5
            mem[_9749 + 32] = 0x637246544d000000000000000000000000000000000000000000000000000000
            _9751 = mem[64]
            s = 0
            while s < 5:
                mem[s + _9751 + 32] = mem[s + _9749 + 32]
                s = s + 32
                continue 
            mem[_9751 + 37] = 0
            _12451 = mem[64]
            mem[mem[64]] = _9751 + -mem[64] + 5
            mem[64] = _9751 + 37
            _12453 = sha3(mem[_12451 + 32 len mem[_12451]])
            _12464 = mem[_8264 + ceil32(return_data.size)]
            s = 0
            while s < _12464:
                mem[s + _9751 + 69] = mem[s + _8264 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_12464) <= _12464:
                _13817 = mem[64]
                mem[mem[64]] = _12464 + _9751 + -mem[64] + 37
                mem[64] = _12464 + _9751 + 69
                if sha3(mem[_13817 + 32 len mem[_13817]]) == _12453:
                    if _8178 != 1:
                        mem[64] = _12464 + _9751 + 613
                        mem[_12464 + _9751 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12464 + _9751 + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + ceil32(return_data.size) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 325] = ext_call.return_data[0]
                        mem[_12464 + _9751 + 357] = 0
                        mem[_12464 + _9751 + 389] = bool(_7997)
                        mem[_12464 + _9751 + 421] = _8096
                        mem[_12464 + _9751 + 453] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12464 + _9751 + (11 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + 485] = ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + 517] = 18
                        mem[_12464 + _9751 + 549] = _8178
                        mem[_12464 + _9751 + 581] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12464 + _9751 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12464 + _9751 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12464 + _9751 + (2 * ceil32(return_data.size)) + 613
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 389] = bool(_7997)
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 421] = _8096
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 453] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12464 + _9751 + (13 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 517] = 18
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 549] = _8178
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12464 + _9751 + (2 * ceil32(return_data.size)) + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12464 + _9751 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12464 + _9751 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12464 + _9751 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12464 + _9751 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).decimals() with:
                            gas gas_remaining wei
                    mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12464 + _9751 + (4 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if _8178 != 1:
                        mem[64] = _12464 + _9751 + (4 * ceil32(return_data.size)) + 613
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 357] = 0
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 389] = bool(_7997)
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 421] = _8096
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12464 + _9751 + (14 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 549] = _8178
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 581] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12464 + _9751 + (4 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12464 + _9751 + (6 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (6 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12464 + _9751 + (7 * ceil32(return_data.size)) + 613
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (14 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 389] = bool(_7997)
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 421] = _8096
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (15 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12464 + _9751 + (16 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 549] = _8178
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12464 + _9751 + (7 * ceil32(return_data.size)) + 69
            else:
                mem[_12464 + _9751 + 69] = 0
                _13820 = mem[64]
                mem[mem[64]] = _12464 + _9751 + -mem[64] + 37
                mem[64] = _12464 + _9751 + 69
                if sha3(mem[_13820 + 32 len mem[_13820]]) == _12453:
                    if _8178 != 1:
                        mem[64] = _12464 + _9751 + 613
                        mem[_12464 + _9751 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12464 + _9751 + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + ceil32(return_data.size) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + 325] = ext_call.return_data[0]
                        mem[_12464 + _9751 + 357] = 0
                        mem[_12464 + _9751 + 389] = bool(_7997)
                        mem[_12464 + _9751 + 421] = _8096
                        mem[_12464 + _9751 + 453] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12464 + _9751 + (11 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + 485] = ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + 517] = 18
                        mem[_12464 + _9751 + 549] = _8178
                        mem[_12464 + _9751 + 581] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12464 + _9751 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12464 + _9751 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12464 + _9751 + (2 * ceil32(return_data.size)) + 613
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 389] = bool(_7997)
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 421] = _8096
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 453] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12464 + _9751 + (13 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 517] = 18
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 549] = _8178
                        mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12464 + _9751 + (2 * ceil32(return_data.size)) + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12464 + _9751 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12464 + _9751 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12464 + _9751 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12464 + _9751 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).decimals() with:
                            gas gas_remaining wei
                    mem[_12464 + _9751 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12464 + _9751 + (4 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if _8178 != 1:
                        mem[64] = _12464 + _9751 + (4 * ceil32(return_data.size)) + 613
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 357] = 0
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 389] = bool(_7997)
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 421] = _8096
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12464 + _9751 + (14 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 549] = _8178
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 581] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12464 + _9751 + (4 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12464 + _9751 + (6 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (6 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12464 + _9751 + (7 * ceil32(return_data.size)) + 613
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (14 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 389] = bool(_7997)
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 421] = _8096
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12464 + _9751 + (15 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12464 + _9751 + (16 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 549] = _8178
                        mem[_12464 + _9751 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12464 + _9751 + (7 * ceil32(return_data.size)) + 69
        else:
            mem[_8346 + _8264 + ceil32(return_data.size) + 32] = 0
            _9750 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9750] = 5
            mem[_9750 + 32] = 0x637246544d000000000000000000000000000000000000000000000000000000
            _9752 = mem[64]
            s = 0
            while s < 5:
                mem[s + _9752 + 32] = mem[s + _9750 + 32]
                s = s + 32
                continue 
            mem[_9752 + 37] = 0
            _12459 = mem[64]
            mem[mem[64]] = _9752 + -mem[64] + 5
            mem[64] = _9752 + 37
            _12461 = sha3(mem[_12459 + 32 len mem[_12459]])
            _12466 = mem[_8264 + ceil32(return_data.size)]
            s = 0
            while s < _12466:
                mem[s + _9752 + 69] = mem[s + _8264 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_12466) <= _12466:
                _13829 = mem[64]
                mem[mem[64]] = _12466 + _9752 + -mem[64] + 37
                mem[64] = _12466 + _9752 + 69
                if sha3(mem[_13829 + 32 len mem[_13829]]) == _12461:
                    if _8178 != 1:
                        mem[64] = _12466 + _9752 + 613
                        mem[_12466 + _9752 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12466 + _9752 + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + ceil32(return_data.size) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 325] = ext_call.return_data[0]
                        mem[_12466 + _9752 + 357] = 0
                        mem[_12466 + _9752 + 389] = bool(_7997)
                        mem[_12466 + _9752 + 421] = _8096
                        mem[_12466 + _9752 + 453] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12466 + _9752 + (11 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + 485] = ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + 517] = 18
                        mem[_12466 + _9752 + 549] = _8178
                        mem[_12466 + _9752 + 581] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12466 + _9752 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12466 + _9752 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12466 + _9752 + (2 * ceil32(return_data.size)) + 613
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 389] = bool(_7997)
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 421] = _8096
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 453] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12466 + _9752 + (13 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 517] = 18
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 549] = _8178
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12466 + _9752 + (2 * ceil32(return_data.size)) + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12466 + _9752 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12466 + _9752 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12466 + _9752 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12466 + _9752 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).decimals() with:
                            gas gas_remaining wei
                    mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12466 + _9752 + (4 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if _8178 != 1:
                        mem[64] = _12466 + _9752 + (4 * ceil32(return_data.size)) + 613
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 357] = 0
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 389] = bool(_7997)
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 421] = _8096
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12466 + _9752 + (14 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 549] = _8178
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 581] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12466 + _9752 + (4 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12466 + _9752 + (6 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (6 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12466 + _9752 + (7 * ceil32(return_data.size)) + 613
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (14 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 389] = bool(_7997)
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 421] = _8096
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (15 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12466 + _9752 + (16 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 549] = _8178
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12466 + _9752 + (7 * ceil32(return_data.size)) + 69
            else:
                mem[_12466 + _9752 + 69] = 0
                _13832 = mem[64]
                mem[mem[64]] = _12466 + _9752 + -mem[64] + 37
                mem[64] = _12466 + _9752 + 69
                if sha3(mem[_13832 + 32 len mem[_13832]]) == _12461:
                    if _8178 != 1:
                        mem[64] = _12466 + _9752 + 613
                        mem[_12466 + _9752 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12466 + _9752 + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + ceil32(return_data.size) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + 325] = ext_call.return_data[0]
                        mem[_12466 + _9752 + 357] = 0
                        mem[_12466 + _9752 + 389] = bool(_7997)
                        mem[_12466 + _9752 + 421] = _8096
                        mem[_12466 + _9752 + 453] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12466 + _9752 + (11 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + 485] = ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + 517] = 18
                        mem[_12466 + _9752 + 549] = _8178
                        mem[_12466 + _9752 + 581] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12466 + _9752 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12466 + _9752 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12466 + _9752 + (2 * ceil32(return_data.size)) + 613
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 389] = bool(_7997)
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 421] = _8096
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 453] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12466 + _9752 + (13 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 517] = 18
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 549] = _8178
                        mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12466 + _9752 + (2 * ceil32(return_data.size)) + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12466 + _9752 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12466 + _9752 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12466 + _9752 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12466 + _9752 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).decimals() with:
                            gas gas_remaining wei
                    mem[_12466 + _9752 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12466 + _9752 + (4 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if _8178 != 1:
                        mem[64] = _12466 + _9752 + (4 * ceil32(return_data.size)) + 613
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (6 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 357] = 0
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 389] = bool(_7997)
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 421] = _8096
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12466 + _9752 + (14 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 549] = _8178
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 581] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12466 + _9752 + (4 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12466 + _9752 + (6 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalCollateralTokens() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (6 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12466 + _9752 + (7 * ceil32(return_data.size)) + 613
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 101] = _7716
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (8 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (10 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (11 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (12 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (13 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (14 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 357] = ext_call.return_data[0]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 389] = bool(_7997)
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 421] = _8096
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 453] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12466 + _9752 + (15 * ceil32(return_data.size)) + 613] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12466 + _9752 + (16 * ceil32(return_data.size)) + 613
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 485] = ext_call.return_data[31 len 1]
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 517] = uint8(ext_call.return_data[0])
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 549] = _8178
                        mem[_12466 + _9752 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12466 + _9752 + (7 * ceil32(return_data.size)) + 69
        idx = idx + 1
        continue 
    _7578 = mem[64]
    mem[mem[64]] = 32
    _7595 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _7595:
        _9721 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_9721 + 32]
        mem[t + 64] = mem[_9721 + 64]
        mem[t + 96] = mem[_9721 + 96]
        mem[t + 128] = mem[_9721 + 128]
        mem[t + 160] = mem[_9721 + 160]
        mem[t + 192] = mem[_9721 + 192]
        mem[t + 224] = mem[_9721 + 224]
        mem[t + 256] = mem[_9721 + 256]
        mem[t + 288] = mem[_9721 + 288]
        mem[t + 320] = bool(mem[_9721 + 320])
        mem[t + 352] = mem[_9721 + 352]
        mem[t + 384] = mem[_9721 + 396 len 20]
        mem[t + 416] = mem[_9721 + 416]
        mem[t + 448] = mem[_9721 + 448]
        mem[t + 480] = mem[_9721 + 480]
        mem[t + 512] = mem[_9721 + 512]
        idx = idx + 1
        s = s + 32
        t = t + 544
        continue 
    return memory
      from mem[64]
       len _7578 + (544 * _7595) + -mem[64] + 64
}



}
