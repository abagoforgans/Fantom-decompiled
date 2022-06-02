contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_1894adae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    mem[288 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 480] = mem[ceil32(return_data.size) + 300 len 20]
    mem[(6 * ceil32(return_data.size)) + 512] = mem[ceil32(return_data.size) + 332 len 20]
    return mem[(6 * ceil32(return_data.size)) + 480 len 64], 
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           ext_call.return_data[64] << 224,
           ext_call.return_data[0]
}

function sub_ef60253f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 480 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 512] = ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
    mem[(7 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 524 len 20]
    return mem[(7 * ceil32(return_data.size)) + 672 len 64], 
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           ext_call.return_data[64] << 224,
           ext_call.return_data[0]
}

function sub_93d2343e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 160
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require idx < mem[96]
            _148 = mem[(32 * idx) + 128]
            _150 = mem[64]
            mem[64] = mem[64] + 192
            mem[_150] = 0
            mem[_150 + 32] = 0
            mem[_150 + 64] = 0
            mem[_150 + 96] = 0
            mem[_150 + 128] = 0
            mem[_150 + 160] = 0
            require ext_code.size(address(_148))
            staticcall address(_148).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _163 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _167 = mem[_163]
            require mem[_163] == mem[_163 + 18 len 14]
            _179 = mem[_163 + 32]
            require mem[_163 + 32] == mem[_163 + 50 len 14]
            _182 = mem[_163 + 64]
            require mem[_163 + 64] == mem[_163 + 92 len 4]
            _183 = mem[64]
            mem[64] = mem[64] + 192
            require ext_code.size(address(_148))
            staticcall address(_148).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_187] == mem[_187 + 12 len 20]
            mem[_183] = mem[_187 + 12 len 20]
            require ext_code.size(address(_148))
            staticcall address(_148).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _197 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_197] == mem[_197 + 12 len 20]
            mem[_183 + 32] = mem[_197 + 12 len 20]
            mem[_183 + 64] = Mask(112, 0, _167)
            mem[_183 + 96] = Mask(112, 0, _179)
            mem[_183 + 128] = uint32(_182)
            require ext_code.size(address(_148))
            staticcall address(_148).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_183 + 160] = mem[_205]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _183
            idx = idx + 1
            continue 
        _147 = mem[64]
        mem[mem[64]] = 32
        _149 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = mem[64] + 64
        t = (32 * ('cd', 4).length) + 160
        while idx < _149:
            _214 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_214 + 44 len 20]
            mem[s + 64] = mem[_214 + 82 len 14]
            mem[s + 96] = mem[_214 + 114 len 14]
            mem[s + 128] = mem[_214 + 156 len 4]
            mem[s + 160] = mem[_214 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _147 + (192 * _149) + -mem[64] + 64
    mem[64] = (64 * ('cd', 4).length) + 352
    mem[(64 * ('cd', 4).length) + 160] = 0
    mem[(64 * ('cd', 4).length) + 192] = 0
    mem[(64 * ('cd', 4).length) + 224] = 0
    mem[(64 * ('cd', 4).length) + 256] = 0
    mem[(64 * ('cd', 4).length) + 288] = 0
    mem[(64 * ('cd', 4).length) + 320] = 0
    mem[var23001] = (64 * ('cd', 4).length) + 160
    s = var23001
    idx = var23002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(64 * ('cd', 4).length) + 160] = 0
        mem[(64 * ('cd', 4).length) + 192] = 0
        mem[(64 * ('cd', 4).length) + 224] = 0
        mem[(64 * ('cd', 4).length) + 256] = 0
        mem[(64 * ('cd', 4).length) + 288] = 0
        mem[(64 * ('cd', 4).length) + 320] = 0
        mem[s + 32] = (64 * ('cd', 4).length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    _256 = mem[96]
    idx = 0
    while idx < _256:
        require idx < mem[96]
        _259 = mem[(32 * idx) + 128]
        _261 = mem[64]
        mem[64] = mem[64] + 192
        mem[_261] = 0
        mem[_261 + 32] = 0
        mem[_261 + 64] = 0
        mem[_261 + 96] = 0
        mem[_261 + 128] = 0
        mem[_261 + 160] = 0
        require ext_code.size(address(_259))
        staticcall address(_259).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _272 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _273 = mem[_272]
        require mem[_272] == mem[_272 + 18 len 14]
        _274 = mem[_272 + 32]
        require mem[_272 + 32] == mem[_272 + 50 len 14]
        _275 = mem[_272 + 64]
        require mem[_272 + 64] == mem[_272 + 92 len 4]
        _276 = mem[64]
        mem[64] = mem[64] + 192
        require ext_code.size(address(_259))
        staticcall address(_259).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _279 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_279] == mem[_279 + 12 len 20]
        mem[_276] = mem[_279 + 12 len 20]
        require ext_code.size(address(_259))
        staticcall address(_259).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _283 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_283] == mem[_283 + 12 len 20]
        mem[_276 + 32] = mem[_283 + 12 len 20]
        mem[_276 + 64] = Mask(112, 0, _273)
        mem[_276 + 96] = Mask(112, 0, _274)
        mem[_276 + 128] = uint32(_275)
        require ext_code.size(address(_259))
        staticcall address(_259).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _287 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_276 + 160] = mem[_287]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _276
        _256 = mem[96]
        idx = idx + 1
        continue 
    _258 = mem[64]
    mem[mem[64]] = 32
    _260 = mem[(32 * ('cd', 4).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = mem[64] + 64
    t = (32 * ('cd', 4).length) + 160
    while idx < _260:
        _290 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_290 + 44 len 20]
        mem[s + 64] = mem[_290 + 82 len 14]
        mem[s + 96] = mem[_290 + 114 len 14]
        mem[s + 128] = mem[_290 + 156 len 4]
        mem[s + 160] = mem[_290 + 160]
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _258 + (192 * _260) + -mem[64] + 64
}

function getTokenInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 96
    mem[160] = 0
    mem[288] = 0
    mem[192] = 288
    mem[320] = 0
    mem[224] = 320
    mem[256] = 0
    mem[352] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        mem[352] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.name() with:
                gas gas_remaining wei
        if not ext_call.success:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                return 32, 96, 128, 0, 0, 0, None
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            mem[256] = ext_call.return_data[31 len 1]
            return 32, 96, 128, mem[287 len 1], 0, 0, None
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _14 = mem[352]
        require mem[352] <= test266151307()
        require mem[352] + 383 < return_data.size + 352
        _17 = mem[mem[352] + 352]
        require mem[mem[352] + 352] <= test266151307()
        require ceil32(mem[mem[352] + 352]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[352] + 352]) + 384 <= test266151307()
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352] + 352]) + 384
        mem[ceil32(return_data.size) + 352] = mem[mem[352] + 352]
        require _14 + _17 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 384 len ceil32(_17)] = mem[_14 + 384 len ceil32(_17)]
        if ceil32(_17) <= _17:
            mem[224] = ceil32(return_data.size) + 352
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 96
                mem[mem[64] + 128] = 0
                mem[mem[64] + 160 len 0] = None
                mem[mem[64] + 64] = 128
                _788 = mem[ceil32(return_data.size) + 352]
                mem[mem[64] + 160] = mem[ceil32(return_data.size) + 352]
                mem[mem[64] + 192 len ceil32(_788)] = mem[ceil32(return_data.size) + 384 len ceil32(_788)]
                if ceil32(_788) > _788:
                    mem[mem[64] + _788 + 192] = 0
                mem[mem[64] + 96] = 0
                return 32, 96, 128, 0, 0, mem[mem[64] + 160 len ceil32(_788) + 32]
            _416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_416] == mem[_416 + 31 len 1]
            mem[256] = mem[_416 + 31 len 1]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            mem[mem[64] + 128] = 0
            mem[mem[64] + 160 len 0] = None
            mem[mem[64] + 64] = 128
            _790 = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 192 len ceil32(_790)] = mem[ceil32(return_data.size) + 384 len ceil32(_790)]
            if ceil32(_790) > _790:
                mem[mem[64] + _790 + 192] = 0
            mem[mem[64] + 96] = mem[287 len 1]
            return 32, 96, 128, mem[mem[64] + 96], 0, mem[mem[64] + 160 len ceil32(_790) + 32]
        mem[ceil32(return_data.size) + _17 + 384] = 0
        mem[224] = ceil32(return_data.size) + 352
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            mem[mem[64] + 128] = 0
            mem[mem[64] + 160 len 0] = None
            mem[mem[64] + 64] = 128
            _792 = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 192 len ceil32(_792)] = mem[ceil32(return_data.size) + 384 len ceil32(_792)]
            if ceil32(_792) > _792:
                mem[mem[64] + _792 + 192] = 0
            mem[mem[64] + 96] = 0
            return 32, 96, 128, 0, 0, mem[mem[64] + 160 len ceil32(_792) + 32]
        _418 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_418] == mem[_418 + 31 len 1]
        mem[256] = mem[_418 + 31 len 1]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        mem[mem[64] + 128] = 0
        mem[mem[64] + 160 len 0] = None
        mem[mem[64] + 64] = 128
        _794 = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 192 len ceil32(_794)] = mem[ceil32(return_data.size) + 384 len ceil32(_794)]
        if ceil32(_794) > _794:
            mem[mem[64] + _794 + 192] = 0
        mem[mem[64] + 96] = mem[287 len 1]
        return 32, 96, 128, mem[mem[64] + 96], 0, mem[mem[64] + 160 len ceil32(_794) + 32]
    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _9 = mem[352]
    require mem[352] <= test266151307()
    require mem[352] + 383 < return_data.size + 352
    _11 = mem[mem[352] + 352]
    require mem[mem[352] + 352] <= test266151307()
    require ceil32(mem[mem[352] + 352]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[352] + 352]) + 384 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352] + 352]) + 384
    mem[ceil32(return_data.size) + 352] = mem[mem[352] + 352]
    require _9 + _11 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 384 len ceil32(_11)] = mem[_9 + 384 len ceil32(_11)]
    if ceil32(_11) <= _11:
        mem[192] = ceil32(return_data.size) + 352
        mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.name() with:
                gas gas_remaining wei
        if not ext_call.success:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 96
                _466 = mem[ceil32(return_data.size) + 352]
                mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
                mem[mem[64] + 160 len ceil32(_466)] = mem[ceil32(return_data.size) + 384 len ceil32(_466)]
                mem[mem[64] + 64] = ceil32(_466) + 128
                if ceil32(_466) <= _466:
                    mem[mem[64] + 96] = 0
                    return 32, 96, ceil32(_466) + 128, 0, mem[mem[64] + 128 len ceil32(_466) + 32], 0, None
                mem[ceil32(_466) + mem[64] + 160] = 0
                mem[ceil32(_466) + mem[64] + 192 len 0] = None
                mem[mem[64] + 96] = 0
                return 32, 96, ceil32(_466) + 128, 0, mem[mem[64] + 128 len _466 + 32], 0, mem[mem[64] + _466 + 192 len ceil32(_466) - _466]
            _440 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_440] == mem[_440 + 31 len 1]
            mem[256] = mem[_440 + 31 len 1]
            _473 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            _489 = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 160 len ceil32(_489)] = mem[ceil32(return_data.size) + 384 len ceil32(_489)]
            if ceil32(_489) <= _489:
                mem[mem[64] + 64] = ceil32(_489) + 128
                mem[ceil32(_489) + mem[64] + 160] = 0
                mem[ceil32(_489) + mem[64] + 192 len 0] = None
                mem[mem[64] + 96] = mem[287 len 1]
                return 32, 96, ceil32(_489) + 128, mem[mem[64] + 96 len ceil32(_489) + 64], 0, None
            mem[mem[64] + _489 + 160] = 0
            mem[mem[64] + 64] = ceil32(_489) + 128
            mem[ceil32(_489) + _473 + 160] = 0
            mem[ceil32(_489) + _473 + 192 len 0] = None
            mem[_473 + 96] = mem[287 len 1]
            return memory
              from mem[64]
               len ceil32(_489) + _473 + -mem[64] + 192
        _417 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _425 = mem[_417]
        require mem[_417] <= test266151307()
        require _417 + mem[_417] + 31 < _417 + return_data.size
        _441 = mem[_417 + mem[_417]]
        require mem[_417 + mem[_417]] <= test266151307()
        require ceil32(mem[_417 + mem[_417]]) + 32 >= 0 and _417 + ceil32(return_data.size) + ceil32(mem[_417 + mem[_417]]) + 32 <= test266151307()
        mem[64] = _417 + ceil32(return_data.size) + ceil32(mem[_417 + mem[_417]]) + 32
        mem[_417 + ceil32(return_data.size)] = _441
        require _425 + _441 + 32 <= return_data.size
        mem[_417 + ceil32(return_data.size) + 32 len ceil32(_441)] = mem[_417 + _425 + 32 len ceil32(_441)]
        if ceil32(_441) <= _441:
            mem[224] = _417 + ceil32(return_data.size)
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                _870 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 96
                _920 = mem[ceil32(return_data.size) + 352]
                mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
                mem[mem[64] + 160 len ceil32(_920)] = mem[ceil32(return_data.size) + 384 len ceil32(_920)]
                if ceil32(_920) <= _920:
                    mem[mem[64] + 64] = ceil32(_920) + 128
                    mem[ceil32(_920) + mem[64] + 160] = _441
                    mem[ceil32(_920) + mem[64] + 192 len ceil32(_441)] = mem[_417 + ceil32(return_data.size) + 32 len ceil32(_441)]
                    if ceil32(_441) > _441:
                        mem[ceil32(_920) + mem[64] + _441 + 192] = 0
                    mem[mem[64] + 96] = 0
                    return 32, 96, 
                           ceil32(_920) + 128,
                           0,
                           mem[mem[64] + 128 len ceil32(_920) + 32],
                           _441,
                           mem[mem[64] + ceil32(_920) + 192 len ceil32(_441)]
                mem[mem[64] + _920 + 160] = 0
                mem[mem[64] + 64] = ceil32(_920) + 128
                mem[ceil32(_920) + _870 + 160] = _441
                mem[ceil32(_920) + _870 + 192 len ceil32(_441)] = mem[_417 + ceil32(return_data.size) + 32 len ceil32(_441)]
                if ceil32(_441) > _441:
                    mem[ceil32(_920) + _870 + _441 + 192] = 0
                mem[_870 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_441) + ceil32(_920) + _870 + -mem[64] + 192
            _842 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_842] == mem[_842 + 31 len 1]
            mem[256] = mem[_842 + 31 len 1]
            _928 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            _938 = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 160 len ceil32(_938)] = mem[ceil32(return_data.size) + 384 len ceil32(_938)]
            if ceil32(_938) <= _938:
                mem[mem[64] + 64] = ceil32(_938) + 128
                mem[ceil32(_938) + mem[64] + 160] = _441
                mem[ceil32(_938) + mem[64] + 192 len ceil32(_441)] = mem[_417 + ceil32(return_data.size) + 32 len ceil32(_441)]
                if ceil32(_441) > _441:
                    mem[ceil32(_938) + mem[64] + _441 + 192] = 0
                mem[mem[64] + 96] = mem[287 len 1]
                return 32, 96, 
                       ceil32(_938) + 128,
                       mem[mem[64] + 96 len ceil32(_938) + 64],
                       _441,
                       mem[mem[64] + ceil32(_938) + 192 len ceil32(_441)]
            mem[mem[64] + _938 + 160] = 0
            mem[mem[64] + 64] = ceil32(_938) + 128
            mem[ceil32(_938) + _928 + 160] = _441
            mem[ceil32(_938) + _928 + 192 len ceil32(_441)] = mem[_417 + ceil32(return_data.size) + 32 len ceil32(_441)]
            if ceil32(_441) > _441:
                mem[ceil32(_938) + _928 + _441 + 192] = 0
            mem[_928 + 96] = mem[287 len 1]
            return memory
              from mem[64]
               len ceil32(_441) + ceil32(_938) + _928 + -mem[64] + 192
        mem[_417 + ceil32(return_data.size) + _441 + 32] = 0
        mem[224] = _417 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            _890 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            _926 = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 160 len ceil32(_926)] = mem[ceil32(return_data.size) + 384 len ceil32(_926)]
            if ceil32(_926) <= _926:
                mem[mem[64] + 64] = ceil32(_926) + 128
                mem[ceil32(_926) + mem[64] + 160] = _441
                mem[ceil32(_926) + mem[64] + 192 len ceil32(_441)] = mem[_417 + ceil32(return_data.size) + 32 len ceil32(_441)]
                if ceil32(_441) > _441:
                    mem[ceil32(_926) + mem[64] + _441 + 192] = 0
                mem[mem[64] + 96] = 0
                return 32, 96, 
                       ceil32(_926) + 128,
                       0,
                       mem[mem[64] + 128 len ceil32(_926) + 32],
                       _441,
                       mem[mem[64] + ceil32(_926) + 192 len ceil32(_441)]
            mem[mem[64] + _926 + 160] = 0
            mem[mem[64] + 64] = ceil32(_926) + 128
            mem[ceil32(_926) + _890 + 160] = _441
            mem[ceil32(_926) + _890 + 192 len ceil32(_441)] = mem[_417 + ceil32(return_data.size) + 32 len ceil32(_441)]
            if ceil32(_441) > _441:
                mem[ceil32(_926) + _890 + _441 + 192] = 0
            mem[_890 + 96] = 0
            return memory
              from mem[64]
               len ceil32(_441) + ceil32(_926) + _890 + -mem[64] + 192
        _846 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_846] == mem[_846 + 31 len 1]
        mem[256] = mem[_846 + 31 len 1]
        _931 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        _943 = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 160 len ceil32(_943)] = mem[ceil32(return_data.size) + 384 len ceil32(_943)]
        if ceil32(_943) <= _943:
            mem[mem[64] + 64] = ceil32(_943) + 128
            mem[ceil32(_943) + mem[64] + 160] = _441
            mem[ceil32(_943) + mem[64] + 192 len ceil32(_441)] = mem[_417 + ceil32(return_data.size) + 32 len ceil32(_441)]
            if ceil32(_441) > _441:
                mem[ceil32(_943) + mem[64] + _441 + 192] = 0
            mem[mem[64] + 96] = mem[287 len 1]
            return 32, 96, 
                   ceil32(_943) + 128,
                   mem[mem[64] + 96 len ceil32(_943) + 64],
                   _441,
                   mem[mem[64] + ceil32(_943) + 192 len ceil32(_441)]
        mem[mem[64] + _943 + 160] = 0
        mem[mem[64] + 64] = ceil32(_943) + 128
        mem[ceil32(_943) + _931 + 160] = _441
        mem[ceil32(_943) + _931 + 192 len ceil32(_441)] = mem[_417 + ceil32(return_data.size) + 32 len ceil32(_441)]
        if ceil32(_441) > _441:
            mem[ceil32(_943) + _931 + _441 + 192] = 0
        mem[_931 + 96] = mem[287 len 1]
        return memory
          from mem[64]
           len ceil32(_441) + ceil32(_943) + _931 + -mem[64] + 192
    mem[ceil32(return_data.size) + _11 + 384] = 0
    mem[192] = ceil32(return_data.size) + 352
    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            _460 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            _470 = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 160 len ceil32(_470)] = mem[ceil32(return_data.size) + 384 len ceil32(_470)]
            if ceil32(_470) <= _470:
                mem[mem[64] + 64] = ceil32(_470) + 128
                mem[ceil32(_470) + mem[64] + 160] = 0
                mem[ceil32(_470) + mem[64] + 192 len 0] = None
                mem[mem[64] + 96] = 0
                return 32, 96, ceil32(_470) + 128, 0, mem[mem[64] + 128 len ceil32(_470) + 32], 0, None
            mem[mem[64] + _470 + 160] = 0
            mem[mem[64] + 64] = ceil32(_470) + 128
            mem[ceil32(_470) + _460 + 160] = 0
            mem[ceil32(_470) + _460 + 192 len 0] = None
            mem[_460 + 96] = 0
            return memory
              from mem[64]
               len ceil32(_470) + _460 + -mem[64] + 192
        _447 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_447] == mem[_447 + 31 len 1]
        mem[256] = mem[_447 + 31 len 1]
        _479 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        _493 = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 160 len ceil32(_493)] = mem[ceil32(return_data.size) + 384 len ceil32(_493)]
        if ceil32(_493) <= _493:
            mem[mem[64] + 64] = ceil32(_493) + 128
            mem[ceil32(_493) + mem[64] + 160] = 0
            mem[ceil32(_493) + mem[64] + 192 len 0] = None
            mem[mem[64] + 96] = mem[287 len 1]
            return 32, 96, ceil32(_493) + 128, mem[mem[64] + 96 len ceil32(_493) + 64], 0, None
        mem[mem[64] + _493 + 160] = 0
        mem[mem[64] + 64] = ceil32(_493) + 128
        mem[ceil32(_493) + _479 + 160] = 0
        mem[ceil32(_493) + _479 + 192 len 0] = None
        mem[_479 + 96] = mem[287 len 1]
        return memory
          from mem[64]
           len ceil32(_493) + _479 + -mem[64] + 192
    _419 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _434 = mem[_419]
    require mem[_419] <= test266151307()
    require _419 + mem[_419] + 31 < _419 + return_data.size
    _448 = mem[_419 + mem[_419]]
    require mem[_419 + mem[_419]] <= test266151307()
    require ceil32(mem[_419 + mem[_419]]) + 32 >= 0 and _419 + ceil32(return_data.size) + ceil32(mem[_419 + mem[_419]]) + 32 <= test266151307()
    mem[64] = _419 + ceil32(return_data.size) + ceil32(mem[_419 + mem[_419]]) + 32
    mem[_419 + ceil32(return_data.size)] = _448
    require _434 + _448 + 32 <= return_data.size
    mem[_419 + ceil32(return_data.size) + 32 len ceil32(_448)] = mem[_419 + _434 + 32 len ceil32(_448)]
    if ceil32(_448) <= _448:
        mem[224] = _419 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            _876 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            _924 = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 160 len ceil32(_924)] = mem[ceil32(return_data.size) + 384 len ceil32(_924)]
            if ceil32(_924) <= _924:
                mem[mem[64] + 64] = ceil32(_924) + 128
                mem[ceil32(_924) + mem[64] + 160] = _448
                mem[ceil32(_924) + mem[64] + 192 len ceil32(_448)] = mem[_419 + ceil32(return_data.size) + 32 len ceil32(_448)]
                if ceil32(_448) > _448:
                    mem[ceil32(_924) + mem[64] + _448 + 192] = 0
                mem[mem[64] + 96] = 0
                return 32, 96, 
                       ceil32(_924) + 128,
                       0,
                       mem[mem[64] + 128 len ceil32(_924) + 32],
                       _448,
                       mem[mem[64] + ceil32(_924) + 192 len ceil32(_448)]
            mem[mem[64] + _924 + 160] = 0
            mem[mem[64] + 64] = ceil32(_924) + 128
            mem[ceil32(_924) + _876 + 160] = _448
            mem[ceil32(_924) + _876 + 192 len ceil32(_448)] = mem[_419 + ceil32(return_data.size) + 32 len ceil32(_448)]
            if ceil32(_448) > _448:
                mem[ceil32(_924) + _876 + _448 + 192] = 0
            mem[_876 + 96] = 0
            return memory
              from mem[64]
               len ceil32(_448) + ceil32(_924) + _876 + -mem[64] + 192
        _845 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_845] == mem[_845 + 31 len 1]
        mem[256] = mem[_845 + 31 len 1]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        _940 = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 160 len ceil32(_940)] = mem[ceil32(return_data.size) + 384 len ceil32(_940)]
        if ceil32(_940) <= _940:
            mem[mem[64] + 64] = ceil32(_940) + 128
            mem[ceil32(_940) + mem[64] + 160] = _448
            mem[ceil32(_940) + mem[64] + 192 len ceil32(_448)] = mem[_419 + ceil32(return_data.size) + 32 len ceil32(_448)]
            if ceil32(_448) > _448:
                mem[ceil32(_940) + mem[64] + _448 + 192] = 0
            mem[mem[64] + 96] = mem[287 len 1]
            return 32, 96, 
                   ceil32(_940) + 128,
                   mem[mem[64] + 96 len ceil32(_940) + 64],
                   _448,
                   mem[mem[64] + ceil32(_940) + 192 len ceil32(_448)]
        mem[mem[64] + _940 + 160] = 0
        mem[mem[64] + 64] = ceil32(_940) + 128
        mem[ceil32(_940) + mem[64] + 160] = _448
        mem[ceil32(_940) + mem[64] + 192 len ceil32(_448)] = mem[_419 + ceil32(return_data.size) + 32 len ceil32(_448)]
        if ceil32(_448) > _448:
            mem[ceil32(_940) + mem[64] + _448 + 192] = 0
        mem[mem[64] + 96] = mem[287 len 1]
        return 32, 96, 
               ceil32(_940) + 128,
               mem[mem[64] + 96 len _940 + 64],
               0,
               mem[mem[64] + _940 + 192 len ceil32(_448) + ceil32(_940) - _940]
    mem[_419 + ceil32(return_data.size) + _448 + 32] = 0
    mem[224] = _419 + ceil32(return_data.size)
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        _927 = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 160 len ceil32(_927)] = mem[ceil32(return_data.size) + 384 len ceil32(_927)]
        if ceil32(_927) <= _927:
            mem[mem[64] + 64] = ceil32(_927) + 128
            mem[ceil32(_927) + mem[64] + 160] = _448
            mem[ceil32(_927) + mem[64] + 192 len ceil32(_448)] = mem[_419 + ceil32(return_data.size) + 32 len ceil32(_448)]
            if ceil32(_448) > _448:
                mem[ceil32(_927) + mem[64] + _448 + 192] = 0
            mem[mem[64] + 96] = 0
            return 32, 96, 
                   ceil32(_927) + 128,
                   0,
                   mem[mem[64] + 128 len ceil32(_927) + 32],
                   _448,
                   mem[mem[64] + ceil32(_927) + 192 len ceil32(_448)]
        mem[mem[64] + _927 + 160] = 0
        mem[mem[64] + 64] = ceil32(_927) + 128
        mem[ceil32(_927) + mem[64] + 160] = _448
        mem[ceil32(_927) + mem[64] + 192 len ceil32(_448)] = mem[_419 + ceil32(return_data.size) + 32 len ceil32(_448)]
        if ceil32(_448) > _448:
            mem[ceil32(_927) + mem[64] + _448 + 192] = 0
        mem[mem[64] + 96] = 0
        return 32, 96, 
               ceil32(_927) + 128,
               0,
               mem[mem[64] + 128 len _927 + 32],
               0,
               mem[mem[64] + _927 + 192 len ceil32(_448) + ceil32(_927) - _927]
    _847 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_847] == mem[_847 + 31 len 1]
    mem[256] = mem[_847 + 31 len 1]
    _933 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    _945 = mem[ceil32(return_data.size) + 352]
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 352]
    mem[mem[64] + 160 len ceil32(_945)] = mem[ceil32(return_data.size) + 384 len ceil32(_945)]
    if ceil32(_945) <= _945:
        mem[mem[64] + 64] = ceil32(_945) + 128
        mem[ceil32(_945) + mem[64] + 160] = _448
        mem[ceil32(_945) + mem[64] + 192 len ceil32(_448)] = mem[_419 + ceil32(return_data.size) + 32 len ceil32(_448)]
        if ceil32(_448) > _448:
            mem[ceil32(_945) + mem[64] + _448 + 192] = 0
        mem[mem[64] + 96] = mem[287 len 1]
        return 32, 96, 
               ceil32(_945) + 128,
               mem[mem[64] + 96 len ceil32(_945) + 64],
               _448,
               mem[mem[64] + ceil32(_945) + 192 len ceil32(_448)]
    mem[mem[64] + _945 + 160] = 0
    mem[mem[64] + 64] = ceil32(_945) + 128
    mem[ceil32(_945) + _933 + 160] = _448
    mem[ceil32(_945) + _933 + 192 len ceil32(_448)] = mem[_419 + ceil32(return_data.size) + 32 len ceil32(_448)]
    if ceil32(_448) > _448:
        mem[ceil32(_945) + _933 + _448 + 192] = 0
    mem[_933 + 96] = mem[287 len 1]
    return memory
      from mem[64]
       len ceil32(_448) + ceil32(_945) + _933 + -mem[64] + 192
}

function getTokensInfo(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _432 = mem[(32 * idx) + 128]
            _434 = mem[64]
            mem[64] = mem[64] + 96
            mem[_434] = 96
            mem[_434 + 32] = 96
            mem[_434 + 64] = 0
            _436 = mem[64]
            mem[64] = mem[64] + 128
            mem[_436 + 96] = 0
            mem[_436] = _436 + 96
            _437 = mem[64]
            mem[64] = mem[64] + 32
            mem[_437] = 0
            mem[_436 + 32] = _437
            mem[_436 + 64] = 0
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_432))
            staticcall address(_432).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_432))
                staticcall address(_432).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    require ext_code.size(address(_432))
                    staticcall address(_432).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if ext_call.success:
                        _476 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_476] == mem[_476 + 31 len 1]
                        mem[_436 + 64] = mem[_476 + 31 len 1]
                else:
                    _459 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _468 = mem[_459]
                    require mem[_459] <= test266151307()
                    require _459 + mem[_459] + 31 < _459 + return_data.size
                    _477 = mem[_459 + mem[_459]]
                    require mem[_459 + mem[_459]] <= test266151307()
                    require ceil32(mem[_459 + mem[_459]]) + 32 >= 0 and _459 + ceil32(return_data.size) + ceil32(mem[_459 + mem[_459]]) + 32 <= test266151307()
                    mem[64] = _459 + ceil32(return_data.size) + ceil32(mem[_459 + mem[_459]]) + 32
                    mem[_459 + ceil32(return_data.size)] = _477
                    require _468 + _477 + 32 <= return_data.size
                    s = 0
                    while s < _477:
                        mem[s + _459 + ceil32(return_data.size) + 32] = mem[s + _459 + _468 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_477) <= _477:
                        mem[_436 + 32] = _459 + ceil32(return_data.size)
                        require ext_code.size(address(_432))
                        staticcall address(_432).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            _662 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_662] == mem[_662 + 31 len 1]
                            mem[_436 + 64] = mem[_662 + 31 len 1]
                    else:
                        mem[_459 + ceil32(return_data.size) + _477 + 32] = 0
                        mem[_436 + 32] = _459 + ceil32(return_data.size)
                        require ext_code.size(address(_432))
                        staticcall address(_432).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            _671 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_671] == mem[_671 + 31 len 1]
                            mem[_436 + 64] = mem[_671 + 31 len 1]
            else:
                _445 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _451 = mem[_445]
                require mem[_445] <= test266151307()
                require _445 + mem[_445] + 31 < _445 + return_data.size
                _460 = mem[_445 + mem[_445]]
                require mem[_445 + mem[_445]] <= test266151307()
                require ceil32(mem[_445 + mem[_445]]) + 32 >= 0 and _445 + ceil32(return_data.size) + ceil32(mem[_445 + mem[_445]]) + 32 <= test266151307()
                mem[64] = _445 + ceil32(return_data.size) + ceil32(mem[_445 + mem[_445]]) + 32
                mem[_445 + ceil32(return_data.size)] = _460
                require _451 + _460 + 32 <= return_data.size
                s = 0
                while s < _460:
                    mem[s + _445 + ceil32(return_data.size) + 32] = mem[s + _445 + _451 + 32]
                    s = s + 32
                    continue 
                if ceil32(_460) <= _460:
                    mem[_436] = _445 + ceil32(return_data.size)
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_432))
                    staticcall address(_432).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        require ext_code.size(address(_432))
                        staticcall address(_432).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            _689 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_689] == mem[_689 + 31 len 1]
                            mem[_436 + 64] = mem[_689 + 31 len 1]
                    else:
                        _663 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _679 = mem[_663]
                        require mem[_663] <= test266151307()
                        require _663 + mem[_663] + 31 < _663 + return_data.size
                        _690 = mem[_663 + mem[_663]]
                        require mem[_663 + mem[_663]] <= test266151307()
                        require ceil32(mem[_663 + mem[_663]]) + 32 >= 0 and _663 + ceil32(return_data.size) + ceil32(mem[_663 + mem[_663]]) + 32 <= test266151307()
                        mem[64] = _663 + ceil32(return_data.size) + ceil32(mem[_663 + mem[_663]]) + 32
                        mem[_663 + ceil32(return_data.size)] = _690
                        require _679 + _690 + 32 <= return_data.size
                        s = 0
                        while s < _690:
                            mem[s + _663 + ceil32(return_data.size) + 32] = mem[s + _663 + _679 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_690) <= _690:
                            mem[_436 + 32] = _663 + ceil32(return_data.size)
                            require ext_code.size(address(_432))
                            staticcall address(_432).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if ext_call.success:
                                _856 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_856] == mem[_856 + 31 len 1]
                                mem[_436 + 64] = mem[_856 + 31 len 1]
                        else:
                            mem[_663 + ceil32(return_data.size) + _690 + 32] = 0
                            mem[_436 + 32] = _663 + ceil32(return_data.size)
                            require ext_code.size(address(_432))
                            staticcall address(_432).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if ext_call.success:
                                _861 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_861] == mem[_861 + 31 len 1]
                                mem[_436 + 64] = mem[_861 + 31 len 1]
                else:
                    mem[_445 + ceil32(return_data.size) + _460 + 32] = 0
                    mem[_436] = _445 + ceil32(return_data.size)
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_432))
                    staticcall address(_432).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        require ext_code.size(address(_432))
                        staticcall address(_432).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            _695 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_695] == mem[_695 + 31 len 1]
                            mem[_436 + 64] = mem[_695 + 31 len 1]
                    else:
                        _672 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _686 = mem[_672]
                        require mem[_672] <= test266151307()
                        require _672 + mem[_672] + 31 < _672 + return_data.size
                        _696 = mem[_672 + mem[_672]]
                        require mem[_672 + mem[_672]] <= test266151307()
                        require ceil32(mem[_672 + mem[_672]]) + 32 >= 0 and _672 + ceil32(return_data.size) + ceil32(mem[_672 + mem[_672]]) + 32 <= test266151307()
                        mem[64] = _672 + ceil32(return_data.size) + ceil32(mem[_672 + mem[_672]]) + 32
                        mem[_672 + ceil32(return_data.size)] = _696
                        require _686 + _696 + 32 <= return_data.size
                        s = 0
                        while s < _696:
                            mem[s + _672 + ceil32(return_data.size) + 32] = mem[s + _672 + _686 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_696) <= _696:
                            mem[_436 + 32] = _672 + ceil32(return_data.size)
                            require ext_code.size(address(_432))
                            staticcall address(_432).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if ext_call.success:
                                _857 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_857] == mem[_857 + 31 len 1]
                                mem[_436 + 64] = mem[_857 + 31 len 1]
                        else:
                            mem[_672 + ceil32(return_data.size) + _696 + 32] = 0
                            mem[_436 + 32] = _672 + ceil32(return_data.size)
                            require ext_code.size(address(_432))
                            staticcall address(_432).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if ext_call.success:
                                _862 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_862] == mem[_862 + 31 len 1]
                                mem[_436 + 64] = mem[_862 + 31 len 1]
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = _436
            idx = idx + 1
            continue 
        _431 = mem[64]
        mem[mem[64]] = 32
        _433 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        u = mem[64] + (32 * _433) + 64
        while idx < _433:
            mem[t] = u + -_431 - 64
            _640 = mem[s]
            _644 = mem[mem[s]]
            mem[u] = 96
            _645 = mem[_644]
            mem[u + 96] = mem[_644]
            v = 0
            while v < _645:
                mem[v + u + 128] = mem[v + _644 + 32]
                v = v + 32
                continue 
            if ceil32(_645) <= _645:
                _832 = mem[_640 + 32]
                mem[u + 32] = ceil32(_645) + 128
                _834 = mem[_832]
                mem[ceil32(_645) + u + 128] = mem[_832]
                v = 0
                while v < _834:
                    mem[v + ceil32(_645) + u + 160] = mem[v + _832 + 32]
                    v = v + 32
                    continue 
                if ceil32(_834) > _834:
                    mem[ceil32(_645) + u + _834 + 160] = 0
                mem[u + 64] = mem[_640 + 95 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_834) + ceil32(_645) + u + 160
                continue 
            mem[u + _645 + 128] = 0
            _835 = mem[_640 + 32]
            mem[u + 32] = ceil32(_645) + 128
            _841 = mem[_835]
            mem[ceil32(_645) + u + 128] = mem[_835]
            v = 0
            while v < _841:
                mem[v + ceil32(_645) + u + 160] = mem[v + _835 + 32]
                v = v + 32
                continue 
            if ceil32(_841) > _841:
                mem[ceil32(_645) + u + _841 + 160] = 0
            mem[u + 64] = mem[_640 + 95 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_841) + ceil32(_645) + u + 160
            continue 
    else:
        mem[64] = (64 * arg1.length) + 256
        mem[(64 * arg1.length) + 160] = 96
        mem[(64 * arg1.length) + 192] = 96
        mem[(64 * arg1.length) + 224] = 0
        mem[var23001] = (64 * arg1.length) + 160
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(64 * arg1.length) + 160] = 96
            mem[(64 * arg1.length) + 192] = 96
            mem[(64 * arg1.length) + 224] = 0
            mem[s + 32] = (64 * arg1.length) + 160
            s = s + 32
            idx = idx - 1
            continue 
        _824 = mem[96]
        idx = 0
        while idx < _824:
            require idx < mem[96]
            _830 = mem[(32 * idx) + 128]
            _833 = mem[64]
            mem[64] = mem[64] + 96
            mem[_833] = 96
            mem[_833 + 32] = 96
            mem[_833 + 64] = 0
            _837 = mem[64]
            mem[64] = mem[64] + 128
            mem[_837 + 96] = 0
            mem[_837] = _837 + 96
            _838 = mem[64]
            mem[64] = mem[64] + 32
            mem[_838] = 0
            mem[_837 + 32] = _838
            mem[_837 + 64] = 0
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_830))
            staticcall address(_830).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_830))
                staticcall address(_830).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    require ext_code.size(address(_830))
                    staticcall address(_830).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if ext_call.success:
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 31 len 1]
                        mem[_837 + 64] = mem[_886 + 31 len 1]
                else:
                    _867 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _881 = mem[_867]
                    require mem[_867] <= test266151307()
                    require _867 + mem[_867] + 31 < _867 + return_data.size
                    _887 = mem[_867 + mem[_867]]
                    require mem[_867 + mem[_867]] <= test266151307()
                    require ceil32(mem[_867 + mem[_867]]) + 32 >= 0 and _867 + ceil32(return_data.size) + ceil32(mem[_867 + mem[_867]]) + 32 <= test266151307()
                    mem[64] = _867 + ceil32(return_data.size) + ceil32(mem[_867 + mem[_867]]) + 32
                    mem[_867 + ceil32(return_data.size)] = _887
                    require _881 + _887 + 32 <= return_data.size
                    s = 0
                    while s < _887:
                        mem[s + _867 + ceil32(return_data.size) + 32] = mem[s + _867 + _881 + 32]
                        _824 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_887) <= _887:
                        mem[_837 + 32] = _867 + ceil32(return_data.size)
                        require ext_code.size(address(_830))
                        staticcall address(_830).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            _988 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_988] == mem[_988 + 31 len 1]
                            mem[_837 + 64] = mem[_988 + 31 len 1]
                    else:
                        mem[_867 + ceil32(return_data.size) + _887 + 32] = 0
                        mem[_837 + 32] = _867 + ceil32(return_data.size)
                        require ext_code.size(address(_830))
                        staticcall address(_830).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            _992 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_992] == mem[_992 + 31 len 1]
                            mem[_837 + 64] = mem[_992 + 31 len 1]
            else:
                _849 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _860 = mem[_849]
                require mem[_849] <= test266151307()
                require _849 + mem[_849] + 31 < _849 + return_data.size
                _868 = mem[_849 + mem[_849]]
                require mem[_849 + mem[_849]] <= test266151307()
                require ceil32(mem[_849 + mem[_849]]) + 32 >= 0 and _849 + ceil32(return_data.size) + ceil32(mem[_849 + mem[_849]]) + 32 <= test266151307()
                mem[64] = _849 + ceil32(return_data.size) + ceil32(mem[_849 + mem[_849]]) + 32
                mem[_849 + ceil32(return_data.size)] = _868
                require _860 + _868 + 32 <= return_data.size
                s = 0
                while s < _868:
                    mem[s + _849 + ceil32(return_data.size) + 32] = mem[s + _849 + _860 + 32]
                    _824 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_868) <= _868:
                    mem[_837] = _849 + ceil32(return_data.size)
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_830))
                    staticcall address(_830).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        require ext_code.size(address(_830))
                        staticcall address(_830).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            _1006 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1006] == mem[_1006 + 31 len 1]
                            mem[_837 + 64] = mem[_1006 + 31 len 1]
                    else:
                        _989 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _998 = mem[_989]
                        require mem[_989] <= test266151307()
                        require _989 + mem[_989] + 31 < _989 + return_data.size
                        _1007 = mem[_989 + mem[_989]]
                        require mem[_989 + mem[_989]] <= test266151307()
                        require ceil32(mem[_989 + mem[_989]]) + 32 >= 0 and _989 + ceil32(return_data.size) + ceil32(mem[_989 + mem[_989]]) + 32 <= test266151307()
                        mem[64] = _989 + ceil32(return_data.size) + ceil32(mem[_989 + mem[_989]]) + 32
                        mem[_989 + ceil32(return_data.size)] = _1007
                        require _998 + _1007 + 32 <= return_data.size
                        s = 0
                        while s < _1007:
                            mem[s + _989 + ceil32(return_data.size) + 32] = mem[s + _989 + _998 + 32]
                            _824 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_1007) <= _1007:
                            mem[_837 + 32] = _989 + ceil32(return_data.size)
                            require ext_code.size(address(_830))
                            staticcall address(_830).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if ext_call.success:
                                _1068 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1068] == mem[_1068 + 31 len 1]
                                mem[_837 + 64] = mem[_1068 + 31 len 1]
                        else:
                            mem[_989 + ceil32(return_data.size) + _1007 + 32] = 0
                            mem[_837 + 32] = _989 + ceil32(return_data.size)
                            require ext_code.size(address(_830))
                            staticcall address(_830).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if ext_call.success:
                                _1070 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1070] == mem[_1070 + 31 len 1]
                                mem[_837 + 64] = mem[_1070 + 31 len 1]
                else:
                    mem[_849 + ceil32(return_data.size) + _868 + 32] = 0
                    mem[_837] = _849 + ceil32(return_data.size)
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_830))
                    staticcall address(_830).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        require ext_code.size(address(_830))
                        staticcall address(_830).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            _1009 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1009] == mem[_1009 + 31 len 1]
                            mem[_837 + 64] = mem[_1009 + 31 len 1]
                    else:
                        _993 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1003 = mem[_993]
                        require mem[_993] <= test266151307()
                        require _993 + mem[_993] + 31 < _993 + return_data.size
                        _1010 = mem[_993 + mem[_993]]
                        require mem[_993 + mem[_993]] <= test266151307()
                        require ceil32(mem[_993 + mem[_993]]) + 32 >= 0 and _993 + ceil32(return_data.size) + ceil32(mem[_993 + mem[_993]]) + 32 <= test266151307()
                        mem[64] = _993 + ceil32(return_data.size) + ceil32(mem[_993 + mem[_993]]) + 32
                        mem[_993 + ceil32(return_data.size)] = _1010
                        require _1003 + _1010 + 32 <= return_data.size
                        s = 0
                        while s < _1010:
                            mem[s + _993 + ceil32(return_data.size) + 32] = mem[s + _993 + _1003 + 32]
                            _824 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_1010) <= _1010:
                            mem[_837 + 32] = _993 + ceil32(return_data.size)
                            require ext_code.size(address(_830))
                            staticcall address(_830).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if ext_call.success:
                                _1069 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1069] == mem[_1069 + 31 len 1]
                                mem[_837 + 64] = mem[_1069 + 31 len 1]
                        else:
                            mem[_993 + ceil32(return_data.size) + _1010 + 32] = 0
                            mem[_837 + 32] = _993 + ceil32(return_data.size)
                            require ext_code.size(address(_830))
                            staticcall address(_830).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if ext_call.success:
                                _1071 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1071] == mem[_1071 + 31 len 1]
                                mem[_837 + 64] = mem[_1071 + 31 len 1]
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = _837
            _824 = mem[96]
            idx = idx + 1
            continue 
        _829 = mem[64]
        mem[mem[64]] = 32
        _831 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        u = mem[64] + (32 * _831) + 64
        while idx < _831:
            mem[t] = u + -_829 - 64
            _968 = mem[s]
            _972 = mem[mem[s]]
            mem[u] = 96
            _973 = mem[_972]
            mem[u + 96] = mem[_972]
            v = 0
            while v < _973:
                mem[v + u + 128] = mem[v + _972 + 32]
                v = v + 32
                continue 
            if ceil32(_973) <= _973:
                _1054 = mem[_968 + 32]
                mem[u + 32] = ceil32(_973) + 128
                _1055 = mem[_1054]
                mem[ceil32(_973) + u + 128] = mem[_1054]
                v = 0
                while v < _1055:
                    mem[v + ceil32(_973) + u + 160] = mem[v + _1054 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1055) > _1055:
                    mem[ceil32(_973) + u + _1055 + 160] = 0
                mem[u + 64] = mem[_968 + 95 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1055) + ceil32(_973) + u + 160
                continue 
            mem[u + _973 + 128] = 0
            _1056 = mem[_968 + 32]
            mem[u + 32] = ceil32(_973) + 128
            _1057 = mem[_1056]
            mem[ceil32(_973) + u + 128] = mem[_1056]
            v = 0
            while v < _1057:
                mem[v + ceil32(_973) + u + 160] = mem[v + _1056 + 32]
                v = v + 32
                continue 
            if ceil32(_1057) > _1057:
                mem[ceil32(_973) + u + _1057 + 160] = 0
            mem[u + 64] = mem[_968 + 95 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_1057) + ceil32(_973) + u + 160
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
