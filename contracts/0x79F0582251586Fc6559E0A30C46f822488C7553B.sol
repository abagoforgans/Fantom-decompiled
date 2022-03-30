contract main {




// =====================  Runtime code  =====================


#
#  - getAssets()
#
const sub_73ee568a(?) = 'v2Adapter', 0


address registryAddress;

function registryAddress() payable {
    return registryAddress
}

function _fallback() payable {
    revert
}

function sub_594d62ce(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return arg2 << 192, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function sub_a89d490c(?) payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(registryAddress)
        staticcall registryAddress.tokens(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20 = mem[_19]
        require mem[_19] == mem[_19 + 12 len 20]
        mem[mem[64] + 4] = mem[_19 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_20)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_23] == mem[_23]
        if s > -mem[_23] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_23]
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}

function getAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 0
    mem[160] = 96
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[192] = 224
    mem[352] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _6 = mem[352]
    require mem[352] <= test266151307()
    require mem[352] + 383 < return_data.size + 352
    _7 = mem[mem[352] + 352]
    if mem[mem[352] + 352] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[352] + 352])) + 353 > test266151307() or ceil32(ceil32(mem[mem[352] + 352])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[352] + 352])) + 353
    mem[ceil32(return_data.size) + 352] = mem[mem[352] + 352]
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 384 len ceil32(_7)] = mem[_6 + 384 len ceil32(_7)]
    if ceil32(_7) <= _7:
        require ext_code.size(arg1)
        staticcall arg1.totalAssets() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _193 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _195 = mem[_193]
        require mem[_193] == mem[_193]
        require ext_code.size(arg1)
        staticcall arg1.totalSupply() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _203 = mem[_201]
        require mem[_201] == mem[_201]
        _205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_205] = 4
        mem[_205 + 32] = '0.00'
        if not _203:
            _206 = mem[64]
            mem[64] = mem[64] + 128
            mem[_206] = arg1
            mem[_206 + 32] = _195
            mem[_206 + 64] = _203
            mem[_206 + 96] = 0
            _207 = mem[64]
            mem[64] = mem[64] + 128
            mem[_207] = ceil32(return_data.size) + 352
            mem[_207 + 32] = arg1
            mem[_207 + 64] = _205
            mem[_207 + 96] = _206
            _211 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 224
            _221 = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 288 len ceil32(_221)] = mem[ceil32(return_data.size) + 384 len ceil32(_221)]
            if ceil32(_221) <= _221:
                mem[mem[64] + 64] = uint64(arg1) << 96
                mem[mem[64] + 96] = ceil32(_221) + 256
                mem[mem[64] + ceil32(_221) + 288] = 4
                mem[mem[64] + ceil32(_221) + 320] = '0.00'
                mem[mem[64] + ceil32(_221) + 324] = 0
                return 32, 224, 
                       arg1 << 192,
                       ceil32(_221) + 256,
                       arg1 << 192,
                       _195,
                       _203,
                       0,
                       mem[mem[64] + 256 len ceil32(_221) + 32],
                       4,
                       '0.00',
                       0
            mem[mem[64] + _221 + 288] = 0
            mem[mem[64] + 64] = uint64(arg1) << 96
            mem[_211 + 96] = ceil32(_221) + 256
            mem[_211 + ceil32(_221) + 288] = 4
            mem[_211 + ceil32(_221) + 320] = '0.00'
            mem[_211 + ceil32(_221) + 324] = 0
            mem[_211 + 128] = uint64(arg1) << 96
            mem[_211 + 160] = _195
            mem[_211 + 192] = _203
            mem[_211 + 224] = 0
            return memory
              from mem[64]
               len _211 + ceil32(_221) + -mem[64] + 352
        require ext_code.size(arg1)
        staticcall arg1.pricePerShare() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _222 = mem[_216]
        require mem[_216] == mem[_216]
        _227 = mem[64]
        mem[64] = mem[64] + 128
        mem[_227] = arg1
        mem[_227 + 32] = _195
        mem[_227 + 64] = _203
        mem[_227 + 96] = _222
        _228 = mem[64]
        mem[64] = mem[64] + 128
        mem[_228] = ceil32(return_data.size) + 352
        mem[_228 + 32] = arg1
        mem[_228 + 64] = _205
        mem[_228 + 96] = _227
        _229 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 224
        _238 = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 288 len ceil32(_238)] = mem[ceil32(return_data.size) + 384 len ceil32(_238)]
        if ceil32(_238) <= _238:
            mem[mem[64] + 64] = uint64(arg1) << 96
            mem[mem[64] + 96] = ceil32(_238) + 256
            mem[mem[64] + ceil32(_238) + 288] = 4
            mem[mem[64] + ceil32(_238) + 320] = '0.00'
            mem[mem[64] + ceil32(_238) + 324] = 0
            return 32, 224, 
                   arg1 << 192,
                   ceil32(_238) + 256,
                   arg1 << 192,
                   _195,
                   _203,
                   _222,
                   mem[mem[64] + 256 len ceil32(_238) + 32],
                   4,
                   '0.00',
                   0
        mem[mem[64] + _238 + 288] = 0
        mem[mem[64] + 64] = uint64(arg1) << 96
        mem[_229 + 96] = ceil32(_238) + 256
        mem[_229 + ceil32(_238) + 288] = 4
        mem[_229 + ceil32(_238) + 320] = '0.00'
        mem[_229 + ceil32(_238) + 324] = 0
        mem[_229 + 128] = uint64(arg1) << 96
        mem[_229 + 160] = _195
        mem[_229 + 192] = _203
        mem[_229 + 224] = _222
        return memory
          from mem[64]
           len _229 + ceil32(_238) + -mem[64] + 352
    mem[ceil32(return_data.size) + _7 + 384] = 0
    require ext_code.size(arg1)
    staticcall arg1.totalAssets() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _194 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _196 = mem[_194]
    require mem[_194] == mem[_194]
    require ext_code.size(arg1)
    staticcall arg1.totalSupply() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _202 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _204 = mem[_202]
    require mem[_202] == mem[_202]
    _210 = mem[64]
    mem[64] = mem[64] + 64
    mem[_210] = 4
    mem[_210 + 32] = '0.00'
    if not _204:
        _212 = mem[64]
        mem[64] = mem[64] + 128
        mem[_212] = arg1
        mem[_212 + 32] = _196
        mem[_212 + 64] = _204
        mem[_212 + 96] = 0
        _213 = mem[64]
        mem[64] = mem[64] + 128
        mem[_213] = ceil32(return_data.size) + 352
        mem[_213 + 32] = arg1
        mem[_213 + 64] = _210
        mem[_213 + 96] = _212
        _217 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 224
        _223 = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 288 len ceil32(_223)] = mem[ceil32(return_data.size) + 384 len ceil32(_223)]
        if ceil32(_223) <= _223:
            mem[mem[64] + 64] = uint64(arg1) << 96
            mem[mem[64] + 96] = ceil32(_223) + 256
            mem[mem[64] + ceil32(_223) + 288] = 4
            mem[mem[64] + ceil32(_223) + 320] = '0.00'
            mem[mem[64] + ceil32(_223) + 324] = 0
            return 32, 224, 
                   arg1 << 192,
                   ceil32(_223) + 256,
                   arg1 << 192,
                   _196,
                   _204,
                   0,
                   mem[mem[64] + 256 len ceil32(_223) + 32],
                   4,
                   '0.00',
                   0
        mem[mem[64] + _223 + 288] = 0
        mem[mem[64] + 64] = uint64(arg1) << 96
        mem[_217 + 96] = ceil32(_223) + 256
        mem[_217 + ceil32(_223) + 288] = 4
        mem[_217 + ceil32(_223) + 320] = '0.00'
        mem[_217 + ceil32(_223) + 324] = 0
        mem[_217 + 128] = uint64(arg1) << 96
        mem[_217 + 160] = _196
        mem[_217 + 192] = _204
        mem[_217 + 224] = 0
        return memory
          from mem[64]
           len _217 + ceil32(_223) + -mem[64] + 352
    require ext_code.size(arg1)
    staticcall arg1.pricePerShare() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _219 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _224 = mem[_219]
    require mem[_219] == mem[_219]
    _230 = mem[64]
    mem[64] = mem[64] + 128
    mem[_230] = arg1
    mem[_230 + 32] = _196
    mem[_230 + 64] = _204
    mem[_230 + 96] = _224
    _231 = mem[64]
    mem[64] = mem[64] + 128
    mem[_231] = ceil32(return_data.size) + 352
    mem[_231 + 32] = arg1
    mem[_231 + 64] = _210
    mem[_231 + 96] = _230
    _232 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 224
    _240 = mem[ceil32(return_data.size) + 352]
    mem[mem[64] + 256] = mem[ceil32(return_data.size) + 352]
    mem[mem[64] + 288 len ceil32(_240)] = mem[ceil32(return_data.size) + 384 len ceil32(_240)]
    if ceil32(_240) <= _240:
        mem[mem[64] + 64] = uint64(arg1) << 96
        mem[mem[64] + 96] = ceil32(_240) + 256
        mem[mem[64] + ceil32(_240) + 288] = 4
        mem[mem[64] + ceil32(_240) + 320] = '0.00'
        mem[mem[64] + ceil32(_240) + 324] = 0
        return 32, 224, 
               arg1 << 192,
               ceil32(_240) + 256,
               arg1 << 192,
               _196,
               _204,
               _224,
               mem[mem[64] + 256 len ceil32(_240) + 32],
               4,
               '0.00',
               0
    mem[mem[64] + _240 + 288] = 0
    mem[mem[64] + 64] = uint64(arg1) << 96
    mem[_232 + 96] = ceil32(_240) + 256
    mem[_232 + ceil32(_240) + 288] = 4
    mem[_232 + ceil32(_240) + 320] = '0.00'
    mem[_232 + ceil32(_240) + 324] = 0
    mem[_232 + 128] = uint64(arg1) << 96
    mem[_232 + 160] = _196
    mem[_232 + 192] = _204
    mem[_232 + 224] = _224
    return memory
      from mem[64]
       len _232 + ceil32(_240) + -mem[64] + 352
}

function sub_bdb6ad48(?) payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(registryAddress)
        staticcall registryAddress.tokens(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _47 = mem[_45]
        require mem[_45] == mem[_45 + 12 len 20]
        mem[mem[64] + 4] = mem[_45 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_47)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_65] == mem[_65]
        if s > -mem[_65] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_65]
        continue 
    if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    _36 = mem[64]
    if not s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
        require ext_code.size(registryAddress)
        staticcall registryAddress.numTokens() with:
                gas gas_remaining wei
        mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _36 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
        require return_data.size >= 32
        require ext_call.return_data[0], None == ext_call.return_data[0], None
        idx = 0
        while idx < ext_call.return_data[0], None:
            mem[mem[64] + 4] = idx
            require ext_code.size(registryAddress)
            staticcall registryAddress.tokens(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _94 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _97 = mem[_94]
            require mem[_94] == mem[_94 + 12 len 20]
            mem[mem[64] + 4] = mem[_94 + 12 len 20]
            require ext_code.size(registryAddress)
            staticcall registryAddress.numVaults(address rg1) with:
                    gas gas_remaining wei
                   args address(_97)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _108 = mem[_106]
            require mem[_106] == mem[_106]
            s = 0
            t = 0
            while s < _108:
                mem[mem[64] + 4] = address(_97)
                mem[mem[64] + 36] = s
                require ext_code.size(registryAddress)
                staticcall registryAddress.vaults(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_97), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _128 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_128] == mem[_128 + 12 len 20]
                if t >= mem[_36]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _36 + 32] = mem[_128 + 12 len 20]
                if t == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _88 = mem[64]
        mem[mem[64]] = 32
        _90 = mem[_36]
        mem[mem[64] + 32] = mem[_36]
        idx = 0
        s = _36 + 32
        t = mem[64] + 64
        while idx < _90:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _88 + (32 * _90) + -mem[64] + 64
    mem[mem[64] + 32 len 32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]] = call.data[calldata.size len 32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]]
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _36 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
    require return_data.size >= 32
    require ext_call.return_data[0], None == ext_call.return_data[0], None
    idx = 0
    while idx < ext_call.return_data[0], None:
        mem[mem[64] + 4] = idx
        require ext_code.size(registryAddress)
        staticcall registryAddress.tokens(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _99 = mem[_95]
        require mem[_95] == mem[_95 + 12 len 20]
        mem[mem[64] + 4] = mem[_95 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_99)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _107 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _109 = mem[_107]
        require mem[_107] == mem[_107]
        s = 0
        t = 0
        while s < _109:
            mem[mem[64] + 4] = address(_99)
            mem[mem[64] + 36] = s
            require ext_code.size(registryAddress)
            staticcall registryAddress.vaults(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(_99), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _129 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_129] == mem[_129 + 12 len 20]
            if t >= mem[_36]:
                revert with 'NH{q', 50
            mem[(32 * t) + _36 + 32] = mem[_129 + 12 len 20]
            if t == -1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            t = t + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _89 = mem[64]
    mem[mem[64]] = 32
    _91 = mem[_36]
    mem[mem[64] + 32] = mem[_36]
    idx = 0
    s = _36 + 32
    t = mem[64] + 64
    while idx < _91:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _89 + (32 * _91) + -mem[64] + 64
}

function sub_75d99c5b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(registryAddress)
        staticcall registryAddress.tokens(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _104 = mem[_102]
        require mem[_102] == mem[_102 + 12 len 20]
        mem[mem[64] + 4] = mem[_102 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_104)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _144 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_144] == mem[_144]
        if s > -mem[_144] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_144]
        continue 
    if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    _93 = mem[64]
    if not s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
        require ext_code.size(registryAddress)
        staticcall registryAddress.numTokens() with:
                gas gas_remaining wei
        mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _93 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
        require return_data.size >= 32
        require ext_call.return_data[0], None == ext_call.return_data[0], None
        idx = 0
        while idx < ext_call.return_data[0], None:
            mem[mem[64] + 4] = idx
            require ext_code.size(registryAddress)
            staticcall registryAddress.tokens(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _288 = mem[_274]
            require mem[_274] == mem[_274 + 12 len 20]
            mem[mem[64] + 4] = mem[_274 + 12 len 20]
            require ext_code.size(registryAddress)
            staticcall registryAddress.numVaults(address rg1) with:
                    gas gas_remaining wei
                   args address(_288)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _333 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _341 = mem[_333]
            require mem[_333] == mem[_333]
            s = 0
            t = 0
            while s < _341:
                mem[mem[64] + 4] = address(_288)
                mem[mem[64] + 36] = s
                require ext_code.size(registryAddress)
                staticcall registryAddress.vaults(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(_288), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_452] == mem[_452 + 12 len 20]
                if t >= mem[_93]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _93 + 32] = mem[_452 + 12 len 20]
                if t == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _259 = mem[_93]
        if mem[_93] > test266151307():
            revert with 'NH{q', 65
        _261 = mem[64]
        mem[mem[64]] = mem[_93]
        mem[64] = mem[64] + (32 * _259) + 32
        if not _259:
            idx = 0
            while idx < _259:
                if idx >= mem[_93]:
                    revert with 'NH{q', 50
                _412 = mem[(32 * idx) + _93 + 32]
                _415 = mem[64]
                mem[64] = mem[64] + 128
                mem[_415] = 0
                mem[_415 + 32] = 0
                mem[_415 + 64] = 0
                mem[_415 + 96] = 0
                require ext_code.size(address(_412))
                staticcall address(_412).token() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _425 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _433 = mem[_425]
                require mem[_425] == mem[_425 + 12 len 20]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_412))
                staticcall address(_412).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _479 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _483 = mem[_479]
                require mem[_479] == mem[_479]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_433))
                staticcall address(_433).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _499 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _501 = mem[_499]
                require mem[_499] == mem[_499]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = address(_412)
                require ext_code.size(address(_433))
                staticcall address(_433).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(_412)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _515 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _517 = mem[_515]
                require mem[_515] == mem[_515]
                _525 = mem[64]
                mem[64] = mem[64] + 128
                mem[_525] = address(_412)
                mem[_525 + 32] = _483
                mem[_525 + 64] = _501
                mem[_525 + 96] = _517
                if idx >= mem[_261]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _261 + 32] = _525
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _411 = mem[64]
            mem[mem[64]] = 32
            _417 = mem[_261]
            mem[mem[64] + 32] = mem[_261]
            idx = 0
            s = _261 + 32
            t = mem[64] + 64
            while idx < _417:
                _535 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_535 + 32]
                mem[t + 64] = mem[_535 + 64]
                mem[t + 96] = mem[_535 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _411 + (128 * _417) + -mem[64] + 64
        mem[64] = _261 + (32 * _259) + 160
        mem[_261 + (32 * _259) + 32] = 0
        mem[_261 + (32 * _259) + 64] = 0
        mem[_261 + (32 * _259) + 96] = 0
        mem[_261 + (32 * _259) + 128] = 0
        mem[var56001] = _261 + (32 * _259) + 32
        s = var56001
        idx = var56002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_261 + (32 * _259) + 32] = 0
            mem[_261 + (32 * _259) + 64] = 0
            mem[_261 + (32 * _259) + 96] = 0
            mem[_261 + (32 * _259) + 128] = 0
            mem[s + 32] = _261 + (32 * _259) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _259:
            if idx >= mem[_93]:
                revert with 'NH{q', 50
            _608 = mem[(32 * idx) + _93 + 32]
            _611 = mem[64]
            mem[64] = mem[64] + 128
            mem[_611] = 0
            mem[_611 + 32] = 0
            mem[_611 + 64] = 0
            mem[_611 + 96] = 0
            require ext_code.size(address(_608))
            staticcall address(_608).token() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _619 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _621 = mem[_619]
            require mem[_619] == mem[_619 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_608))
            staticcall address(_608).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_639]
            require mem[_639] == mem[_639]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_621))
            staticcall address(_621).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _647 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _649 = mem[_647]
            require mem[_647] == mem[_647]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = address(_608)
            require ext_code.size(address(_621))
            staticcall address(_621).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(_608)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _655 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _657 = mem[_655]
            require mem[_655] == mem[_655]
            _659 = mem[64]
            mem[64] = mem[64] + 128
            mem[_659] = address(_608)
            mem[_659 + 32] = _641
            mem[_659 + 64] = _649
            mem[_659 + 96] = _657
            if idx >= mem[_261]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _261 + 32] = _659
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _607 = mem[64]
        mem[mem[64]] = 32
        _613 = mem[_261]
        mem[mem[64] + 32] = mem[_261]
        idx = 0
        s = _261 + 32
        t = mem[64] + 64
        while idx < _613:
            _663 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_663 + 32]
            mem[t + 64] = mem[_663 + 64]
            mem[t + 96] = mem[_663 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _607 + (128 * _613) + -mem[64] + 64
    mem[mem[64] + 32 len 32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]] = call.data[calldata.size len 32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]]
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _93 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
    require return_data.size >= 32
    require ext_call.return_data[0], None == ext_call.return_data[0], None
    idx = 0
    while idx < ext_call.return_data[0], None:
        mem[mem[64] + 4] = idx
        require ext_code.size(registryAddress)
        staticcall registryAddress.tokens(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _276 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _292 = mem[_276]
        require mem[_276] == mem[_276 + 12 len 20]
        mem[mem[64] + 4] = mem[_276 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_292)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _334 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _344 = mem[_334]
        require mem[_334] == mem[_334]
        s = 0
        t = 0
        while s < _344:
            mem[mem[64] + 4] = address(_292)
            mem[mem[64] + 36] = s
            require ext_code.size(registryAddress)
            staticcall registryAddress.vaults(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(_292), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_454] == mem[_454 + 12 len 20]
            if t >= mem[_93]:
                revert with 'NH{q', 50
            mem[(32 * t) + _93 + 32] = mem[_454 + 12 len 20]
            if t == -1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            t = t + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _260 = mem[_93]
    if mem[_93] > test266151307():
        revert with 'NH{q', 65
    _262 = mem[64]
    mem[mem[64]] = mem[_93]
    mem[64] = mem[64] + (32 * _260) + 32
    if not _260:
        idx = 0
        while idx < _260:
            if idx >= mem[_93]:
                revert with 'NH{q', 50
            _414 = mem[(32 * idx) + _93 + 32]
            _416 = mem[64]
            mem[64] = mem[64] + 128
            mem[_416] = 0
            mem[_416 + 32] = 0
            mem[_416 + 64] = 0
            mem[_416 + 96] = 0
            require ext_code.size(address(_414))
            staticcall address(_414).token() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _428 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _437 = mem[_428]
            require mem[_428] == mem[_428 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_414))
            staticcall address(_414).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _481 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _485 = mem[_481]
            require mem[_481] == mem[_481]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_437))
            staticcall address(_437).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _500 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _503 = mem[_500]
            require mem[_500] == mem[_500]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = address(_414)
            require ext_code.size(address(_437))
            staticcall address(_437).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(_414)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _516 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _519 = mem[_516]
            require mem[_516] == mem[_516]
            _526 = mem[64]
            mem[64] = mem[64] + 128
            mem[_526] = address(_414)
            mem[_526 + 32] = _485
            mem[_526 + 64] = _503
            mem[_526 + 96] = _519
            if idx >= mem[_262]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _262 + 32] = _526
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _413 = mem[64]
        mem[mem[64]] = 32
        _420 = mem[_262]
        mem[mem[64] + 32] = mem[_262]
        idx = 0
        s = _262 + 32
        t = mem[64] + 64
        while idx < _420:
            _536 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_536 + 32]
            mem[t + 64] = mem[_536 + 64]
            mem[t + 96] = mem[_536 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _413 + (128 * _420) + -mem[64] + 64
    mem[64] = _262 + (32 * _260) + 160
    mem[_262 + (32 * _260) + 32] = 0
    mem[_262 + (32 * _260) + 64] = 0
    mem[_262 + (32 * _260) + 96] = 0
    mem[_262 + (32 * _260) + 128] = 0
    mem[var57001] = _262 + (32 * _260) + 32
    s = var57001
    idx = var57002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[_262 + (32 * _260) + 32] = 0
        mem[_262 + (32 * _260) + 64] = 0
        mem[_262 + (32 * _260) + 96] = 0
        mem[_262 + (32 * _260) + 128] = 0
        mem[s + 32] = _262 + (32 * _260) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < _260:
        if idx >= mem[_93]:
            revert with 'NH{q', 50
        _610 = mem[(32 * idx) + _93 + 32]
        _612 = mem[64]
        mem[64] = mem[64] + 128
        mem[_612] = 0
        mem[_612 + 32] = 0
        mem[_612 + 64] = 0
        mem[_612 + 96] = 0
        require ext_code.size(address(_610))
        staticcall address(_610).token() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _620 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _622 = mem[_620]
        require mem[_620] == mem[_620 + 12 len 20]
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(address(_610))
        staticcall address(_610).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _640 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _642 = mem[_640]
        require mem[_640] == mem[_640]
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(address(_622))
        staticcall address(_622).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _648 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _650 = mem[_648]
        require mem[_648] == mem[_648]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = address(_610)
        require ext_code.size(address(_622))
        staticcall address(_622).allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), address(_610)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _656 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _658 = mem[_656]
        require mem[_656] == mem[_656]
        _660 = mem[64]
        mem[64] = mem[64] + 128
        mem[_660] = address(_610)
        mem[_660 + 32] = _642
        mem[_660 + 64] = _650
        mem[_660 + 96] = _658
        if idx >= mem[_262]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _262 + 32] = _660
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _609 = mem[64]
    mem[mem[64]] = 32
    _616 = mem[_262]
    mem[mem[64] + 32] = mem[_262]
    idx = 0
    s = _262 + 32
    t = mem[64] + 64
    while idx < _616:
        _664 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_664 + 32]
        mem[t + 64] = mem[_664 + 64]
        mem[t + 96] = mem[_664 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _609 + (128 * _616) + -mem[64] + 64
}



}
