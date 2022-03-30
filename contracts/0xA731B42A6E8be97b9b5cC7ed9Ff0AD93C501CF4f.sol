contract main {




// =====================  Runtime code  =====================


#
#  - getAssets()
#  - sub_75d99c5b(?)
#
const sub_73ee568a(?) = '', 0


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
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        if s > !mem[_23]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
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
        revert with 0, 65
    if ceil32(ceil32(mem[mem[352] + 352])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[352] + 352])) + 353 > test266151307():
        revert with 0, 65
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
        _204 = mem[64]
        mem[64] = mem[64] + 64
        mem[_204] = 4
        mem[_204 + 32] = 0x302e303000000000000000000000000000000000000000000000000000000000
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
            mem[_207 + 64] = _204
            mem[_207 + 96] = _206
            _211 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 224
            _220 = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 352]
            mem[mem[64] + 288 len ceil32(_220)] = mem[ceil32(return_data.size) + 384 len ceil32(_220)]
            if ceil32(_220) <= _220:
                mem[mem[64] + 64] = uint64(arg1) << 96
                mem[mem[64] + 96] = ceil32(_220) + 256
                mem[ceil32(_220) + mem[64] + 288] = 4
                mem[ceil32(_220) + mem[64] + 320] = 0x302e303000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_220) + mem[64] + 324] = 0
                return 32, 224, arg1 << 192, ceil32(_220) + 256, arg1 << 192, _195, _203, 0, mem[mem[64] + 256 len ceil32(_220) + 32], 4, 0, 0
            mem[mem[64] + _220 + 288] = 0
            mem[mem[64] + 64] = uint64(arg1) << 96
            mem[_211 + 96] = ceil32(_220) + 256
            mem[ceil32(_220) + _211 + 288] = 4
            mem[ceil32(_220) + _211 + 320] = 0x302e303000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_220) + _211 + 324] = 0
            mem[_211 + 128] = uint64(arg1) << 96
            mem[_211 + 160] = _195
            mem[_211 + 192] = _203
            mem[_211 + 224] = 0
            return memory
              from mem[64]
               len ceil32(_220) + _211 + -mem[64] + 352
        require ext_code.size(arg1)
        staticcall arg1.pricePerShare() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _221 = mem[_216]
        _225 = mem[64]
        mem[64] = mem[64] + 128
        mem[_225] = arg1
        mem[_225 + 32] = _195
        mem[_225 + 64] = _203
        mem[_225 + 96] = _221
        _226 = mem[64]
        mem[64] = mem[64] + 128
        mem[_226] = ceil32(return_data.size) + 352
        mem[_226 + 32] = arg1
        mem[_226 + 64] = _204
        mem[_226 + 96] = _225
        _228 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 224
        _236 = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 352]
        mem[mem[64] + 288 len ceil32(_236)] = mem[ceil32(return_data.size) + 384 len ceil32(_236)]
        if ceil32(_236) <= _236:
            mem[mem[64] + 64] = uint64(arg1) << 96
            mem[mem[64] + 96] = ceil32(_236) + 256
            mem[ceil32(_236) + mem[64] + 288] = 4
            mem[ceil32(_236) + mem[64] + 320] = 0x302e303000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_236) + mem[64] + 324] = 0
            return 32, 224, 
                   arg1 << 192,
                   ceil32(_236) + 256,
                   arg1 << 192,
                   _195,
                   _203,
                   _221,
                   mem[mem[64] + 256 len ceil32(_236) + 32],
                   4,
                   0,
                   0
        mem[mem[64] + _236 + 288] = 0
        mem[mem[64] + 64] = uint64(arg1) << 96
        mem[_228 + 96] = ceil32(_236) + 256
        mem[ceil32(_236) + _228 + 288] = 4
        mem[ceil32(_236) + _228 + 320] = 0x302e303000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_236) + _228 + 324] = 0
        mem[_228 + 128] = uint64(arg1) << 96
        mem[_228 + 160] = _195
        mem[_228 + 192] = _203
        mem[_228 + 224] = _221
        return memory
          from mem[64]
           len ceil32(_236) + _228 + -mem[64] + 352
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
    _198 = mem[_194]
    require ext_code.size(arg1)
    staticcall arg1.totalSupply() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _202 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _205 = mem[_202]
    _210 = mem[64]
    mem[64] = mem[64] + 64
    mem[_210] = 4
    mem[_210 + 32] = 0x302e303000000000000000000000000000000000000000000000000000000000
    if not _205:
        _212 = mem[64]
        mem[64] = mem[64] + 128
        mem[_212] = arg1
        mem[_212 + 32] = _198
        mem[_212 + 64] = _205
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
            mem[ceil32(_223) + mem[64] + 288] = 4
            mem[ceil32(_223) + mem[64] + 320] = 0x302e303000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_223) + mem[64] + 324] = 0
            return 32, 224, arg1 << 192, ceil32(_223) + 256, arg1 << 192, _198, _205, 0, mem[mem[64] + 256 len ceil32(_223) + 32], 4, 0, 0
        mem[mem[64] + _223 + 288] = 0
        mem[mem[64] + 64] = uint64(arg1) << 96
        mem[_217 + 96] = ceil32(_223) + 256
        mem[ceil32(_223) + _217 + 288] = 4
        mem[ceil32(_223) + _217 + 320] = 0x302e303000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_223) + _217 + 324] = 0
        mem[_217 + 128] = uint64(arg1) << 96
        mem[_217 + 160] = _198
        mem[_217 + 192] = _205
        mem[_217 + 224] = 0
        return memory
          from mem[64]
           len ceil32(_223) + _217 + -mem[64] + 352
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
    _229 = mem[64]
    mem[64] = mem[64] + 128
    mem[_229] = arg1
    mem[_229 + 32] = _198
    mem[_229 + 64] = _205
    mem[_229 + 96] = _224
    _230 = mem[64]
    mem[64] = mem[64] + 128
    mem[_230] = ceil32(return_data.size) + 352
    mem[_230 + 32] = arg1
    mem[_230 + 64] = _210
    mem[_230 + 96] = _229
    _232 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 224
    _243 = mem[ceil32(return_data.size) + 352]
    mem[mem[64] + 256] = mem[ceil32(return_data.size) + 352]
    mem[mem[64] + 288 len ceil32(_243)] = mem[ceil32(return_data.size) + 384 len ceil32(_243)]
    if ceil32(_243) <= _243:
        mem[mem[64] + 64] = uint64(arg1) << 96
        mem[mem[64] + 96] = ceil32(_243) + 256
        mem[ceil32(_243) + mem[64] + 288] = 4
        mem[ceil32(_243) + mem[64] + 320] = 0x302e303000000000000000000000000000000000000000000000000000000000
        mem[ceil32(_243) + mem[64] + 324] = 0
        return 32, 224, 
               arg1 << 192,
               ceil32(_243) + 256,
               arg1 << 192,
               _198,
               _205,
               _224,
               mem[mem[64] + 256 len ceil32(_243) + 32],
               4,
               0,
               0
    mem[mem[64] + _243 + 288] = 0
    mem[mem[64] + 64] = uint64(arg1) << 96
    mem[_232 + 96] = ceil32(_243) + 256
    mem[ceil32(_243) + _232 + 288] = 4
    mem[ceil32(_243) + _232 + 320] = 0x302e303000000000000000000000000000000000000000000000000000000000
    mem[ceil32(_243) + _232 + 324] = 0
    mem[_232 + 128] = uint64(arg1) << 96
    mem[_232 + 160] = _198
    mem[_232 + 192] = _205
    mem[_232 + 224] = _224
    return memory
      from mem[64]
       len ceil32(_243) + _232 + -mem[64] + 352
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
        _38 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _43 = mem[_38]
        require mem[_38] == mem[_38 + 12 len 20]
        mem[mem[64] + 4] = mem[_38 + 12 len 20]
        require ext_code.size(registryAddress)
        staticcall registryAddress.numVaults(address rg1) with:
                gas gas_remaining wei
               args address(_43)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _52 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_52]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_52]
        continue 
    if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] > test266151307():
        revert with 0, 65
    _37 = mem[64]
    if not s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
        require ext_code.size(registryAddress)
        staticcall registryAddress.numTokens() with:
                gas gas_remaining wei
        mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _37 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
        require return_data.size >= 32
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
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _97 = mem[_93]
            require mem[_93] == mem[_93 + 12 len 20]
            mem[mem[64] + 4] = mem[_93 + 12 len 20]
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
                if t >= mem[_37]:
                    revert with 0, 50
                mem[(32 * t) + _37 + 32] = mem[_128 + 12 len 20]
                if t == -1:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _90 = mem[64]
        mem[mem[64]] = 32
        _92 = mem[_37]
        mem[mem[64] + 32] = mem[_37]
        idx = 0
        s = mem[64] + 64
        t = _37 + 32
        while idx < _92:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _90 + (32 * _92) + -mem[64] + 64
    mem[mem[64] + 32 len 32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]] = call.data[calldata.size len 32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]]
    require ext_code.size(registryAddress)
    staticcall registryAddress.numTokens() with:
            gas gas_remaining wei
    mem[mem[64] + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + 32] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _37 + (32 * s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + ceil32(return_data.size) + 32
    require return_data.size >= 32
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
            if t >= mem[_37]:
                revert with 0, 50
            mem[(32 * t) + _37 + 32] = mem[_129 + 12 len 20]
            if t == -1:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = t + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _91 = mem[64]
    mem[mem[64]] = 32
    _94 = mem[_37]
    mem[mem[64] + 32] = mem[_37]
    idx = 0
    s = mem[64] + 64
    t = _37 + 32
    while idx < _94:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _91 + (32 * _94) + -mem[64] + 64
}



}
