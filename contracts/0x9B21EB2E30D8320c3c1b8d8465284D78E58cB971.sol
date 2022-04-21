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
        mem[128 len 32 * arg1.length] = code.data[8996 len 32 * arg1.length]
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
        mem[128 len 32 * ('cd', 4).length] = code.data[8996 len 32 * ('cd', 4).length]
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
    mem[292] = arg2
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg2
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 292] = arg2
    require ext_code.size(arg1)
    call arg1.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args arg2
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 292] = arg2
    require ext_code.size(arg1)
    call arg1.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args arg2
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 288] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _17 = mem[(4 * ceil32(return_data.size)) + 288]
    require mem[(4 * ceil32(return_data.size)) + 288] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
    _18 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288] <= test266151307()
    require ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288]) + 320 <= test266151307()
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288]) + 320
    mem[(6 * ceil32(return_data.size)) + 288] = _18
    require _17 + _18 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 320 len ceil32(_18)] = mem[(4 * ceil32(return_data.size)) + _17 + 320 len ceil32(_18)]
    if ceil32(_18) <= _18:
        _222 = mem[64]
        mem[64] = mem[64] + 64
        mem[_222] = 5
        mem[_222 + 32] = 0x6372455448000000000000000000000000000000000000000000000000000000
        _224 = mem[64]
        mem[mem[64] + 32] = 0x6372455448000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 37] = 0
        _524 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 37
        _526 = sha3(mem[_524 + 32 len mem[_524]])
        mem[_224 + 69 len ceil32(_18)] = mem[(6 * ceil32(return_data.size)) + 320 len ceil32(_18)]
        if ceil32(_18) > _18:
            mem[_18 + _224 + 69] = 0
        mem[64] = _18 + _224 + 69
        if sha3(mem[_224 + 69 len _18]) == _526:
            return arg1 << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   eth.balance(arg2),
                   eth.balance(arg2)
    else:
        mem[_18 + (6 * ceil32(return_data.size)) + 320] = 0
        _223 = mem[64]
        mem[64] = mem[64] + 64
        mem[_223] = 5
        mem[_223 + 32] = 0x6372455448000000000000000000000000000000000000000000000000000000
        _225 = mem[64]
        mem[mem[64] + 32] = 0x6372455448000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 37] = 0
        _532 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 37
        _534 = sha3(mem[_532 + 32 len mem[_532]])
        mem[_225 + 69 len ceil32(_18)] = mem[(6 * ceil32(return_data.size)) + 320 len ceil32(_18)]
        if ceil32(_18) > _18:
            mem[_18 + _225 + 69] = 0
        mem[64] = _18 + _225 + 69
        if sha3(mem[_225 + 69 len _18]) == _534:
            return arg1 << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   eth.balance(arg2),
                   eth.balance(arg2)
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
    return arg1 << 192, 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
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
            _343 = mem[64]
            mem[64] = mem[64] + 192
            mem[_343] = 0
            mem[_343 + 32] = 0
            mem[_343 + 64] = 0
            mem[_343 + 96] = 0
            mem[_343 + 128] = 0
            mem[_343 + 160] = 0
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _359 = mem[_357]
            require mem[_357] == mem[_357]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _370 = mem[_369]
            require mem[_369] == mem[_369]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _377 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _378 = mem[_377]
            require mem[_377] == mem[_377]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _385 = mem[_384]
            require mem[_384] <= test266151307()
            require _384 + mem[_384] + 31 < _384 + return_data.size
            _388 = mem[_384 + mem[_384]]
            require mem[_384 + mem[_384]] <= test266151307()
            require ceil32(mem[_384 + mem[_384]]) + 32 >= 0 and _384 + ceil32(return_data.size) + ceil32(mem[_384 + mem[_384]]) + 32 <= test266151307()
            mem[64] = _384 + ceil32(return_data.size) + ceil32(mem[_384 + mem[_384]]) + 32
            mem[_384 + ceil32(return_data.size)] = _388
            require _385 + _388 + 32 <= return_data.size
            s = 0
            while s < _388:
                mem[s + _384 + ceil32(return_data.size) + 32] = mem[s + _384 + _385 + 32]
                s = s + 32
                continue 
            if ceil32(_388) <= _388:
                _705 = mem[64]
                mem[64] = mem[64] + 64
                mem[_705] = 5
                mem[_705 + 32] = 0x6372455448000000000000000000000000000000000000000000000000000000
                _707 = mem[64]
                s = 0
                while s < 5:
                    mem[s + _707 + 32] = mem[s + _705 + 32]
                    s = s + 32
                    continue 
                mem[_707 + 37] = 0
                _1075 = mem[64]
                mem[mem[64]] = _707 + -mem[64] + 5
                mem[64] = _707 + 37
                _1077 = sha3(mem[_1075 + 32 len mem[_1075]])
                _1089 = mem[_384 + ceil32(return_data.size)]
                s = 0
                while s < _1089:
                    mem[s + _707 + 69] = mem[s + _384 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_1089) <= _1089:
                    _1450 = mem[64]
                    mem[mem[64]] = _1089 + _707 + -mem[64] + 37
                    mem[64] = _1089 + _707 + 69
                    if sha3(mem[_1450 + 32 len mem[_1450]]) == _1077:
                        mem[64] = _1089 + _707 + 261
                        mem[_1089 + _707 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1089 + _707 + 101] = _359
                        mem[_1089 + _707 + 133] = _370
                        mem[_1089 + _707 + 165] = _378
                        mem[_1089 + _707 + 197] = eth.balance(arg2)
                        mem[_1089 + _707 + 229] = eth.balance(arg2)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1089 + _707 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1089 + _707 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1089 + _707 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1089 + _707 + ceil32(return_data.size) + 73] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_1089 + _707 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1089 + _707 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 73] = arg2
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _1089 + _707 + (4 * ceil32(return_data.size)) + 261
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 101] = _359
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 133] = _370
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 165] = _378
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1089 + _707 + (4 * ceil32(return_data.size)) + 69
                else:
                    mem[_1089 + _707 + 69] = 0
                    _1453 = mem[64]
                    mem[mem[64]] = _1089 + _707 + -mem[64] + 37
                    mem[64] = _1089 + _707 + 69
                    if sha3(mem[_1453 + 32 len mem[_1453]]) == _1077:
                        mem[64] = _1089 + _707 + 261
                        mem[_1089 + _707 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1089 + _707 + 101] = _359
                        mem[_1089 + _707 + 133] = _370
                        mem[_1089 + _707 + 165] = _378
                        mem[_1089 + _707 + 197] = eth.balance(arg2)
                        mem[_1089 + _707 + 229] = eth.balance(arg2)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1089 + _707 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1089 + _707 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1089 + _707 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1089 + _707 + ceil32(return_data.size) + 73] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_1089 + _707 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1089 + _707 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 73] = arg2
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _1089 + _707 + (4 * ceil32(return_data.size)) + 261
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 101] = _359
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 133] = _370
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 165] = _378
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1089 + _707 + (4 * ceil32(return_data.size)) + 69
            else:
                mem[_388 + _384 + ceil32(return_data.size) + 32] = 0
                _706 = mem[64]
                mem[64] = mem[64] + 64
                mem[_706] = 5
                mem[_706 + 32] = 0x6372455448000000000000000000000000000000000000000000000000000000
                _708 = mem[64]
                s = 0
                while s < 5:
                    mem[s + _708 + 32] = mem[s + _706 + 32]
                    s = s + 32
                    continue 
                mem[_708 + 37] = 0
                _1083 = mem[64]
                mem[mem[64]] = _708 + -mem[64] + 5
                mem[64] = _708 + 37
                _1085 = sha3(mem[_1083 + 32 len mem[_1083]])
                _1091 = mem[_384 + ceil32(return_data.size)]
                s = 0
                while s < _1091:
                    mem[s + _708 + 69] = mem[s + _384 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_1091) <= _1091:
                    _1462 = mem[64]
                    mem[mem[64]] = _1091 + _708 + -mem[64] + 37
                    mem[64] = _1091 + _708 + 69
                    if sha3(mem[_1462 + 32 len mem[_1462]]) == _1085:
                        mem[64] = _1091 + _708 + 261
                        mem[_1091 + _708 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1091 + _708 + 101] = _359
                        mem[_1091 + _708 + 133] = _370
                        mem[_1091 + _708 + 165] = _378
                        mem[_1091 + _708 + 197] = eth.balance(arg2)
                        mem[_1091 + _708 + 229] = eth.balance(arg2)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1091 + _708 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1091 + _708 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1091 + _708 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1091 + _708 + ceil32(return_data.size) + 73] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_1091 + _708 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1091 + _708 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 73] = arg2
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _1091 + _708 + (4 * ceil32(return_data.size)) + 261
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 101] = _359
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 133] = _370
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 165] = _378
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1091 + _708 + (4 * ceil32(return_data.size)) + 69
                else:
                    mem[_1091 + _708 + 69] = 0
                    _1465 = mem[64]
                    mem[mem[64]] = _1091 + _708 + -mem[64] + 37
                    mem[64] = _1091 + _708 + 69
                    if sha3(mem[_1465 + 32 len mem[_1465]]) == _1085:
                        mem[64] = _1091 + _708 + 261
                        mem[_1091 + _708 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1091 + _708 + 101] = _359
                        mem[_1091 + _708 + 133] = _370
                        mem[_1091 + _708 + 165] = _378
                        mem[_1091 + _708 + 197] = eth.balance(arg2)
                        mem[_1091 + _708 + 229] = eth.balance(arg2)
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1091 + _708 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1091 + _708 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1091 + _708 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1091 + _708 + ceil32(return_data.size) + 73] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args arg2
                        mem[_1091 + _708 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1091 + _708 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 73] = arg2
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _1091 + _708 + (4 * ceil32(return_data.size)) + 261
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 101] = _359
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 133] = _370
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 165] = _378
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1091 + _708 + (4 * ceil32(return_data.size)) + 69
            idx = idx + 1
            continue 
        _336 = mem[64]
        mem[mem[64]] = 32
        _337 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _337:
            _701 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_701 + 32]
            mem[t + 64] = mem[_701 + 64]
            mem[t + 96] = mem[_701 + 96]
            mem[t + 128] = mem[_701 + 128]
            mem[t + 160] = mem[_701 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _336 + (192 * _337) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 320
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = 0
    mem[(32 * arg1.length) + 256] = 0
    mem[(32 * arg1.length) + 288] = 0
    mem[var25001] = (32 * arg1.length) + 128
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 0
        mem[(32 * arg1.length) + 224] = 0
        mem[(32 * arg1.length) + 256] = 0
        mem[(32 * arg1.length) + 288] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        _1123 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1123] = 0
        mem[_1123 + 32] = 0
        mem[_1123 + 64] = 0
        mem[_1123 + 96] = 0
        mem[_1123 + 128] = 0
        mem[_1123 + 160] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1178 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1187 = mem[_1178]
        require mem[_1178] == mem[_1178]
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1224 = mem[_1215]
        require mem[_1215] == mem[_1215]
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1251 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1252 = mem[_1251]
        require mem[_1251] == mem[_1251]
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1271 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1272 = mem[_1271]
        require mem[_1271] <= test266151307()
        require _1271 + mem[_1271] + 31 < _1271 + return_data.size
        _1273 = mem[_1271 + mem[_1271]]
        require mem[_1271 + mem[_1271]] <= test266151307()
        require ceil32(mem[_1271 + mem[_1271]]) + 32 >= 0 and _1271 + ceil32(return_data.size) + ceil32(mem[_1271 + mem[_1271]]) + 32 <= test266151307()
        mem[64] = _1271 + ceil32(return_data.size) + ceil32(mem[_1271 + mem[_1271]]) + 32
        mem[_1271 + ceil32(return_data.size)] = _1273
        require _1272 + _1273 + 32 <= return_data.size
        s = 0
        while s < _1273:
            mem[s + _1271 + ceil32(return_data.size) + 32] = mem[s + _1271 + _1272 + 32]
            s = s + 32
            continue 
        if ceil32(_1273) <= _1273:
            _1468 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1468] = 5
            mem[_1468 + 32] = 0x6372455448000000000000000000000000000000000000000000000000000000
            _1470 = mem[64]
            s = 0
            while s < 5:
                mem[s + _1470 + 32] = mem[s + _1468 + 32]
                s = s + 32
                continue 
            mem[_1470 + 37] = 0
            _1791 = mem[64]
            mem[mem[64]] = _1470 + -mem[64] + 5
            mem[64] = _1470 + 37
            _1793 = sha3(mem[_1791 + 32 len mem[_1791]])
            _1804 = mem[_1271 + ceil32(return_data.size)]
            s = 0
            while s < _1804:
                mem[s + _1470 + 69] = mem[s + _1271 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_1804) <= _1804:
                _1973 = mem[64]
                mem[mem[64]] = _1804 + _1470 + -mem[64] + 37
                mem[64] = _1804 + _1470 + 69
                if sha3(mem[_1973 + 32 len mem[_1973]]) == _1793:
                    mem[64] = _1804 + _1470 + 261
                    mem[_1804 + _1470 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_1804 + _1470 + 101] = _1187
                    mem[_1804 + _1470 + 133] = _1224
                    mem[_1804 + _1470 + 165] = _1252
                    mem[_1804 + _1470 + 197] = eth.balance(arg2)
                    mem[_1804 + _1470 + 229] = eth.balance(arg2)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1804 + _1470 + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_1804 + _1470 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1804 + _1470 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1804 + _1470 + ceil32(return_data.size) + 73] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[_1804 + _1470 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1804 + _1470 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 73] = arg2
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[64] = _1804 + _1470 + (4 * ceil32(return_data.size)) + 261
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 101] = _1187
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 133] = _1224
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 165] = _1252
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1804 + _1470 + (4 * ceil32(return_data.size)) + 69
            else:
                mem[_1804 + _1470 + 69] = 0
                _1976 = mem[64]
                mem[mem[64]] = _1804 + _1470 + -mem[64] + 37
                mem[64] = _1804 + _1470 + 69
                if sha3(mem[_1976 + 32 len mem[_1976]]) == _1793:
                    mem[64] = _1804 + _1470 + 261
                    mem[_1804 + _1470 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_1804 + _1470 + 101] = _1187
                    mem[_1804 + _1470 + 133] = _1224
                    mem[_1804 + _1470 + 165] = _1252
                    mem[_1804 + _1470 + 197] = eth.balance(arg2)
                    mem[_1804 + _1470 + 229] = eth.balance(arg2)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1804 + _1470 + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_1804 + _1470 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1804 + _1470 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1804 + _1470 + ceil32(return_data.size) + 73] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[_1804 + _1470 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1804 + _1470 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 73] = arg2
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[64] = _1804 + _1470 + (4 * ceil32(return_data.size)) + 261
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 101] = _1187
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 133] = _1224
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 165] = _1252
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1804 + _1470 + (4 * ceil32(return_data.size)) + 69
        else:
            mem[_1273 + _1271 + ceil32(return_data.size) + 32] = 0
            _1469 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1469] = 5
            mem[_1469 + 32] = 0x6372455448000000000000000000000000000000000000000000000000000000
            _1471 = mem[64]
            s = 0
            while s < 5:
                mem[s + _1471 + 32] = mem[s + _1469 + 32]
                s = s + 32
                continue 
            mem[_1471 + 37] = 0
            _1799 = mem[64]
            mem[mem[64]] = _1471 + -mem[64] + 5
            mem[64] = _1471 + 37
            _1801 = sha3(mem[_1799 + 32 len mem[_1799]])
            _1806 = mem[_1271 + ceil32(return_data.size)]
            s = 0
            while s < _1806:
                mem[s + _1471 + 69] = mem[s + _1271 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_1806) <= _1806:
                _1985 = mem[64]
                mem[mem[64]] = _1806 + _1471 + -mem[64] + 37
                mem[64] = _1806 + _1471 + 69
                if sha3(mem[_1985 + 32 len mem[_1985]]) == _1801:
                    mem[64] = _1806 + _1471 + 261
                    mem[_1806 + _1471 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_1806 + _1471 + 101] = _1187
                    mem[_1806 + _1471 + 133] = _1224
                    mem[_1806 + _1471 + 165] = _1252
                    mem[_1806 + _1471 + 197] = eth.balance(arg2)
                    mem[_1806 + _1471 + 229] = eth.balance(arg2)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1806 + _1471 + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_1806 + _1471 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1806 + _1471 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1806 + _1471 + ceil32(return_data.size) + 73] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[_1806 + _1471 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1806 + _1471 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 73] = arg2
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[64] = _1806 + _1471 + (4 * ceil32(return_data.size)) + 261
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 101] = _1187
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 133] = _1224
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 165] = _1252
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1806 + _1471 + (4 * ceil32(return_data.size)) + 69
            else:
                mem[_1806 + _1471 + 69] = 0
                _1988 = mem[64]
                mem[mem[64]] = _1806 + _1471 + -mem[64] + 37
                mem[64] = _1806 + _1471 + 69
                if sha3(mem[_1988 + 32 len mem[_1988]]) == _1801:
                    mem[64] = _1806 + _1471 + 261
                    mem[_1806 + _1471 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_1806 + _1471 + 101] = _1187
                    mem[_1806 + _1471 + 133] = _1224
                    mem[_1806 + _1471 + 165] = _1252
                    mem[_1806 + _1471 + 197] = eth.balance(arg2)
                    mem[_1806 + _1471 + 229] = eth.balance(arg2)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1806 + _1471 + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_1806 + _1471 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1806 + _1471 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1806 + _1471 + ceil32(return_data.size) + 73] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[_1806 + _1471 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1806 + _1471 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 73] = arg2
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(cd[((32 * idx) + arg1 + 36)])
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[64] = _1806 + _1471 + (4 * ceil32(return_data.size)) + 261
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 101] = _1187
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 133] = _1224
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 165] = _1252
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1806 + _1471 + (4 * ceil32(return_data.size)) + 69
        idx = idx + 1
        continue 
    _1070 = mem[64]
    mem[mem[64]] = 32
    _1087 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _1087:
        _1440 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1440 + 32]
        mem[t + 64] = mem[_1440 + 64]
        mem[t + 96] = mem[_1440 + 96]
        mem[t + 128] = mem[_1440 + 128]
        mem[t + 160] = mem[_1440 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _1070 + (192 * _1087) + -mem[64] + 64
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
            _3262 = mem[64]
            mem[64] = mem[64] + 512
            mem[_3262] = 0
            mem[_3262 + 32] = 0
            mem[_3262 + 64] = 0
            mem[_3262 + 96] = 0
            mem[_3262 + 128] = 0
            mem[_3262 + 160] = 0
            mem[_3262 + 192] = 0
            mem[_3262 + 224] = 0
            mem[_3262 + 256] = 0
            mem[_3262 + 288] = 0
            mem[_3262 + 320] = 0
            mem[_3262 + 352] = 0
            mem[_3262 + 384] = 0
            mem[_3262 + 416] = 0
            mem[_3262 + 448] = 0
            mem[_3262 + 480] = 0
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).exchangeRateCurrent() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3272 = mem[_3268]
            require mem[_3268] == mem[_3268]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).comptroller() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3282 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3282] == mem[_3282 + 12 len 20]
            require ext_code.size(mem[_3282 + 12 len 20])
            staticcall mem[_3282 + 12 len 20].markets(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _3306 = mem[_3303]
            require mem[_3303] == bool(mem[_3303])
            _3313 = mem[_3303 + 32]
            require mem[_3303 + 32] == mem[_3303 + 32]
            _3317 = mem[_3303 + 64]
            require mem[_3303 + 64] == mem[_3303 + 64]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3325 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3327 = mem[_3325]
            require mem[_3325] <= test266151307()
            require _3325 + mem[_3325] + 31 < _3325 + return_data.size
            _3331 = mem[_3325 + mem[_3325]]
            require mem[_3325 + mem[_3325]] <= test266151307()
            require ceil32(mem[_3325 + mem[_3325]]) + 32 >= 0 and _3325 + ceil32(return_data.size) + ceil32(mem[_3325 + mem[_3325]]) + 32 <= test266151307()
            mem[64] = _3325 + ceil32(return_data.size) + ceil32(mem[_3325 + mem[_3325]]) + 32
            mem[_3325 + ceil32(return_data.size)] = _3331
            require _3327 + _3331 + 32 <= return_data.size
            s = 0
            while s < _3331:
                mem[s + _3325 + ceil32(return_data.size) + 32] = mem[s + _3325 + _3327 + 32]
                s = s + 32
                continue 
            if ceil32(_3331) <= _3331:
                _4754 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4754] = 5
                mem[_4754 + 32] = 0x6372455448000000000000000000000000000000000000000000000000000000
                _4758 = mem[64]
                s = 0
                while s < 5:
                    mem[s + _4758 + 32] = mem[s + _4754 + 32]
                    s = s + 32
                    continue 
                mem[_4758 + 37] = 0
                _7399 = mem[64]
                mem[mem[64]] = _4758 + -mem[64] + 5
                mem[64] = _4758 + 37
                _7401 = sha3(mem[_7399 + 32 len mem[_7399]])
                _7413 = mem[_3325 + ceil32(return_data.size)]
                s = 0
                while s < _7413:
                    mem[s + _4758 + 69] = mem[s + _3325 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_7413) <= _7413:
                    _9482 = mem[64]
                    mem[mem[64]] = _7413 + _4758 + -mem[64] + 37
                    mem[64] = _7413 + _4758 + 69
                    if sha3(mem[_9482 + 32 len mem[_9482]]) == _7401:
                        if _3317 != 1:
                            mem[64] = _7413 + _4758 + 581
                            mem[_7413 + _4758 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7413 + _4758 + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 325] = ext_call.return_data[0]
                            mem[_7413 + _4758 + 357] = bool(_3306)
                            mem[_7413 + _4758 + 389] = _3313
                            mem[_7413 + _4758 + 421] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7413 + _4758 + (11 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + 453] = ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + 485] = 18
                            mem[_7413 + _4758 + 517] = _3317
                            mem[_7413 + _4758 + 549] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7413 + _4758 + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7413 + _4758 + ceil32(return_data.size) + 581
                            mem[_7413 + _4758 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7413 + _4758 + ceil32(return_data.size) + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 357] = bool(_3306)
                            mem[_7413 + _4758 + ceil32(return_data.size) + 389] = _3313
                            mem[_7413 + _4758 + ceil32(return_data.size) + 421] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7413 + _4758 + (12 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 453] = ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 485] = 18
                            mem[_7413 + _4758 + ceil32(return_data.size) + 517] = _3317
                            mem[_7413 + _4758 + ceil32(return_data.size) + 549] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7413 + _4758 + ceil32(return_data.size) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7413 + _4758 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7413 + _4758 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7413 + _4758 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7413 + _4758 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).decimals() with:
                                gas gas_remaining wei
                        mem[_7413 + _4758 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7413 + _4758 + (4 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if _3317 != 1:
                            mem[64] = _7413 + _4758 + (4 * ceil32(return_data.size)) + 581
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 357] = bool(_3306)
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 389] = _3313
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7413 + _4758 + (14 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 517] = _3317
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 549] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7413 + _4758 + (4 * ceil32(return_data.size)) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7413 + _4758 + (6 * ceil32(return_data.size)) + 581
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 357] = bool(_3306)
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 389] = _3313
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (14 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7413 + _4758 + (15 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 517] = _3317
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7413 + _4758 + (6 * ceil32(return_data.size)) + 69
                else:
                    mem[_7413 + _4758 + 69] = 0
                    _9485 = mem[64]
                    mem[mem[64]] = _7413 + _4758 + -mem[64] + 37
                    mem[64] = _7413 + _4758 + 69
                    if sha3(mem[_9485 + 32 len mem[_9485]]) == _7401:
                        if _3317 != 1:
                            mem[64] = _7413 + _4758 + 581
                            mem[_7413 + _4758 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7413 + _4758 + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + 325] = ext_call.return_data[0]
                            mem[_7413 + _4758 + 357] = bool(_3306)
                            mem[_7413 + _4758 + 389] = _3313
                            mem[_7413 + _4758 + 421] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7413 + _4758 + (11 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + 453] = ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + 485] = 18
                            mem[_7413 + _4758 + 517] = _3317
                            mem[_7413 + _4758 + 549] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7413 + _4758 + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7413 + _4758 + ceil32(return_data.size) + 581
                            mem[_7413 + _4758 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7413 + _4758 + ceil32(return_data.size) + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 357] = bool(_3306)
                            mem[_7413 + _4758 + ceil32(return_data.size) + 389] = _3313
                            mem[_7413 + _4758 + ceil32(return_data.size) + 421] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7413 + _4758 + (12 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 453] = ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + ceil32(return_data.size) + 485] = 18
                            mem[_7413 + _4758 + ceil32(return_data.size) + 517] = _3317
                            mem[_7413 + _4758 + ceil32(return_data.size) + 549] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7413 + _4758 + ceil32(return_data.size) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7413 + _4758 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7413 + _4758 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7413 + _4758 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7413 + _4758 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).decimals() with:
                                gas gas_remaining wei
                        mem[_7413 + _4758 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7413 + _4758 + (4 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if _3317 != 1:
                            mem[64] = _7413 + _4758 + (4 * ceil32(return_data.size)) + 581
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 357] = bool(_3306)
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 389] = _3313
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7413 + _4758 + (14 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 517] = _3317
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 549] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7413 + _4758 + (4 * ceil32(return_data.size)) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7413 + _4758 + (6 * ceil32(return_data.size)) + 581
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 357] = bool(_3306)
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 389] = _3313
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7413 + _4758 + (14 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7413 + _4758 + (15 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 517] = _3317
                            mem[_7413 + _4758 + (6 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7413 + _4758 + (6 * ceil32(return_data.size)) + 69
            else:
                mem[_3331 + _3325 + ceil32(return_data.size) + 32] = 0
                _4755 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4755] = 5
                mem[_4755 + 32] = 0x6372455448000000000000000000000000000000000000000000000000000000
                _4759 = mem[64]
                s = 0
                while s < 5:
                    mem[s + _4759 + 32] = mem[s + _4755 + 32]
                    s = s + 32
                    continue 
                mem[_4759 + 37] = 0
                _7407 = mem[64]
                mem[mem[64]] = _4759 + -mem[64] + 5
                mem[64] = _4759 + 37
                _7409 = sha3(mem[_7407 + 32 len mem[_7407]])
                _7415 = mem[_3325 + ceil32(return_data.size)]
                s = 0
                while s < _7415:
                    mem[s + _4759 + 69] = mem[s + _3325 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_7415) <= _7415:
                    _9494 = mem[64]
                    mem[mem[64]] = _7415 + _4759 + -mem[64] + 37
                    mem[64] = _7415 + _4759 + 69
                    if sha3(mem[_9494 + 32 len mem[_9494]]) == _7409:
                        if _3317 != 1:
                            mem[64] = _7415 + _4759 + 581
                            mem[_7415 + _4759 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7415 + _4759 + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 325] = ext_call.return_data[0]
                            mem[_7415 + _4759 + 357] = bool(_3306)
                            mem[_7415 + _4759 + 389] = _3313
                            mem[_7415 + _4759 + 421] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7415 + _4759 + (11 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + 453] = ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + 485] = 18
                            mem[_7415 + _4759 + 517] = _3317
                            mem[_7415 + _4759 + 549] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7415 + _4759 + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7415 + _4759 + ceil32(return_data.size) + 581
                            mem[_7415 + _4759 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7415 + _4759 + ceil32(return_data.size) + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 357] = bool(_3306)
                            mem[_7415 + _4759 + ceil32(return_data.size) + 389] = _3313
                            mem[_7415 + _4759 + ceil32(return_data.size) + 421] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7415 + _4759 + (12 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 453] = ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 485] = 18
                            mem[_7415 + _4759 + ceil32(return_data.size) + 517] = _3317
                            mem[_7415 + _4759 + ceil32(return_data.size) + 549] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7415 + _4759 + ceil32(return_data.size) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7415 + _4759 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7415 + _4759 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7415 + _4759 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7415 + _4759 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).decimals() with:
                                gas gas_remaining wei
                        mem[_7415 + _4759 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7415 + _4759 + (4 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if _3317 != 1:
                            mem[64] = _7415 + _4759 + (4 * ceil32(return_data.size)) + 581
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 357] = bool(_3306)
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 389] = _3313
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7415 + _4759 + (14 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 517] = _3317
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 549] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7415 + _4759 + (4 * ceil32(return_data.size)) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7415 + _4759 + (6 * ceil32(return_data.size)) + 581
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 357] = bool(_3306)
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 389] = _3313
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (14 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7415 + _4759 + (15 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 517] = _3317
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7415 + _4759 + (6 * ceil32(return_data.size)) + 69
                else:
                    mem[_7415 + _4759 + 69] = 0
                    _9497 = mem[64]
                    mem[mem[64]] = _7415 + _4759 + -mem[64] + 37
                    mem[64] = _7415 + _4759 + 69
                    if sha3(mem[_9497 + 32 len mem[_9497]]) == _7409:
                        if _3317 != 1:
                            mem[64] = _7415 + _4759 + 581
                            mem[_7415 + _4759 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7415 + _4759 + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + 325] = ext_call.return_data[0]
                            mem[_7415 + _4759 + 357] = bool(_3306)
                            mem[_7415 + _4759 + 389] = _3313
                            mem[_7415 + _4759 + 421] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7415 + _4759 + (11 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + 453] = ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + 485] = 18
                            mem[_7415 + _4759 + 517] = _3317
                            mem[_7415 + _4759 + 549] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7415 + _4759 + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7415 + _4759 + ceil32(return_data.size) + 581
                            mem[_7415 + _4759 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7415 + _4759 + ceil32(return_data.size) + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 357] = bool(_3306)
                            mem[_7415 + _4759 + ceil32(return_data.size) + 389] = _3313
                            mem[_7415 + _4759 + ceil32(return_data.size) + 421] = 0
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7415 + _4759 + (12 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 453] = ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + ceil32(return_data.size) + 485] = 18
                            mem[_7415 + _4759 + ceil32(return_data.size) + 517] = _3317
                            mem[_7415 + _4759 + ceil32(return_data.size) + 549] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7415 + _4759 + ceil32(return_data.size) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7415 + _4759 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7415 + _4759 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_7415 + _4759 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7415 + _4759 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).decimals() with:
                                gas gas_remaining wei
                        mem[_7415 + _4759 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7415 + _4759 + (4 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if _3317 != 1:
                            mem[64] = _7415 + _4759 + (4 * ceil32(return_data.size)) + 581
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 357] = bool(_3306)
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 389] = _3313
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7415 + _4759 + (14 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 517] = _3317
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 549] = 0
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7415 + _4759 + (4 * ceil32(return_data.size)) + 69
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[64] = _7415 + _4759 + (6 * ceil32(return_data.size)) + 581
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 101] = _3272
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 357] = bool(_3306)
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 389] = _3313
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                    gas gas_remaining wei
                            mem[_7415 + _4759 + (14 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _7415 + _4759 + (15 * ceil32(return_data.size)) + 581
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 517] = _3317
                            mem[_7415 + _4759 + (6 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _7415 + _4759 + (6 * ceil32(return_data.size)) + 69
            idx = idx + 1
            continue 
        _3254 = mem[64]
        mem[mem[64]] = 32
        _3255 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _3255:
            _4746 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_4746 + 32]
            mem[t + 64] = mem[_4746 + 64]
            mem[t + 96] = mem[_4746 + 96]
            mem[t + 128] = mem[_4746 + 128]
            mem[t + 160] = mem[_4746 + 160]
            mem[t + 192] = mem[_4746 + 192]
            mem[t + 224] = mem[_4746 + 224]
            mem[t + 256] = mem[_4746 + 256]
            mem[t + 288] = bool(mem[_4746 + 288])
            mem[t + 320] = mem[_4746 + 320]
            mem[t + 352] = mem[_4746 + 364 len 20]
            mem[t + 384] = mem[_4746 + 384]
            mem[t + 416] = mem[_4746 + 416]
            mem[t + 448] = mem[_4746 + 448]
            mem[t + 480] = mem[_4746 + 480]
            idx = idx + 1
            s = s + 32
            t = t + 512
            continue 
        return memory
          from mem[64]
           len _3254 + (512 * _3255) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 640
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
    mem[var16001] = (32 * arg1.length) + 128
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 512
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
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        _7447 = mem[64]
        mem[64] = mem[64] + 512
        mem[_7447] = 0
        mem[_7447 + 32] = 0
        mem[_7447 + 64] = 0
        mem[_7447 + 96] = 0
        mem[_7447 + 128] = 0
        mem[_7447 + 160] = 0
        mem[_7447 + 192] = 0
        mem[_7447 + 224] = 0
        mem[_7447 + 256] = 0
        mem[_7447 + 288] = 0
        mem[_7447 + 320] = 0
        mem[_7447 + 352] = 0
        mem[_7447 + 384] = 0
        mem[_7447 + 416] = 0
        mem[_7447 + 448] = 0
        mem[_7447 + 480] = 0
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).exchangeRateCurrent() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7467 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7532 = mem[_7467]
        require mem[_7467] == mem[_7467]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).comptroller() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7562 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7562] == mem[_7562 + 12 len 20]
        require ext_code.size(mem[_7562 + 12 len 20])
        staticcall mem[_7562 + 12 len 20].markets(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7772 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _7813 = mem[_7772]
        require mem[_7772] == bool(mem[_7772])
        _7912 = mem[_7772 + 32]
        require mem[_7772 + 32] == mem[_7772 + 32]
        _7978 = mem[_7772 + 64]
        require mem[_7772 + 64] == mem[_7772 + 64]
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _8087 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _8104 = mem[_8087]
        require mem[_8087] <= test266151307()
        require _8087 + mem[_8087] + 31 < _8087 + return_data.size
        _8161 = mem[_8087 + mem[_8087]]
        require mem[_8087 + mem[_8087]] <= test266151307()
        require ceil32(mem[_8087 + mem[_8087]]) + 32 >= 0 and _8087 + ceil32(return_data.size) + ceil32(mem[_8087 + mem[_8087]]) + 32 <= test266151307()
        mem[64] = _8087 + ceil32(return_data.size) + ceil32(mem[_8087 + mem[_8087]]) + 32
        mem[_8087 + ceil32(return_data.size)] = _8161
        require _8104 + _8161 + 32 <= return_data.size
        s = 0
        while s < _8161:
            mem[s + _8087 + ceil32(return_data.size) + 32] = mem[s + _8087 + _8104 + 32]
            s = s + 32
            continue 
        if ceil32(_8161) <= _8161:
            _9500 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9500] = 5
            mem[_9500 + 32] = 0x6372455448000000000000000000000000000000000000000000000000000000
            _9502 = mem[64]
            s = 0
            while s < 5:
                mem[s + _9502 + 32] = mem[s + _9500 + 32]
                s = s + 32
                continue 
            mem[_9502 + 37] = 0
            _12073 = mem[64]
            mem[mem[64]] = _9502 + -mem[64] + 5
            mem[64] = _9502 + 37
            _12075 = sha3(mem[_12073 + 32 len mem[_12073]])
            _12086 = mem[_8087 + ceil32(return_data.size)]
            s = 0
            while s < _12086:
                mem[s + _9502 + 69] = mem[s + _8087 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_12086) <= _12086:
                _13375 = mem[64]
                mem[mem[64]] = _12086 + _9502 + -mem[64] + 37
                mem[64] = _12086 + _9502 + 69
                if sha3(mem[_13375 + 32 len mem[_13375]]) == _12075:
                    if _7978 != 1:
                        mem[64] = _12086 + _9502 + 581
                        mem[_12086 + _9502 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12086 + _9502 + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 325] = ext_call.return_data[0]
                        mem[_12086 + _9502 + 357] = bool(_7813)
                        mem[_12086 + _9502 + 389] = _7912
                        mem[_12086 + _9502 + 421] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12086 + _9502 + (11 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + 453] = ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + 485] = 18
                        mem[_12086 + _9502 + 517] = _7978
                        mem[_12086 + _9502 + 549] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12086 + _9502 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12086 + _9502 + ceil32(return_data.size) + 581
                        mem[_12086 + _9502 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12086 + _9502 + ceil32(return_data.size) + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 357] = bool(_7813)
                        mem[_12086 + _9502 + ceil32(return_data.size) + 389] = _7912
                        mem[_12086 + _9502 + ceil32(return_data.size) + 421] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12086 + _9502 + (12 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 453] = ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 485] = 18
                        mem[_12086 + _9502 + ceil32(return_data.size) + 517] = _7978
                        mem[_12086 + _9502 + ceil32(return_data.size) + 549] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12086 + _9502 + ceil32(return_data.size) + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12086 + _9502 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12086 + _9502 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12086 + _9502 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12086 + _9502 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).decimals() with:
                            gas gas_remaining wei
                    mem[_12086 + _9502 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12086 + _9502 + (4 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if _7978 != 1:
                        mem[64] = _12086 + _9502 + (4 * ceil32(return_data.size)) + 581
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 357] = bool(_7813)
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 389] = _7912
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12086 + _9502 + (14 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 517] = _7978
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 549] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12086 + _9502 + (4 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12086 + _9502 + (6 * ceil32(return_data.size)) + 581
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 357] = bool(_7813)
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 389] = _7912
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (14 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12086 + _9502 + (15 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 517] = _7978
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12086 + _9502 + (6 * ceil32(return_data.size)) + 69
            else:
                mem[_12086 + _9502 + 69] = 0
                _13378 = mem[64]
                mem[mem[64]] = _12086 + _9502 + -mem[64] + 37
                mem[64] = _12086 + _9502 + 69
                if sha3(mem[_13378 + 32 len mem[_13378]]) == _12075:
                    if _7978 != 1:
                        mem[64] = _12086 + _9502 + 581
                        mem[_12086 + _9502 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12086 + _9502 + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + 325] = ext_call.return_data[0]
                        mem[_12086 + _9502 + 357] = bool(_7813)
                        mem[_12086 + _9502 + 389] = _7912
                        mem[_12086 + _9502 + 421] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12086 + _9502 + (11 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + 453] = ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + 485] = 18
                        mem[_12086 + _9502 + 517] = _7978
                        mem[_12086 + _9502 + 549] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12086 + _9502 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12086 + _9502 + ceil32(return_data.size) + 581
                        mem[_12086 + _9502 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12086 + _9502 + ceil32(return_data.size) + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 357] = bool(_7813)
                        mem[_12086 + _9502 + ceil32(return_data.size) + 389] = _7912
                        mem[_12086 + _9502 + ceil32(return_data.size) + 421] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12086 + _9502 + (12 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 453] = ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + ceil32(return_data.size) + 485] = 18
                        mem[_12086 + _9502 + ceil32(return_data.size) + 517] = _7978
                        mem[_12086 + _9502 + ceil32(return_data.size) + 549] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12086 + _9502 + ceil32(return_data.size) + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12086 + _9502 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12086 + _9502 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12086 + _9502 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12086 + _9502 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).decimals() with:
                            gas gas_remaining wei
                    mem[_12086 + _9502 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12086 + _9502 + (4 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if _7978 != 1:
                        mem[64] = _12086 + _9502 + (4 * ceil32(return_data.size)) + 581
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 357] = bool(_7813)
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 389] = _7912
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12086 + _9502 + (14 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 517] = _7978
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 549] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12086 + _9502 + (4 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12086 + _9502 + (6 * ceil32(return_data.size)) + 581
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 357] = bool(_7813)
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 389] = _7912
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12086 + _9502 + (14 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12086 + _9502 + (15 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 517] = _7978
                        mem[_12086 + _9502 + (6 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12086 + _9502 + (6 * ceil32(return_data.size)) + 69
        else:
            mem[_8161 + _8087 + ceil32(return_data.size) + 32] = 0
            _9501 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9501] = 5
            mem[_9501 + 32] = 0x6372455448000000000000000000000000000000000000000000000000000000
            _9503 = mem[64]
            s = 0
            while s < 5:
                mem[s + _9503 + 32] = mem[s + _9501 + 32]
                s = s + 32
                continue 
            mem[_9503 + 37] = 0
            _12081 = mem[64]
            mem[mem[64]] = _9503 + -mem[64] + 5
            mem[64] = _9503 + 37
            _12083 = sha3(mem[_12081 + 32 len mem[_12081]])
            _12088 = mem[_8087 + ceil32(return_data.size)]
            s = 0
            while s < _12088:
                mem[s + _9503 + 69] = mem[s + _8087 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_12088) <= _12088:
                _13387 = mem[64]
                mem[mem[64]] = _12088 + _9503 + -mem[64] + 37
                mem[64] = _12088 + _9503 + 69
                if sha3(mem[_13387 + 32 len mem[_13387]]) == _12083:
                    if _7978 != 1:
                        mem[64] = _12088 + _9503 + 581
                        mem[_12088 + _9503 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12088 + _9503 + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 325] = ext_call.return_data[0]
                        mem[_12088 + _9503 + 357] = bool(_7813)
                        mem[_12088 + _9503 + 389] = _7912
                        mem[_12088 + _9503 + 421] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12088 + _9503 + (11 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + 453] = ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + 485] = 18
                        mem[_12088 + _9503 + 517] = _7978
                        mem[_12088 + _9503 + 549] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12088 + _9503 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12088 + _9503 + ceil32(return_data.size) + 581
                        mem[_12088 + _9503 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12088 + _9503 + ceil32(return_data.size) + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 357] = bool(_7813)
                        mem[_12088 + _9503 + ceil32(return_data.size) + 389] = _7912
                        mem[_12088 + _9503 + ceil32(return_data.size) + 421] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12088 + _9503 + (12 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 453] = ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 485] = 18
                        mem[_12088 + _9503 + ceil32(return_data.size) + 517] = _7978
                        mem[_12088 + _9503 + ceil32(return_data.size) + 549] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12088 + _9503 + ceil32(return_data.size) + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12088 + _9503 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12088 + _9503 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12088 + _9503 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12088 + _9503 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).decimals() with:
                            gas gas_remaining wei
                    mem[_12088 + _9503 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12088 + _9503 + (4 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if _7978 != 1:
                        mem[64] = _12088 + _9503 + (4 * ceil32(return_data.size)) + 581
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 357] = bool(_7813)
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 389] = _7912
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12088 + _9503 + (14 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 517] = _7978
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 549] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12088 + _9503 + (4 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12088 + _9503 + (6 * ceil32(return_data.size)) + 581
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 357] = bool(_7813)
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 389] = _7912
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (14 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12088 + _9503 + (15 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 517] = _7978
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12088 + _9503 + (6 * ceil32(return_data.size)) + 69
            else:
                mem[_12088 + _9503 + 69] = 0
                _13390 = mem[64]
                mem[mem[64]] = _12088 + _9503 + -mem[64] + 37
                mem[64] = _12088 + _9503 + 69
                if sha3(mem[_13390 + 32 len mem[_13390]]) == _12083:
                    if _7978 != 1:
                        mem[64] = _12088 + _9503 + 581
                        mem[_12088 + _9503 + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12088 + _9503 + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + 325] = ext_call.return_data[0]
                        mem[_12088 + _9503 + 357] = bool(_7813)
                        mem[_12088 + _9503 + 389] = _7912
                        mem[_12088 + _9503 + 421] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12088 + _9503 + (11 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + 453] = ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + 485] = 18
                        mem[_12088 + _9503 + 517] = _7978
                        mem[_12088 + _9503 + 549] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12088 + _9503 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12088 + _9503 + ceil32(return_data.size) + 581
                        mem[_12088 + _9503 + ceil32(return_data.size) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12088 + _9503 + ceil32(return_data.size) + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + ceil32(return_data.size) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (2 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 357] = bool(_7813)
                        mem[_12088 + _9503 + ceil32(return_data.size) + 389] = _7912
                        mem[_12088 + _9503 + ceil32(return_data.size) + 421] = 0
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12088 + _9503 + (12 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 453] = ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + ceil32(return_data.size) + 485] = 18
                        mem[_12088 + _9503 + ceil32(return_data.size) + 517] = _7978
                        mem[_12088 + _9503 + ceil32(return_data.size) + 549] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12088 + _9503 + ceil32(return_data.size) + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12088 + _9503 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12088 + _9503 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_12088 + _9503 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12088 + _9503 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).decimals() with:
                            gas gas_remaining wei
                    mem[_12088 + _9503 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _12088 + _9503 + (4 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if _7978 != 1:
                        mem[64] = _12088 + _9503 + (4 * ceil32(return_data.size)) + 581
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 357] = bool(_7813)
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 389] = _7912
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12088 + _9503 + (14 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 517] = _7978
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 549] = 0
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12088 + _9503 + (4 * ceil32(return_data.size)) + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).collateralCap() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (4 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _12088 + _9503 + (6 * ceil32(return_data.size)) + 581
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 101] = _7532
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (7 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (8 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (10 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (11 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).totalSupply() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (12 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 357] = bool(_7813)
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 389] = _7912
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 421] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                                gas gas_remaining wei
                        mem[_12088 + _9503 + (14 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _12088 + _9503 + (15 * ceil32(return_data.size)) + 581
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 453] = ext_call.return_data[31 len 1]
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 485] = uint8(ext_call.return_data[0])
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 517] = _7978
                        mem[_12088 + _9503 + (6 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _12088 + _9503 + (6 * ceil32(return_data.size)) + 69
        idx = idx + 1
        continue 
    _7394 = mem[64]
    mem[mem[64]] = 32
    _7411 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _7411:
        _9472 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_9472 + 32]
        mem[t + 64] = mem[_9472 + 64]
        mem[t + 96] = mem[_9472 + 96]
        mem[t + 128] = mem[_9472 + 128]
        mem[t + 160] = mem[_9472 + 160]
        mem[t + 192] = mem[_9472 + 192]
        mem[t + 224] = mem[_9472 + 224]
        mem[t + 256] = mem[_9472 + 256]
        mem[t + 288] = bool(mem[_9472 + 288])
        mem[t + 320] = mem[_9472 + 320]
        mem[t + 352] = mem[_9472 + 364 len 20]
        mem[t + 384] = mem[_9472 + 384]
        mem[t + 416] = mem[_9472 + 416]
        mem[t + 448] = mem[_9472 + 448]
        mem[t + 480] = mem[_9472 + 480]
        idx = idx + 1
        s = s + 32
        t = t + 512
        continue 
    return memory
      from mem[64]
       len _7394 + (512 * _7411) + -mem[64] + 64
}



}
