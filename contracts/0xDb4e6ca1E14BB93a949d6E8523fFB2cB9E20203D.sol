contract main {




// =====================  Runtime code  =====================


#
#  - sub_85362fb1(?)
#
address owner;
address stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAssetPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(stor1)
    staticcall stor1.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor1)
    staticcall stor1.getPriceOracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    if not bool((4 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 'NH{q', 65
    require return_data.size >= 32
    if not bool((4 * ceil32(return_data.size)) + 512 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    if not ext_call.return_data[25 len 1]:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        return (ext_call.return_data[0] * arg2)
    if bool(bool(ext_call.return_data[25 len 1] < 78)) or bool(bool(ext_call.return_data[25 len 1] < 32)):
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
            revert with 'NH{q', 18
        return (ext_call.return_data[0] * arg2 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48))
    s = 10
    t = 1
    idx = ext_call.return_data[25 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not s * t:
        revert with 'NH{q', 18
    return (ext_call.return_data[0] * arg2 / s * t)
}

function sub_71b1c74c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(stor1)
    staticcall stor1.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ('cd', 4).length
    mem[64] = ceil32(return_data.size) + (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getUserAccountData(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _64 = mem[_56 + 160]
            _65 = mem[64]
            mem[64] = mem[64] + 64
            mem[_65] = _64 < 10^18
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[_65 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _65
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _43:
            _76 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_76 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _42 + (64 * _43) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ('cd', 4).length) + 192
    mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 160] = 0
    mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * ('cd', 4).length) + 128
    s = ceil32(return_data.size) + 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 160] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUserAccountData(address arg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _88 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _94 = mem[_88 + 160]
        _95 = mem[64]
        mem[64] = mem[64] + 64
        mem[_95] = _94 < 10^18
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[_95 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _95
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _80 = mem[64]
    mem[mem[64]] = 32
    _81 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _81:
        _97 = mem[s]
        mem[t] = bool(mem[mem[s]])
        mem[t + 32] = mem[_97 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _80 + (64 * _81) + -mem[64] + 64
}

function sub_81b885ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0xd1946dbc00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReservesList() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require return_data.size >= _8 + (32 * _9) + 32
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    u = 32 * _9
    idx = 0
    while idx < _9:
        _349 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _349
        idx = idx + 1
        continue 
    if _9 > test266151307():
        revert with 'NH{q', 65
    _351 = mem[64]
    mem[mem[64]] = _9
    if not _9:
        if _9 > test266151307():
            revert with 'NH{q', 65
        _353 = mem[64] + (32 * _9) + 32
        mem[mem[64] + (32 * _9) + 32] = _9
        mem[64] = mem[64] + (64 * _9) + 64
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _707 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _732 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _772 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_772] = mem[_707]
                mem[_732] = _772
                require mem[_707 + 32] == mem[_707 + 48 len 16]
                mem[_732 + 32] = mem[_707 + 32]
                require mem[_707 + 64] == mem[_707 + 80 len 16]
                mem[_732 + 64] = mem[_707 + 64]
                require mem[_707 + 96] == mem[_707 + 112 len 16]
                mem[_732 + 96] = mem[_707 + 96]
                require mem[_707 + 128] == mem[_707 + 144 len 16]
                mem[_732 + 128] = mem[_707 + 128]
                require mem[_707 + 160] == mem[_707 + 176 len 16]
                mem[_732 + 160] = mem[_707 + 160]
                require mem[_707 + 192] == mem[_707 + 219 len 5]
                mem[_732 + 192] = mem[_707 + 192]
                require mem[_707 + 224] == mem[_707 + 236 len 20]
                mem[_732 + 224] = mem[_707 + 224]
                require mem[_707 + 256] == mem[_707 + 268 len 20]
                mem[_732 + 256] = mem[_707 + 256]
                require mem[_707 + 288] == mem[_707 + 300 len 20]
                mem[_732 + 288] = mem[_707 + 288]
                require mem[_707 + 320] == mem[_707 + 332 len 20]
                mem[_732 + 320] = mem[_707 + 320]
                require mem[_707 + 352] == mem[_707 + 383 len 1]
                mem[_732 + 352] = mem[_707 + 352]
                if idx >= mem[_353]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _353 + 32] = _732
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1021 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _1021:
                if idx >= mem[_353]:
                    revert with 'NH{q', 50
                _1028 = mem[mem[(32 * idx) + _353 + 32] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_1028))
                staticcall address(_1028).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1039 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1060 = mem[_1039]
                _1063 = mem[64]
                mem[64] = mem[64] + 224
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_1063] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_353]:
                    revert with 'NH{q', 50
                _1088 = mem[mem[(32 * idx) + _353 + 32] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_1088))
                staticcall address(_1088).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1112 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_1063 + 32] = mem[_1112]
                mem[_1063 + 64] = _1060
                if not _1060:
                    mem[_1063 + 96] = 0
                else:
                    _1285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1285] = 2
                    mem[_1285 + 32] = '48'
                    if _1060 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                        _1291 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[idx + _1291 + 68] = mem[idx + _1285 + 32]
                            _1021 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        mem[_1291 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _1291 + -mem[64] + 100
                    if _1060 and 5000 > -1 / _1060:
                        revert with 'NH{q', 17
                    if 5000 * _1060 > -5001:
                        revert with 'NH{q', 17
                    mem[_1063 + 96] = (5000 * _1060) + 5000 / 10000
                if idx >= mem[_353]:
                    revert with 'NH{q', 50
                mem[_1063 + 128] = mem[mem[mem[(32 * idx) + _353 + 32]] + 25 len 1]
                if idx >= mem[_353]:
                    revert with 'NH{q', 50
                mem[_1063 + 160] = mem[mem[mem[(32 * idx) + _353 + 32]] + 26 len 2]
                if idx >= mem[_353]:
                    revert with 'NH{q', 50
                mem[_1063 + 192] = mem[mem[mem[(32 * idx) + _353 + 32]] + 30 len 2]
                if idx >= mem[_351]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + 32] = _1063
                if idx == -1:
                    revert with 'NH{q', 17
                _1021 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            _1026 = mem[64]
            mem[mem[64]] = 32
            _1035 = mem[_351]
            mem[mem[64] + 32] = mem[_351]
            idx = 0
            s = _351 + 32
            t = mem[64] + 64
            while idx < _1035:
                _1503 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1503 + 32]
                mem[t + 64] = mem[_1503 + 64]
                mem[t + 96] = mem[_1503 + 96]
                mem[t + 128] = mem[_1503 + 128]
                mem[t + 160] = mem[_1503 + 160]
                mem[t + 192] = mem[_1503 + 192]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _1026 + (224 * _1035) + -mem[64] + 64
        mem[64] = _353 + (32 * _9) + 448
        mem[_353 + (32 * _9) + 416] = 0
        mem[_353 + (32 * _9) + 32] = _353 + (32 * _9) + 416
        mem[_353 + (32 * _9) + 64] = 0
        mem[_353 + (32 * _9) + 96] = 0
        mem[_353 + (32 * _9) + 128] = 0
        mem[_353 + (32 * _9) + 160] = 0
        mem[_353 + (32 * _9) + 192] = 0
        mem[_353 + (32 * _9) + 224] = 0
        mem[_353 + (32 * _9) + 256] = 0
        mem[_353 + (32 * _9) + 288] = 0
        mem[_353 + (32 * _9) + 320] = 0
        mem[_353 + (32 * _9) + 352] = 0
        mem[_353 + (32 * _9) + 384] = 0
        mem[_353 + 32] = _353 + (32 * _9) + 32
        s = _353 + 32
        idx = _9
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[_353 + (32 * _9) + 416] = 0
            mem[_353 + (32 * _9) + 32] = _353 + (32 * _9) + 416
            mem[_353 + (32 * _9) + 64] = 0
            mem[_353 + (32 * _9) + 96] = 0
            mem[_353 + (32 * _9) + 128] = 0
            mem[_353 + (32 * _9) + 160] = 0
            mem[_353 + (32 * _9) + 192] = 0
            mem[_353 + (32 * _9) + 224] = 0
            mem[_353 + (32 * _9) + 256] = 0
            mem[_353 + (32 * _9) + 288] = 0
            mem[_353 + (32 * _9) + 320] = 0
            mem[_353 + (32 * _9) + 352] = 0
            mem[_353 + (32 * _9) + 384] = 0
            mem[s + 32] = _353 + (32 * _9) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _1022 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _1022:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1055 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _1082 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 384
            require return_data.size >= 32
            _1126 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            mem[_1126] = mem[_1055]
            mem[_1082] = _1126
            require mem[_1055 + 32] == mem[_1055 + 48 len 16]
            mem[_1082 + 32] = mem[_1055 + 32]
            require mem[_1055 + 64] == mem[_1055 + 80 len 16]
            mem[_1082 + 64] = mem[_1055 + 64]
            require mem[_1055 + 96] == mem[_1055 + 112 len 16]
            mem[_1082 + 96] = mem[_1055 + 96]
            require mem[_1055 + 128] == mem[_1055 + 144 len 16]
            mem[_1082 + 128] = mem[_1055 + 128]
            require mem[_1055 + 160] == mem[_1055 + 176 len 16]
            mem[_1082 + 160] = mem[_1055 + 160]
            require mem[_1055 + 192] == mem[_1055 + 219 len 5]
            mem[_1082 + 192] = mem[_1055 + 192]
            require mem[_1055 + 224] == mem[_1055 + 236 len 20]
            mem[_1082 + 224] = mem[_1055 + 224]
            require mem[_1055 + 256] == mem[_1055 + 268 len 20]
            mem[_1082 + 256] = mem[_1055 + 256]
            require mem[_1055 + 288] == mem[_1055 + 300 len 20]
            mem[_1082 + 288] = mem[_1055 + 288]
            require mem[_1055 + 320] == mem[_1055 + 332 len 20]
            mem[_1082 + 320] = mem[_1055 + 320]
            require mem[_1055 + 352] == mem[_1055 + 383 len 1]
            mem[_1082 + 352] = mem[_1055 + 352]
            if idx >= mem[_353]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _353 + 32] = _1082
            if idx == -1:
                revert with 'NH{q', 17
            _1022 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _1499 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _1499:
            if idx >= mem[_353]:
                revert with 'NH{q', 50
            _1517 = mem[mem[(32 * idx) + _353 + 32] + 288]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_1517))
            staticcall address(_1517).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1531 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1553 = mem[_1531]
            _1559 = mem[64]
            mem[64] = mem[64] + 224
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_1559] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[_353]:
                revert with 'NH{q', 50
            _1586 = mem[mem[(32 * idx) + _353 + 32] + 224]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_1586))
            staticcall address(_1586).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1611 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_1559 + 32] = mem[_1611]
            mem[_1559 + 64] = _1553
            if not _1553:
                mem[_1559 + 96] = 0
            else:
                _1738 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1738] = 2
                mem[_1738 + 32] = '48'
                if _1553 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    _1748 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[idx + _1748 + 68] = mem[idx + _1738 + 32]
                        _1499 = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = idx + 32
                        continue 
                    mem[_1748 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _1748 + -mem[64] + 100
                if _1553 and 5000 > -1 / _1553:
                    revert with 'NH{q', 17
                if 5000 * _1553 > -5001:
                    revert with 'NH{q', 17
                mem[_1559 + 96] = (5000 * _1553) + 5000 / 10000
            if idx >= mem[_353]:
                revert with 'NH{q', 50
            mem[_1559 + 128] = mem[mem[mem[(32 * idx) + _353 + 32]] + 25 len 1]
            if idx >= mem[_353]:
                revert with 'NH{q', 50
            mem[_1559 + 160] = mem[mem[mem[(32 * idx) + _353 + 32]] + 26 len 2]
            if idx >= mem[_353]:
                revert with 'NH{q', 50
            mem[_1559 + 192] = mem[mem[mem[(32 * idx) + _353 + 32]] + 30 len 2]
            if idx >= mem[_351]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + 32] = _1559
            if idx == -1:
                revert with 'NH{q', 17
            _1499 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _1515 = mem[64]
        mem[mem[64]] = 32
        _1525 = mem[_351]
        mem[mem[64] + 32] = mem[_351]
        idx = 0
        s = _351 + 32
        t = mem[64] + 64
        while idx < _1525:
            _1908 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1908 + 32]
            mem[t + 64] = mem[_1908 + 64]
            mem[t + 96] = mem[_1908 + 96]
            mem[t + 128] = mem[_1908 + 128]
            mem[t + 160] = mem[_1908 + 160]
            mem[t + 192] = mem[_1908 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1515 + (224 * _1525) + -mem[64] + 64
    _689 = mem[64] + (32 * _9) + 32
    mem[64] = mem[64] + (32 * _9) + 256
    mem[_689] = 0
    mem[_689 + 32] = 0
    mem[_689 + 64] = 0
    mem[_689 + 96] = 0
    mem[_689 + 128] = 0
    mem[_689 + 160] = 0
    mem[_689 + 192] = 0
    mem[var38002] = var38001
    if not var38003 - 1:
        if _9 > test266151307():
            revert with 'NH{q', 65
        mem[_351 + (32 * _9) + 256] = _9
        mem[64] = _351 + (64 * _9) + 288
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1548 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _1582 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _1627 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_1627] = mem[_1548]
                mem[_1582] = _1627
                require mem[_1548 + 32] == mem[_1548 + 48 len 16]
                mem[_1582 + 32] = mem[_1548 + 32]
                require mem[_1548 + 64] == mem[_1548 + 80 len 16]
                mem[_1582 + 64] = mem[_1548 + 64]
                require mem[_1548 + 96] == mem[_1548 + 112 len 16]
                mem[_1582 + 96] = mem[_1548 + 96]
                require mem[_1548 + 128] == mem[_1548 + 144 len 16]
                mem[_1582 + 128] = mem[_1548 + 128]
                require mem[_1548 + 160] == mem[_1548 + 176 len 16]
                mem[_1582 + 160] = mem[_1548 + 160]
                require mem[_1548 + 192] == mem[_1548 + 219 len 5]
                mem[_1582 + 192] = mem[_1548 + 192]
                require mem[_1548 + 224] == mem[_1548 + 236 len 20]
                mem[_1582 + 224] = mem[_1548 + 224]
                require mem[_1548 + 256] == mem[_1548 + 268 len 20]
                mem[_1582 + 256] = mem[_1548 + 256]
                require mem[_1548 + 288] == mem[_1548 + 300 len 20]
                mem[_1582 + 288] = mem[_1548 + 288]
                require mem[_1548 + 320] == mem[_1548 + 332 len 20]
                mem[_1582 + 320] = mem[_1548 + 320]
                require mem[_1548 + 352] == mem[_1548 + 383 len 1]
                mem[_1582 + 352] = mem[_1548 + 352]
                if idx >= mem[_351 + (32 * _9) + 256]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + (32 * _9) + 288] = _1582
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1906 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _1906:
                if idx >= mem[_351 + (32 * _9) + 256]:
                    revert with 'NH{q', 50
                _1924 = mem[mem[(32 * idx) + _351 + (32 * _9) + 288] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_1924))
                staticcall address(_1924).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1937 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1958 = mem[_1937]
                _1965 = mem[64]
                mem[64] = mem[64] + 224
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_1965] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_351 + (32 * _9) + 256]:
                    revert with 'NH{q', 50
                _1994 = mem[mem[(32 * idx) + _351 + (32 * _9) + 288] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_1994))
                staticcall address(_1994).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2018 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_1965 + 32] = mem[_2018]
                mem[_1965 + 64] = _1958
                if not _1958:
                    mem[_1965 + 96] = 0
                else:
                    _2185 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2185] = 2
                    mem[_2185 + 32] = '48'
                    if _1958 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                        _2192 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[idx + _2192 + 68] = mem[idx + _2185 + 32]
                            _1906 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        mem[_2192 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _2192 + -mem[64] + 100
                    if _1958 and 5000 > -1 / _1958:
                        revert with 'NH{q', 17
                    if 5000 * _1958 > -5001:
                        revert with 'NH{q', 17
                    mem[_1965 + 96] = (5000 * _1958) + 5000 / 10000
                if idx >= mem[_351 + (32 * _9) + 256]:
                    revert with 'NH{q', 50
                mem[_1965 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 288]] + 25 len 1]
                if idx >= mem[_351 + (32 * _9) + 256]:
                    revert with 'NH{q', 50
                mem[_1965 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 288]] + 26 len 2]
                if idx >= mem[_351 + (32 * _9) + 256]:
                    revert with 'NH{q', 50
                mem[_1965 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 288]] + 30 len 2]
                if idx >= mem[_351]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + 32] = _1965
                if idx == -1:
                    revert with 'NH{q', 17
                _1906 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            _1922 = mem[64]
            mem[mem[64]] = 32
            _1932 = mem[_351]
            mem[mem[64] + 32] = mem[_351]
            idx = 0
            s = _351 + 32
            t = mem[64] + 64
            while idx < _1932:
                _2401 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2401 + 32]
                mem[t + 64] = mem[_2401 + 64]
                mem[t + 96] = mem[_2401 + 96]
                mem[t + 128] = mem[_2401 + 128]
                mem[t + 160] = mem[_2401 + 160]
                mem[t + 192] = mem[_2401 + 192]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _1922 + (224 * _1932) + -mem[64] + 64
        mem[64] = _351 + (64 * _9) + 704
        mem[_351 + (64 * _9) + 672] = 0
        mem[_351 + (64 * _9) + 288] = _351 + (64 * _9) + 672
        mem[_351 + (64 * _9) + 320] = 0
        mem[_351 + (64 * _9) + 352] = 0
        mem[_351 + (64 * _9) + 384] = 0
        mem[_351 + (64 * _9) + 416] = 0
        mem[_351 + (64 * _9) + 448] = 0
        mem[_351 + (64 * _9) + 480] = 0
        mem[_351 + (64 * _9) + 512] = 0
        mem[_351 + (64 * _9) + 544] = 0
        mem[_351 + (64 * _9) + 576] = 0
        mem[_351 + (64 * _9) + 608] = 0
        mem[_351 + (64 * _9) + 640] = 0
        mem[_351 + (32 * _9) + 288] = _351 + (64 * _9) + 288
        s = _351 + (32 * _9) + 288
        idx = _9
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[_351 + (64 * _9) + 672] = 0
            mem[_351 + (64 * _9) + 288] = _351 + (64 * _9) + 672
            mem[_351 + (64 * _9) + 320] = 0
            mem[_351 + (64 * _9) + 352] = 0
            mem[_351 + (64 * _9) + 384] = 0
            mem[_351 + (64 * _9) + 416] = 0
            mem[_351 + (64 * _9) + 448] = 0
            mem[_351 + (64 * _9) + 480] = 0
            mem[_351 + (64 * _9) + 512] = 0
            mem[_351 + (64 * _9) + 544] = 0
            mem[_351 + (64 * _9) + 576] = 0
            mem[_351 + (64 * _9) + 608] = 0
            mem[_351 + (64 * _9) + 640] = 0
            mem[s + 32] = _351 + (64 * _9) + 288
            s = s + 32
            idx = idx - 1
            continue 
        _1907 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _1907:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1955 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _1983 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 384
            require return_data.size >= 32
            _2041 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            mem[_2041] = mem[_1955]
            mem[_1983] = _2041
            require mem[_1955 + 32] == mem[_1955 + 48 len 16]
            mem[_1983 + 32] = mem[_1955 + 32]
            require mem[_1955 + 64] == mem[_1955 + 80 len 16]
            mem[_1983 + 64] = mem[_1955 + 64]
            require mem[_1955 + 96] == mem[_1955 + 112 len 16]
            mem[_1983 + 96] = mem[_1955 + 96]
            require mem[_1955 + 128] == mem[_1955 + 144 len 16]
            mem[_1983 + 128] = mem[_1955 + 128]
            require mem[_1955 + 160] == mem[_1955 + 176 len 16]
            mem[_1983 + 160] = mem[_1955 + 160]
            require mem[_1955 + 192] == mem[_1955 + 219 len 5]
            mem[_1983 + 192] = mem[_1955 + 192]
            require mem[_1955 + 224] == mem[_1955 + 236 len 20]
            mem[_1983 + 224] = mem[_1955 + 224]
            require mem[_1955 + 256] == mem[_1955 + 268 len 20]
            mem[_1983 + 256] = mem[_1955 + 256]
            require mem[_1955 + 288] == mem[_1955 + 300 len 20]
            mem[_1983 + 288] = mem[_1955 + 288]
            require mem[_1955 + 320] == mem[_1955 + 332 len 20]
            mem[_1983 + 320] = mem[_1955 + 320]
            require mem[_1955 + 352] == mem[_1955 + 383 len 1]
            mem[_1983 + 352] = mem[_1955 + 352]
            if idx >= mem[_351 + (32 * _9) + 256]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + (32 * _9) + 288] = _1983
            if idx == -1:
                revert with 'NH{q', 17
            _1907 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _2399 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _2399:
            if idx >= mem[_351 + (32 * _9) + 256]:
                revert with 'NH{q', 50
            _2418 = mem[mem[(32 * idx) + _351 + (32 * _9) + 288] + 288]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_2418))
            staticcall address(_2418).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2435 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2455 = mem[_2435]
            _2470 = mem[64]
            mem[64] = mem[64] + 224
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_2470] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[_351 + (32 * _9) + 256]:
                revert with 'NH{q', 50
            _2489 = mem[mem[(32 * idx) + _351 + (32 * _9) + 288] + 224]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_2489))
            staticcall address(_2489).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2520 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_2470 + 32] = mem[_2520]
            mem[_2470 + 64] = _2455
            if not _2455:
                mem[_2470 + 96] = 0
            else:
                _2644 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2644] = 2
                mem[_2644 + 32] = '48'
                if _2455 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    _2649 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[idx + _2649 + 68] = mem[idx + _2644 + 32]
                        _2399 = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = idx + 32
                        continue 
                    mem[_2649 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _2649 + -mem[64] + 100
                if _2455 and 5000 > -1 / _2455:
                    revert with 'NH{q', 17
                if 5000 * _2455 > -5001:
                    revert with 'NH{q', 17
                mem[_2470 + 96] = (5000 * _2455) + 5000 / 10000
            if idx >= mem[_351 + (32 * _9) + 256]:
                revert with 'NH{q', 50
            mem[_2470 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 288]] + 25 len 1]
            if idx >= mem[_351 + (32 * _9) + 256]:
                revert with 'NH{q', 50
            mem[_2470 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 288]] + 26 len 2]
            if idx >= mem[_351 + (32 * _9) + 256]:
                revert with 'NH{q', 50
            mem[_2470 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 288]] + 30 len 2]
            if idx >= mem[_351]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + 32] = _2470
            if idx == -1:
                revert with 'NH{q', 17
            _2399 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _2416 = mem[64]
        mem[mem[64]] = 32
        _2426 = mem[_351]
        mem[mem[64] + 32] = mem[_351]
        idx = 0
        s = _351 + 32
        t = mem[64] + 64
        while idx < _2426:
            _2808 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2808 + 32]
            mem[t + 64] = mem[_2808 + 64]
            mem[t + 96] = mem[_2808 + 96]
            mem[t + 128] = mem[_2808 + 128]
            mem[t + 160] = mem[_2808 + 160]
            mem[t + 192] = mem[_2808 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _2416 + (224 * _2426) + -mem[64] + 64
    mem[_351 + (32 * _9) + 256] = 0
    mem[_351 + (32 * _9) + 288] = 0
    mem[_351 + (32 * _9) + 320] = 0
    mem[_351 + (32 * _9) + 352] = 0
    mem[_351 + (32 * _9) + 384] = 0
    mem[_351 + (32 * _9) + 416] = 0
    mem[_351 + (32 * _9) + 448] = 0
    mem[var42002] = var42001
    if not var42003 - 1:
        if _9 > test266151307():
            revert with 'NH{q', 65
        mem[_351 + (32 * _9) + 480] = _9
        mem[64] = _351 + (64 * _9) + 512
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2437 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _2477 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _2524 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_2524] = mem[_2437]
                mem[_2477] = _2524
                require mem[_2437 + 32] == mem[_2437 + 48 len 16]
                mem[_2477 + 32] = mem[_2437 + 32]
                require mem[_2437 + 64] == mem[_2437 + 80 len 16]
                mem[_2477 + 64] = mem[_2437 + 64]
                require mem[_2437 + 96] == mem[_2437 + 112 len 16]
                mem[_2477 + 96] = mem[_2437 + 96]
                require mem[_2437 + 128] == mem[_2437 + 144 len 16]
                mem[_2477 + 128] = mem[_2437 + 128]
                require mem[_2437 + 160] == mem[_2437 + 176 len 16]
                mem[_2477 + 160] = mem[_2437 + 160]
                require mem[_2437 + 192] == mem[_2437 + 219 len 5]
                mem[_2477 + 192] = mem[_2437 + 192]
                require mem[_2437 + 224] == mem[_2437 + 236 len 20]
                mem[_2477 + 224] = mem[_2437 + 224]
                require mem[_2437 + 256] == mem[_2437 + 268 len 20]
                mem[_2477 + 256] = mem[_2437 + 256]
                require mem[_2437 + 288] == mem[_2437 + 300 len 20]
                mem[_2477 + 288] = mem[_2437 + 288]
                require mem[_2437 + 320] == mem[_2437 + 332 len 20]
                mem[_2477 + 320] = mem[_2437 + 320]
                require mem[_2437 + 352] == mem[_2437 + 383 len 1]
                mem[_2477 + 352] = mem[_2437 + 352]
                if idx >= mem[_351 + (32 * _9) + 480]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + (32 * _9) + 512] = _2477
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _2803 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _2803:
                if idx >= mem[_351 + (32 * _9) + 480]:
                    revert with 'NH{q', 50
                _2820 = mem[mem[(32 * idx) + _351 + (32 * _9) + 512] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_2820))
                staticcall address(_2820).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2833 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2855 = mem[_2833]
                _2862 = mem[64]
                mem[64] = mem[64] + 224
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_2862] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_351 + (32 * _9) + 480]:
                    revert with 'NH{q', 50
                _2891 = mem[mem[(32 * idx) + _351 + (32 * _9) + 512] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_2891))
                staticcall address(_2891).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2915 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_2862 + 32] = mem[_2915]
                mem[_2862 + 64] = _2855
                if not _2855:
                    mem[_2862 + 96] = 0
                else:
                    _3082 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3082] = 2
                    mem[_3082 + 32] = '48'
                    if _2855 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                        _3089 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[idx + _3089 + 68] = mem[idx + _3082 + 32]
                            _2803 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        mem[_3089 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _3089 + -mem[64] + 100
                    if _2855 and 5000 > -1 / _2855:
                        revert with 'NH{q', 17
                    if 5000 * _2855 > -5001:
                        revert with 'NH{q', 17
                    mem[_2862 + 96] = (5000 * _2855) + 5000 / 10000
                if idx >= mem[_351 + (32 * _9) + 480]:
                    revert with 'NH{q', 50
                mem[_2862 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 512]] + 25 len 1]
                if idx >= mem[_351 + (32 * _9) + 480]:
                    revert with 'NH{q', 50
                mem[_2862 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 512]] + 26 len 2]
                if idx >= mem[_351 + (32 * _9) + 480]:
                    revert with 'NH{q', 50
                mem[_2862 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 512]] + 30 len 2]
                if idx >= mem[_351]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + 32] = _2862
                if idx == -1:
                    revert with 'NH{q', 17
                _2803 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            _2818 = mem[64]
            mem[mem[64]] = 32
            _2828 = mem[_351]
            mem[mem[64] + 32] = mem[_351]
            idx = 0
            s = _351 + 32
            t = mem[64] + 64
            while idx < _2828:
                _3298 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3298 + 32]
                mem[t + 64] = mem[_3298 + 64]
                mem[t + 96] = mem[_3298 + 96]
                mem[t + 128] = mem[_3298 + 128]
                mem[t + 160] = mem[_3298 + 160]
                mem[t + 192] = mem[_3298 + 192]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _2818 + (224 * _2828) + -mem[64] + 64
        mem[64] = _351 + (64 * _9) + 928
        mem[_351 + (64 * _9) + 896] = 0
        mem[_351 + (64 * _9) + 512] = _351 + (64 * _9) + 896
        mem[_351 + (64 * _9) + 544] = 0
        mem[_351 + (64 * _9) + 576] = 0
        mem[_351 + (64 * _9) + 608] = 0
        mem[_351 + (64 * _9) + 640] = 0
        mem[_351 + (64 * _9) + 672] = 0
        mem[_351 + (64 * _9) + 704] = 0
        mem[_351 + (64 * _9) + 736] = 0
        mem[_351 + (64 * _9) + 768] = 0
        mem[_351 + (64 * _9) + 800] = 0
        mem[_351 + (64 * _9) + 832] = 0
        mem[_351 + (64 * _9) + 864] = 0
        mem[_351 + (32 * _9) + 512] = _351 + (64 * _9) + 512
        s = _351 + (32 * _9) + 512
        idx = _9
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[_351 + (64 * _9) + 896] = 0
            mem[_351 + (64 * _9) + 512] = _351 + (64 * _9) + 896
            mem[_351 + (64 * _9) + 544] = 0
            mem[_351 + (64 * _9) + 576] = 0
            mem[_351 + (64 * _9) + 608] = 0
            mem[_351 + (64 * _9) + 640] = 0
            mem[_351 + (64 * _9) + 672] = 0
            mem[_351 + (64 * _9) + 704] = 0
            mem[_351 + (64 * _9) + 736] = 0
            mem[_351 + (64 * _9) + 768] = 0
            mem[_351 + (64 * _9) + 800] = 0
            mem[_351 + (64 * _9) + 832] = 0
            mem[_351 + (64 * _9) + 864] = 0
            mem[s + 32] = _351 + (64 * _9) + 512
            s = s + 32
            idx = idx - 1
            continue 
        _2804 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _2804:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2852 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _2880 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 384
            require return_data.size >= 32
            _2938 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            mem[_2938] = mem[_2852]
            mem[_2880] = _2938
            require mem[_2852 + 32] == mem[_2852 + 48 len 16]
            mem[_2880 + 32] = mem[_2852 + 32]
            require mem[_2852 + 64] == mem[_2852 + 80 len 16]
            mem[_2880 + 64] = mem[_2852 + 64]
            require mem[_2852 + 96] == mem[_2852 + 112 len 16]
            mem[_2880 + 96] = mem[_2852 + 96]
            require mem[_2852 + 128] == mem[_2852 + 144 len 16]
            mem[_2880 + 128] = mem[_2852 + 128]
            require mem[_2852 + 160] == mem[_2852 + 176 len 16]
            mem[_2880 + 160] = mem[_2852 + 160]
            require mem[_2852 + 192] == mem[_2852 + 219 len 5]
            mem[_2880 + 192] = mem[_2852 + 192]
            require mem[_2852 + 224] == mem[_2852 + 236 len 20]
            mem[_2880 + 224] = mem[_2852 + 224]
            require mem[_2852 + 256] == mem[_2852 + 268 len 20]
            mem[_2880 + 256] = mem[_2852 + 256]
            require mem[_2852 + 288] == mem[_2852 + 300 len 20]
            mem[_2880 + 288] = mem[_2852 + 288]
            require mem[_2852 + 320] == mem[_2852 + 332 len 20]
            mem[_2880 + 320] = mem[_2852 + 320]
            require mem[_2852 + 352] == mem[_2852 + 383 len 1]
            mem[_2880 + 352] = mem[_2852 + 352]
            if idx >= mem[_351 + (32 * _9) + 480]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + (32 * _9) + 512] = _2880
            if idx == -1:
                revert with 'NH{q', 17
            _2804 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _3296 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _3296:
            if idx >= mem[_351 + (32 * _9) + 480]:
                revert with 'NH{q', 50
            _3315 = mem[mem[(32 * idx) + _351 + (32 * _9) + 512] + 288]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_3315))
            staticcall address(_3315).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3332 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3352 = mem[_3332]
            _3367 = mem[64]
            mem[64] = mem[64] + 224
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_3367] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[_351 + (32 * _9) + 480]:
                revert with 'NH{q', 50
            _3386 = mem[mem[(32 * idx) + _351 + (32 * _9) + 512] + 224]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_3386))
            staticcall address(_3386).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3417 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_3367 + 32] = mem[_3417]
            mem[_3367 + 64] = _3352
            if not _3352:
                mem[_3367 + 96] = 0
            else:
                _3541 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3541] = 2
                mem[_3541 + 32] = '48'
                if _3352 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    _3546 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[idx + _3546 + 68] = mem[idx + _3541 + 32]
                        _3296 = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = idx + 32
                        continue 
                    mem[_3546 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _3546 + -mem[64] + 100
                if _3352 and 5000 > -1 / _3352:
                    revert with 'NH{q', 17
                if 5000 * _3352 > -5001:
                    revert with 'NH{q', 17
                mem[_3367 + 96] = (5000 * _3352) + 5000 / 10000
            if idx >= mem[_351 + (32 * _9) + 480]:
                revert with 'NH{q', 50
            mem[_3367 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 512]] + 25 len 1]
            if idx >= mem[_351 + (32 * _9) + 480]:
                revert with 'NH{q', 50
            mem[_3367 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 512]] + 26 len 2]
            if idx >= mem[_351 + (32 * _9) + 480]:
                revert with 'NH{q', 50
            mem[_3367 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 512]] + 30 len 2]
            if idx >= mem[_351]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + 32] = _3367
            if idx == -1:
                revert with 'NH{q', 17
            _3296 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _3313 = mem[64]
        mem[mem[64]] = 32
        _3323 = mem[_351]
        mem[mem[64] + 32] = mem[_351]
        idx = 0
        s = _351 + 32
        t = mem[64] + 64
        while idx < _3323:
            _3705 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3705 + 32]
            mem[t + 64] = mem[_3705 + 64]
            mem[t + 96] = mem[_3705 + 96]
            mem[t + 128] = mem[_3705 + 128]
            mem[t + 160] = mem[_3705 + 160]
            mem[t + 192] = mem[_3705 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _3313 + (224 * _3323) + -mem[64] + 64
    mem[_351 + (32 * _9) + 480] = 0
    mem[_351 + (32 * _9) + 512] = 0
    mem[_351 + (32 * _9) + 544] = 0
    mem[_351 + (32 * _9) + 576] = 0
    mem[_351 + (32 * _9) + 608] = 0
    mem[_351 + (32 * _9) + 640] = 0
    mem[_351 + (32 * _9) + 672] = 0
    mem[var46002] = var46001
    if not var46003 - 1:
        if _9 > test266151307():
            revert with 'NH{q', 65
        mem[_351 + (32 * _9) + 704] = _9
        mem[64] = _351 + (64 * _9) + 736
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3334 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _3374 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _3421 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_3421] = mem[_3334]
                mem[_3374] = _3421
                require mem[_3334 + 32] == mem[_3334 + 48 len 16]
                mem[_3374 + 32] = mem[_3334 + 32]
                require mem[_3334 + 64] == mem[_3334 + 80 len 16]
                mem[_3374 + 64] = mem[_3334 + 64]
                require mem[_3334 + 96] == mem[_3334 + 112 len 16]
                mem[_3374 + 96] = mem[_3334 + 96]
                require mem[_3334 + 128] == mem[_3334 + 144 len 16]
                mem[_3374 + 128] = mem[_3334 + 128]
                require mem[_3334 + 160] == mem[_3334 + 176 len 16]
                mem[_3374 + 160] = mem[_3334 + 160]
                require mem[_3334 + 192] == mem[_3334 + 219 len 5]
                mem[_3374 + 192] = mem[_3334 + 192]
                require mem[_3334 + 224] == mem[_3334 + 236 len 20]
                mem[_3374 + 224] = mem[_3334 + 224]
                require mem[_3334 + 256] == mem[_3334 + 268 len 20]
                mem[_3374 + 256] = mem[_3334 + 256]
                require mem[_3334 + 288] == mem[_3334 + 300 len 20]
                mem[_3374 + 288] = mem[_3334 + 288]
                require mem[_3334 + 320] == mem[_3334 + 332 len 20]
                mem[_3374 + 320] = mem[_3334 + 320]
                require mem[_3334 + 352] == mem[_3334 + 383 len 1]
                mem[_3374 + 352] = mem[_3334 + 352]
                if idx >= mem[_351 + (32 * _9) + 704]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + (32 * _9) + 736] = _3374
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3700 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _3700:
                if idx >= mem[_351 + (32 * _9) + 704]:
                    revert with 'NH{q', 50
                _3717 = mem[mem[(32 * idx) + _351 + (32 * _9) + 736] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_3717))
                staticcall address(_3717).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3730 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3752 = mem[_3730]
                _3759 = mem[64]
                mem[64] = mem[64] + 224
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_3759] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_351 + (32 * _9) + 704]:
                    revert with 'NH{q', 50
                _3788 = mem[mem[(32 * idx) + _351 + (32 * _9) + 736] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_3788))
                staticcall address(_3788).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3812 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_3759 + 32] = mem[_3812]
                mem[_3759 + 64] = _3752
                if not _3752:
                    mem[_3759 + 96] = 0
                else:
                    _3979 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3979] = 2
                    mem[_3979 + 32] = '48'
                    if _3752 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                        _3986 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[idx + _3986 + 68] = mem[idx + _3979 + 32]
                            _3700 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        mem[_3986 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _3986 + -mem[64] + 100
                    if _3752 and 5000 > -1 / _3752:
                        revert with 'NH{q', 17
                    if 5000 * _3752 > -5001:
                        revert with 'NH{q', 17
                    mem[_3759 + 96] = (5000 * _3752) + 5000 / 10000
                if idx >= mem[_351 + (32 * _9) + 704]:
                    revert with 'NH{q', 50
                mem[_3759 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 736]] + 25 len 1]
                if idx >= mem[_351 + (32 * _9) + 704]:
                    revert with 'NH{q', 50
                mem[_3759 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 736]] + 26 len 2]
                if idx >= mem[_351 + (32 * _9) + 704]:
                    revert with 'NH{q', 50
                mem[_3759 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 736]] + 30 len 2]
                if idx >= mem[_351]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + 32] = _3759
                if idx == -1:
                    revert with 'NH{q', 17
                _3700 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            _3715 = mem[64]
            mem[mem[64]] = 32
            _3725 = mem[_351]
            mem[mem[64] + 32] = mem[_351]
            idx = 0
            s = _351 + 32
            t = mem[64] + 64
            while idx < _3725:
                _4195 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_4195 + 32]
                mem[t + 64] = mem[_4195 + 64]
                mem[t + 96] = mem[_4195 + 96]
                mem[t + 128] = mem[_4195 + 128]
                mem[t + 160] = mem[_4195 + 160]
                mem[t + 192] = mem[_4195 + 192]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _3715 + (224 * _3725) + -mem[64] + 64
        mem[64] = _351 + (64 * _9) + 1152
        mem[_351 + (64 * _9) + 1120] = 0
        mem[_351 + (64 * _9) + 736] = _351 + (64 * _9) + 1120
        mem[_351 + (64 * _9) + 768] = 0
        mem[_351 + (64 * _9) + 800] = 0
        mem[_351 + (64 * _9) + 832] = 0
        mem[_351 + (64 * _9) + 864] = 0
        mem[_351 + (64 * _9) + 896] = 0
        mem[_351 + (64 * _9) + 928] = 0
        mem[_351 + (64 * _9) + 960] = 0
        mem[_351 + (64 * _9) + 992] = 0
        mem[_351 + (64 * _9) + 1024] = 0
        mem[_351 + (64 * _9) + 1056] = 0
        mem[_351 + (64 * _9) + 1088] = 0
        mem[_351 + (32 * _9) + 736] = _351 + (64 * _9) + 736
        s = _351 + (32 * _9) + 736
        idx = _9
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[_351 + (64 * _9) + 1120] = 0
            mem[_351 + (64 * _9) + 736] = _351 + (64 * _9) + 1120
            mem[_351 + (64 * _9) + 768] = 0
            mem[_351 + (64 * _9) + 800] = 0
            mem[_351 + (64 * _9) + 832] = 0
            mem[_351 + (64 * _9) + 864] = 0
            mem[_351 + (64 * _9) + 896] = 0
            mem[_351 + (64 * _9) + 928] = 0
            mem[_351 + (64 * _9) + 960] = 0
            mem[_351 + (64 * _9) + 992] = 0
            mem[_351 + (64 * _9) + 1024] = 0
            mem[_351 + (64 * _9) + 1056] = 0
            mem[_351 + (64 * _9) + 1088] = 0
            mem[s + 32] = _351 + (64 * _9) + 736
            s = s + 32
            idx = idx - 1
            continue 
        _3701 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _3701:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3749 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _3777 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 384
            require return_data.size >= 32
            _3835 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            mem[_3835] = mem[_3749]
            mem[_3777] = _3835
            require mem[_3749 + 32] == mem[_3749 + 48 len 16]
            mem[_3777 + 32] = mem[_3749 + 32]
            require mem[_3749 + 64] == mem[_3749 + 80 len 16]
            mem[_3777 + 64] = mem[_3749 + 64]
            require mem[_3749 + 96] == mem[_3749 + 112 len 16]
            mem[_3777 + 96] = mem[_3749 + 96]
            require mem[_3749 + 128] == mem[_3749 + 144 len 16]
            mem[_3777 + 128] = mem[_3749 + 128]
            require mem[_3749 + 160] == mem[_3749 + 176 len 16]
            mem[_3777 + 160] = mem[_3749 + 160]
            require mem[_3749 + 192] == mem[_3749 + 219 len 5]
            mem[_3777 + 192] = mem[_3749 + 192]
            require mem[_3749 + 224] == mem[_3749 + 236 len 20]
            mem[_3777 + 224] = mem[_3749 + 224]
            require mem[_3749 + 256] == mem[_3749 + 268 len 20]
            mem[_3777 + 256] = mem[_3749 + 256]
            require mem[_3749 + 288] == mem[_3749 + 300 len 20]
            mem[_3777 + 288] = mem[_3749 + 288]
            require mem[_3749 + 320] == mem[_3749 + 332 len 20]
            mem[_3777 + 320] = mem[_3749 + 320]
            require mem[_3749 + 352] == mem[_3749 + 383 len 1]
            mem[_3777 + 352] = mem[_3749 + 352]
            if idx >= mem[_351 + (32 * _9) + 704]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + (32 * _9) + 736] = _3777
            if idx == -1:
                revert with 'NH{q', 17
            _3701 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _4193 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _4193:
            if idx >= mem[_351 + (32 * _9) + 704]:
                revert with 'NH{q', 50
            _4212 = mem[mem[(32 * idx) + _351 + (32 * _9) + 736] + 288]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_4212))
            staticcall address(_4212).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4229 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4249 = mem[_4229]
            _4264 = mem[64]
            mem[64] = mem[64] + 224
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_4264] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[_351 + (32 * _9) + 704]:
                revert with 'NH{q', 50
            _4283 = mem[mem[(32 * idx) + _351 + (32 * _9) + 736] + 224]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_4283))
            staticcall address(_4283).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4314 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_4264 + 32] = mem[_4314]
            mem[_4264 + 64] = _4249
            if not _4249:
                mem[_4264 + 96] = 0
            else:
                _4438 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4438] = 2
                mem[_4438 + 32] = '48'
                if _4249 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    _4443 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[idx + _4443 + 68] = mem[idx + _4438 + 32]
                        _4193 = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = idx + 32
                        continue 
                    mem[_4443 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _4443 + -mem[64] + 100
                if _4249 and 5000 > -1 / _4249:
                    revert with 'NH{q', 17
                if 5000 * _4249 > -5001:
                    revert with 'NH{q', 17
                mem[_4264 + 96] = (5000 * _4249) + 5000 / 10000
            if idx >= mem[_351 + (32 * _9) + 704]:
                revert with 'NH{q', 50
            mem[_4264 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 736]] + 25 len 1]
            if idx >= mem[_351 + (32 * _9) + 704]:
                revert with 'NH{q', 50
            mem[_4264 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 736]] + 26 len 2]
            if idx >= mem[_351 + (32 * _9) + 704]:
                revert with 'NH{q', 50
            mem[_4264 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 736]] + 30 len 2]
            if idx >= mem[_351]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + 32] = _4264
            if idx == -1:
                revert with 'NH{q', 17
            _4193 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _4210 = mem[64]
        mem[mem[64]] = 32
        _4220 = mem[_351]
        mem[mem[64] + 32] = mem[_351]
        idx = 0
        s = _351 + 32
        t = mem[64] + 64
        while idx < _4220:
            _4602 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_4602 + 32]
            mem[t + 64] = mem[_4602 + 64]
            mem[t + 96] = mem[_4602 + 96]
            mem[t + 128] = mem[_4602 + 128]
            mem[t + 160] = mem[_4602 + 160]
            mem[t + 192] = mem[_4602 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _4210 + (224 * _4220) + -mem[64] + 64
    mem[_351 + (32 * _9) + 704] = 0
    mem[_351 + (32 * _9) + 736] = 0
    mem[_351 + (32 * _9) + 768] = 0
    mem[_351 + (32 * _9) + 800] = 0
    mem[_351 + (32 * _9) + 832] = 0
    mem[_351 + (32 * _9) + 864] = 0
    mem[_351 + (32 * _9) + 896] = 0
    mem[var50002] = var50001
    if not var50003 - 1:
        if _9 > test266151307():
            revert with 'NH{q', 65
        mem[_351 + (32 * _9) + 928] = _9
        mem[64] = _351 + (64 * _9) + 960
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4231 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _4271 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _4318 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_4318] = mem[_4231]
                mem[_4271] = _4318
                require mem[_4231 + 32] == mem[_4231 + 48 len 16]
                mem[_4271 + 32] = mem[_4231 + 32]
                require mem[_4231 + 64] == mem[_4231 + 80 len 16]
                mem[_4271 + 64] = mem[_4231 + 64]
                require mem[_4231 + 96] == mem[_4231 + 112 len 16]
                mem[_4271 + 96] = mem[_4231 + 96]
                require mem[_4231 + 128] == mem[_4231 + 144 len 16]
                mem[_4271 + 128] = mem[_4231 + 128]
                require mem[_4231 + 160] == mem[_4231 + 176 len 16]
                mem[_4271 + 160] = mem[_4231 + 160]
                require mem[_4231 + 192] == mem[_4231 + 219 len 5]
                mem[_4271 + 192] = mem[_4231 + 192]
                require mem[_4231 + 224] == mem[_4231 + 236 len 20]
                mem[_4271 + 224] = mem[_4231 + 224]
                require mem[_4231 + 256] == mem[_4231 + 268 len 20]
                mem[_4271 + 256] = mem[_4231 + 256]
                require mem[_4231 + 288] == mem[_4231 + 300 len 20]
                mem[_4271 + 288] = mem[_4231 + 288]
                require mem[_4231 + 320] == mem[_4231 + 332 len 20]
                mem[_4271 + 320] = mem[_4231 + 320]
                require mem[_4231 + 352] == mem[_4231 + 383 len 1]
                mem[_4271 + 352] = mem[_4231 + 352]
                if idx >= mem[_351 + (32 * _9) + 928]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + (32 * _9) + 960] = _4271
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _4597 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _4597:
                if idx >= mem[_351 + (32 * _9) + 928]:
                    revert with 'NH{q', 50
                _4614 = mem[mem[(32 * idx) + _351 + (32 * _9) + 960] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_4614))
                staticcall address(_4614).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4627 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4649 = mem[_4627]
                _4656 = mem[64]
                mem[64] = mem[64] + 224
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_4656] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_351 + (32 * _9) + 928]:
                    revert with 'NH{q', 50
                _4685 = mem[mem[(32 * idx) + _351 + (32 * _9) + 960] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_4685))
                staticcall address(_4685).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4709 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_4656 + 32] = mem[_4709]
                mem[_4656 + 64] = _4649
                if not _4649:
                    mem[_4656 + 96] = 0
                else:
                    _4876 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4876] = 2
                    mem[_4876 + 32] = '48'
                    if _4649 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                        _4883 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[idx + _4883 + 68] = mem[idx + _4876 + 32]
                            _4597 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        mem[_4883 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _4883 + -mem[64] + 100
                    if _4649 and 5000 > -1 / _4649:
                        revert with 'NH{q', 17
                    if 5000 * _4649 > -5001:
                        revert with 'NH{q', 17
                    mem[_4656 + 96] = (5000 * _4649) + 5000 / 10000
                if idx >= mem[_351 + (32 * _9) + 928]:
                    revert with 'NH{q', 50
                mem[_4656 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 960]] + 25 len 1]
                if idx >= mem[_351 + (32 * _9) + 928]:
                    revert with 'NH{q', 50
                mem[_4656 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 960]] + 26 len 2]
                if idx >= mem[_351 + (32 * _9) + 928]:
                    revert with 'NH{q', 50
                mem[_4656 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 960]] + 30 len 2]
                if idx >= mem[_351]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + 32] = _4656
                if idx == -1:
                    revert with 'NH{q', 17
                _4597 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            _4612 = mem[64]
            mem[mem[64]] = 32
            _4622 = mem[_351]
            mem[mem[64] + 32] = mem[_351]
            idx = 0
            s = _351 + 32
            t = mem[64] + 64
            while idx < _4622:
                _5092 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_5092 + 32]
                mem[t + 64] = mem[_5092 + 64]
                mem[t + 96] = mem[_5092 + 96]
                mem[t + 128] = mem[_5092 + 128]
                mem[t + 160] = mem[_5092 + 160]
                mem[t + 192] = mem[_5092 + 192]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _4612 + (224 * _4622) + -mem[64] + 64
        mem[64] = _351 + (64 * _9) + 1376
        mem[_351 + (64 * _9) + 1344] = 0
        mem[_351 + (64 * _9) + 960] = _351 + (64 * _9) + 1344
        mem[_351 + (64 * _9) + 992] = 0
        mem[_351 + (64 * _9) + 1024] = 0
        mem[_351 + (64 * _9) + 1056] = 0
        mem[_351 + (64 * _9) + 1088] = 0
        mem[_351 + (64 * _9) + 1120] = 0
        mem[_351 + (64 * _9) + 1152] = 0
        mem[_351 + (64 * _9) + 1184] = 0
        mem[_351 + (64 * _9) + 1216] = 0
        mem[_351 + (64 * _9) + 1248] = 0
        mem[_351 + (64 * _9) + 1280] = 0
        mem[_351 + (64 * _9) + 1312] = 0
        mem[_351 + (32 * _9) + 960] = _351 + (64 * _9) + 960
        s = _351 + (32 * _9) + 960
        idx = _9
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[_351 + (64 * _9) + 1344] = 0
            mem[_351 + (64 * _9) + 960] = _351 + (64 * _9) + 1344
            mem[_351 + (64 * _9) + 992] = 0
            mem[_351 + (64 * _9) + 1024] = 0
            mem[_351 + (64 * _9) + 1056] = 0
            mem[_351 + (64 * _9) + 1088] = 0
            mem[_351 + (64 * _9) + 1120] = 0
            mem[_351 + (64 * _9) + 1152] = 0
            mem[_351 + (64 * _9) + 1184] = 0
            mem[_351 + (64 * _9) + 1216] = 0
            mem[_351 + (64 * _9) + 1248] = 0
            mem[_351 + (64 * _9) + 1280] = 0
            mem[_351 + (64 * _9) + 1312] = 0
            mem[s + 32] = _351 + (64 * _9) + 960
            s = s + 32
            idx = idx - 1
            continue 
        _4598 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _4598:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4646 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _4674 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 384
            require return_data.size >= 32
            _4732 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            mem[_4732] = mem[_4646]
            mem[_4674] = _4732
            require mem[_4646 + 32] == mem[_4646 + 48 len 16]
            mem[_4674 + 32] = mem[_4646 + 32]
            require mem[_4646 + 64] == mem[_4646 + 80 len 16]
            mem[_4674 + 64] = mem[_4646 + 64]
            require mem[_4646 + 96] == mem[_4646 + 112 len 16]
            mem[_4674 + 96] = mem[_4646 + 96]
            require mem[_4646 + 128] == mem[_4646 + 144 len 16]
            mem[_4674 + 128] = mem[_4646 + 128]
            require mem[_4646 + 160] == mem[_4646 + 176 len 16]
            mem[_4674 + 160] = mem[_4646 + 160]
            require mem[_4646 + 192] == mem[_4646 + 219 len 5]
            mem[_4674 + 192] = mem[_4646 + 192]
            require mem[_4646 + 224] == mem[_4646 + 236 len 20]
            mem[_4674 + 224] = mem[_4646 + 224]
            require mem[_4646 + 256] == mem[_4646 + 268 len 20]
            mem[_4674 + 256] = mem[_4646 + 256]
            require mem[_4646 + 288] == mem[_4646 + 300 len 20]
            mem[_4674 + 288] = mem[_4646 + 288]
            require mem[_4646 + 320] == mem[_4646 + 332 len 20]
            mem[_4674 + 320] = mem[_4646 + 320]
            require mem[_4646 + 352] == mem[_4646 + 383 len 1]
            mem[_4674 + 352] = mem[_4646 + 352]
            if idx >= mem[_351 + (32 * _9) + 928]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + (32 * _9) + 960] = _4674
            if idx == -1:
                revert with 'NH{q', 17
            _4598 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _5090 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _5090:
            if idx >= mem[_351 + (32 * _9) + 928]:
                revert with 'NH{q', 50
            _5109 = mem[mem[(32 * idx) + _351 + (32 * _9) + 960] + 288]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_5109))
            staticcall address(_5109).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5146 = mem[_5126]
            _5161 = mem[64]
            mem[64] = mem[64] + 224
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_5161] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[_351 + (32 * _9) + 928]:
                revert with 'NH{q', 50
            _5180 = mem[mem[(32 * idx) + _351 + (32 * _9) + 960] + 224]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_5180))
            staticcall address(_5180).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5211 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_5161 + 32] = mem[_5211]
            mem[_5161 + 64] = _5146
            if not _5146:
                mem[_5161 + 96] = 0
            else:
                _5335 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5335] = 2
                mem[_5335 + 32] = '48'
                if _5146 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    _5340 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[idx + _5340 + 68] = mem[idx + _5335 + 32]
                        _5090 = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = idx + 32
                        continue 
                    mem[_5340 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _5340 + -mem[64] + 100
                if _5146 and 5000 > -1 / _5146:
                    revert with 'NH{q', 17
                if 5000 * _5146 > -5001:
                    revert with 'NH{q', 17
                mem[_5161 + 96] = (5000 * _5146) + 5000 / 10000
            if idx >= mem[_351 + (32 * _9) + 928]:
                revert with 'NH{q', 50
            mem[_5161 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 960]] + 25 len 1]
            if idx >= mem[_351 + (32 * _9) + 928]:
                revert with 'NH{q', 50
            mem[_5161 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 960]] + 26 len 2]
            if idx >= mem[_351 + (32 * _9) + 928]:
                revert with 'NH{q', 50
            mem[_5161 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 960]] + 30 len 2]
            if idx >= mem[_351]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + 32] = _5161
            if idx == -1:
                revert with 'NH{q', 17
            _5090 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _5107 = mem[64]
        mem[mem[64]] = 32
        _5117 = mem[_351]
        mem[mem[64] + 32] = mem[_351]
        idx = 0
        s = _351 + 32
        t = mem[64] + 64
        while idx < _5117:
            _5499 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_5499 + 32]
            mem[t + 64] = mem[_5499 + 64]
            mem[t + 96] = mem[_5499 + 96]
            mem[t + 128] = mem[_5499 + 128]
            mem[t + 160] = mem[_5499 + 160]
            mem[t + 192] = mem[_5499 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _5107 + (224 * _5117) + -mem[64] + 64
    mem[_351 + (32 * _9) + 928] = 0
    mem[_351 + (32 * _9) + 960] = 0
    mem[_351 + (32 * _9) + 992] = 0
    mem[_351 + (32 * _9) + 1024] = 0
    mem[_351 + (32 * _9) + 1056] = 0
    mem[_351 + (32 * _9) + 1088] = 0
    mem[_351 + (32 * _9) + 1120] = 0
    mem[var54002] = var54001
    if not var54003 - 1:
        if _9 > test266151307():
            revert with 'NH{q', 65
        mem[_351 + (32 * _9) + 1152] = _9
        mem[64] = _351 + (64 * _9) + 1184
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5128 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _5168 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _5215 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_5215] = mem[_5128]
                mem[_5168] = _5215
                require mem[_5128 + 32] == mem[_5128 + 48 len 16]
                mem[_5168 + 32] = mem[_5128 + 32]
                require mem[_5128 + 64] == mem[_5128 + 80 len 16]
                mem[_5168 + 64] = mem[_5128 + 64]
                require mem[_5128 + 96] == mem[_5128 + 112 len 16]
                mem[_5168 + 96] = mem[_5128 + 96]
                require mem[_5128 + 128] == mem[_5128 + 144 len 16]
                mem[_5168 + 128] = mem[_5128 + 128]
                require mem[_5128 + 160] == mem[_5128 + 176 len 16]
                mem[_5168 + 160] = mem[_5128 + 160]
                require mem[_5128 + 192] == mem[_5128 + 219 len 5]
                mem[_5168 + 192] = mem[_5128 + 192]
                require mem[_5128 + 224] == mem[_5128 + 236 len 20]
                mem[_5168 + 224] = mem[_5128 + 224]
                require mem[_5128 + 256] == mem[_5128 + 268 len 20]
                mem[_5168 + 256] = mem[_5128 + 256]
                require mem[_5128 + 288] == mem[_5128 + 300 len 20]
                mem[_5168 + 288] = mem[_5128 + 288]
                require mem[_5128 + 320] == mem[_5128 + 332 len 20]
                mem[_5168 + 320] = mem[_5128 + 320]
                require mem[_5128 + 352] == mem[_5128 + 383 len 1]
                mem[_5168 + 352] = mem[_5128 + 352]
                if idx >= mem[_351 + (32 * _9) + 1152]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + (32 * _9) + 1184] = _5168
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _5494 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _5494:
                if idx >= mem[_351 + (32 * _9) + 1152]:
                    revert with 'NH{q', 50
                _5511 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1184] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_5511))
                staticcall address(_5511).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5524 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5546 = mem[_5524]
                _5553 = mem[64]
                mem[64] = mem[64] + 224
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_5553] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_351 + (32 * _9) + 1152]:
                    revert with 'NH{q', 50
                _5582 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1184] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_5582))
                staticcall address(_5582).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5606 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_5553 + 32] = mem[_5606]
                mem[_5553 + 64] = _5546
                if not _5546:
                    mem[_5553 + 96] = 0
                else:
                    _5773 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5773] = 2
                    mem[_5773 + 32] = '48'
                    if _5546 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                        _5780 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[idx + _5780 + 68] = mem[idx + _5773 + 32]
                            _5494 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        mem[_5780 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _5780 + -mem[64] + 100
                    if _5546 and 5000 > -1 / _5546:
                        revert with 'NH{q', 17
                    if 5000 * _5546 > -5001:
                        revert with 'NH{q', 17
                    mem[_5553 + 96] = (5000 * _5546) + 5000 / 10000
                if idx >= mem[_351 + (32 * _9) + 1152]:
                    revert with 'NH{q', 50
                mem[_5553 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1184]] + 25 len 1]
                if idx >= mem[_351 + (32 * _9) + 1152]:
                    revert with 'NH{q', 50
                mem[_5553 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1184]] + 26 len 2]
                if idx >= mem[_351 + (32 * _9) + 1152]:
                    revert with 'NH{q', 50
                mem[_5553 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1184]] + 30 len 2]
                if idx >= mem[_351]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + 32] = _5553
                if idx == -1:
                    revert with 'NH{q', 17
                _5494 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            _5509 = mem[64]
            mem[mem[64]] = 32
            _5519 = mem[_351]
            mem[mem[64] + 32] = mem[_351]
            idx = 0
            s = _351 + 32
            t = mem[64] + 64
            while idx < _5519:
                _5989 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_5989 + 32]
                mem[t + 64] = mem[_5989 + 64]
                mem[t + 96] = mem[_5989 + 96]
                mem[t + 128] = mem[_5989 + 128]
                mem[t + 160] = mem[_5989 + 160]
                mem[t + 192] = mem[_5989 + 192]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _5509 + (224 * _5519) + -mem[64] + 64
        mem[64] = _351 + (64 * _9) + 1600
        mem[_351 + (64 * _9) + 1568] = 0
        mem[_351 + (64 * _9) + 1184] = _351 + (64 * _9) + 1568
        mem[_351 + (64 * _9) + 1216] = 0
        mem[_351 + (64 * _9) + 1248] = 0
        mem[_351 + (64 * _9) + 1280] = 0
        mem[_351 + (64 * _9) + 1312] = 0
        mem[_351 + (64 * _9) + 1344] = 0
        mem[_351 + (64 * _9) + 1376] = 0
        mem[_351 + (64 * _9) + 1408] = 0
        mem[_351 + (64 * _9) + 1440] = 0
        mem[_351 + (64 * _9) + 1472] = 0
        mem[_351 + (64 * _9) + 1504] = 0
        mem[_351 + (64 * _9) + 1536] = 0
        mem[_351 + (32 * _9) + 1184] = _351 + (64 * _9) + 1184
        s = _351 + (32 * _9) + 1184
        idx = _9
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[_351 + (64 * _9) + 1568] = 0
            mem[_351 + (64 * _9) + 1184] = _351 + (64 * _9) + 1568
            mem[_351 + (64 * _9) + 1216] = 0
            mem[_351 + (64 * _9) + 1248] = 0
            mem[_351 + (64 * _9) + 1280] = 0
            mem[_351 + (64 * _9) + 1312] = 0
            mem[_351 + (64 * _9) + 1344] = 0
            mem[_351 + (64 * _9) + 1376] = 0
            mem[_351 + (64 * _9) + 1408] = 0
            mem[_351 + (64 * _9) + 1440] = 0
            mem[_351 + (64 * _9) + 1472] = 0
            mem[_351 + (64 * _9) + 1504] = 0
            mem[_351 + (64 * _9) + 1536] = 0
            mem[s + 32] = _351 + (64 * _9) + 1184
            s = s + 32
            idx = idx - 1
            continue 
        _5495 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _5495:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5543 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _5571 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 384
            require return_data.size >= 32
            _5629 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            mem[_5629] = mem[_5543]
            mem[_5571] = _5629
            require mem[_5543 + 32] == mem[_5543 + 48 len 16]
            mem[_5571 + 32] = mem[_5543 + 32]
            require mem[_5543 + 64] == mem[_5543 + 80 len 16]
            mem[_5571 + 64] = mem[_5543 + 64]
            require mem[_5543 + 96] == mem[_5543 + 112 len 16]
            mem[_5571 + 96] = mem[_5543 + 96]
            require mem[_5543 + 128] == mem[_5543 + 144 len 16]
            mem[_5571 + 128] = mem[_5543 + 128]
            require mem[_5543 + 160] == mem[_5543 + 176 len 16]
            mem[_5571 + 160] = mem[_5543 + 160]
            require mem[_5543 + 192] == mem[_5543 + 219 len 5]
            mem[_5571 + 192] = mem[_5543 + 192]
            require mem[_5543 + 224] == mem[_5543 + 236 len 20]
            mem[_5571 + 224] = mem[_5543 + 224]
            require mem[_5543 + 256] == mem[_5543 + 268 len 20]
            mem[_5571 + 256] = mem[_5543 + 256]
            require mem[_5543 + 288] == mem[_5543 + 300 len 20]
            mem[_5571 + 288] = mem[_5543 + 288]
            require mem[_5543 + 320] == mem[_5543 + 332 len 20]
            mem[_5571 + 320] = mem[_5543 + 320]
            require mem[_5543 + 352] == mem[_5543 + 383 len 1]
            mem[_5571 + 352] = mem[_5543 + 352]
            if idx >= mem[_351 + (32 * _9) + 1152]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + (32 * _9) + 1184] = _5571
            if idx == -1:
                revert with 'NH{q', 17
            _5495 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _5987 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _5987:
            if idx >= mem[_351 + (32 * _9) + 1152]:
                revert with 'NH{q', 50
            _6006 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1184] + 288]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_6006))
            staticcall address(_6006).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6023 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6043 = mem[_6023]
            _6058 = mem[64]
            mem[64] = mem[64] + 224
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_6058] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[_351 + (32 * _9) + 1152]:
                revert with 'NH{q', 50
            _6077 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1184] + 224]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_6077))
            staticcall address(_6077).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6108 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_6058 + 32] = mem[_6108]
            mem[_6058 + 64] = _6043
            if not _6043:
                mem[_6058 + 96] = 0
            else:
                _6232 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6232] = 2
                mem[_6232 + 32] = '48'
                if _6043 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    _6237 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[idx + _6237 + 68] = mem[idx + _6232 + 32]
                        _5987 = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = idx + 32
                        continue 
                    mem[_6237 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _6237 + -mem[64] + 100
                if _6043 and 5000 > -1 / _6043:
                    revert with 'NH{q', 17
                if 5000 * _6043 > -5001:
                    revert with 'NH{q', 17
                mem[_6058 + 96] = (5000 * _6043) + 5000 / 10000
            if idx >= mem[_351 + (32 * _9) + 1152]:
                revert with 'NH{q', 50
            mem[_6058 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1184]] + 25 len 1]
            if idx >= mem[_351 + (32 * _9) + 1152]:
                revert with 'NH{q', 50
            mem[_6058 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1184]] + 26 len 2]
            if idx >= mem[_351 + (32 * _9) + 1152]:
                revert with 'NH{q', 50
            mem[_6058 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1184]] + 30 len 2]
            if idx >= mem[_351]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + 32] = _6058
            if idx == -1:
                revert with 'NH{q', 17
            _5987 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _6004 = mem[64]
        mem[mem[64]] = 32
        _6014 = mem[_351]
        mem[mem[64] + 32] = mem[_351]
        idx = 0
        s = _351 + 32
        t = mem[64] + 64
        while idx < _6014:
            _6396 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_6396 + 32]
            mem[t + 64] = mem[_6396 + 64]
            mem[t + 96] = mem[_6396 + 96]
            mem[t + 128] = mem[_6396 + 128]
            mem[t + 160] = mem[_6396 + 160]
            mem[t + 192] = mem[_6396 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _6004 + (224 * _6014) + -mem[64] + 64
    mem[_351 + (32 * _9) + 1152] = 0
    mem[_351 + (32 * _9) + 1184] = 0
    mem[_351 + (32 * _9) + 1216] = 0
    mem[_351 + (32 * _9) + 1248] = 0
    mem[_351 + (32 * _9) + 1280] = 0
    mem[_351 + (32 * _9) + 1312] = 0
    mem[_351 + (32 * _9) + 1344] = 0
    mem[var58002] = var58001
    if not var58003 - 1:
        if _9 > test266151307():
            revert with 'NH{q', 65
        mem[_351 + (32 * _9) + 1376] = _9
        mem[64] = _351 + (64 * _9) + 1408
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6025 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _6065 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _6112 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_6112] = mem[_6025]
                mem[_6065] = _6112
                require mem[_6025 + 32] == mem[_6025 + 48 len 16]
                mem[_6065 + 32] = mem[_6025 + 32]
                require mem[_6025 + 64] == mem[_6025 + 80 len 16]
                mem[_6065 + 64] = mem[_6025 + 64]
                require mem[_6025 + 96] == mem[_6025 + 112 len 16]
                mem[_6065 + 96] = mem[_6025 + 96]
                require mem[_6025 + 128] == mem[_6025 + 144 len 16]
                mem[_6065 + 128] = mem[_6025 + 128]
                require mem[_6025 + 160] == mem[_6025 + 176 len 16]
                mem[_6065 + 160] = mem[_6025 + 160]
                require mem[_6025 + 192] == mem[_6025 + 219 len 5]
                mem[_6065 + 192] = mem[_6025 + 192]
                require mem[_6025 + 224] == mem[_6025 + 236 len 20]
                mem[_6065 + 224] = mem[_6025 + 224]
                require mem[_6025 + 256] == mem[_6025 + 268 len 20]
                mem[_6065 + 256] = mem[_6025 + 256]
                require mem[_6025 + 288] == mem[_6025 + 300 len 20]
                mem[_6065 + 288] = mem[_6025 + 288]
                require mem[_6025 + 320] == mem[_6025 + 332 len 20]
                mem[_6065 + 320] = mem[_6025 + 320]
                require mem[_6025 + 352] == mem[_6025 + 383 len 1]
                mem[_6065 + 352] = mem[_6025 + 352]
                if idx >= mem[_351 + (32 * _9) + 1376]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + (32 * _9) + 1408] = _6065
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _6391 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _6391:
                if idx >= mem[_351 + (32 * _9) + 1376]:
                    revert with 'NH{q', 50
                _6408 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1408] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_6408))
                staticcall address(_6408).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6443 = mem[_6421]
                _6450 = mem[64]
                mem[64] = mem[64] + 224
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_6450] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_351 + (32 * _9) + 1376]:
                    revert with 'NH{q', 50
                _6479 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1408] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_6479))
                staticcall address(_6479).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6503 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_6450 + 32] = mem[_6503]
                mem[_6450 + 64] = _6443
                if not _6443:
                    mem[_6450 + 96] = 0
                else:
                    _6670 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6670] = 2
                    mem[_6670 + 32] = '48'
                    if _6443 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                        _6677 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[idx + _6677 + 68] = mem[idx + _6670 + 32]
                            _6391 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        mem[_6677 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _6677 + -mem[64] + 100
                    if _6443 and 5000 > -1 / _6443:
                        revert with 'NH{q', 17
                    if 5000 * _6443 > -5001:
                        revert with 'NH{q', 17
                    mem[_6450 + 96] = (5000 * _6443) + 5000 / 10000
                if idx >= mem[_351 + (32 * _9) + 1376]:
                    revert with 'NH{q', 50
                mem[_6450 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1408]] + 25 len 1]
                if idx >= mem[_351 + (32 * _9) + 1376]:
                    revert with 'NH{q', 50
                mem[_6450 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1408]] + 26 len 2]
                if idx >= mem[_351 + (32 * _9) + 1376]:
                    revert with 'NH{q', 50
                mem[_6450 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1408]] + 30 len 2]
                if idx >= mem[_351]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + 32] = _6450
                if idx == -1:
                    revert with 'NH{q', 17
                _6391 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            _6406 = mem[64]
            mem[mem[64]] = 32
            _6416 = mem[_351]
            mem[mem[64] + 32] = mem[_351]
            idx = 0
            s = _351 + 32
            t = mem[64] + 64
            while idx < _6416:
                _6886 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_6886 + 32]
                mem[t + 64] = mem[_6886 + 64]
                mem[t + 96] = mem[_6886 + 96]
                mem[t + 128] = mem[_6886 + 128]
                mem[t + 160] = mem[_6886 + 160]
                mem[t + 192] = mem[_6886 + 192]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _6406 + (224 * _6416) + -mem[64] + 64
        mem[64] = _351 + (64 * _9) + 1824
        mem[_351 + (64 * _9) + 1792] = 0
        mem[_351 + (64 * _9) + 1408] = _351 + (64 * _9) + 1792
        mem[_351 + (64 * _9) + 1440] = 0
        mem[_351 + (64 * _9) + 1472] = 0
        mem[_351 + (64 * _9) + 1504] = 0
        mem[_351 + (64 * _9) + 1536] = 0
        mem[_351 + (64 * _9) + 1568] = 0
        mem[_351 + (64 * _9) + 1600] = 0
        mem[_351 + (64 * _9) + 1632] = 0
        mem[_351 + (64 * _9) + 1664] = 0
        mem[_351 + (64 * _9) + 1696] = 0
        mem[_351 + (64 * _9) + 1728] = 0
        mem[_351 + (64 * _9) + 1760] = 0
        mem[_351 + (32 * _9) + 1408] = _351 + (64 * _9) + 1408
        s = _351 + (32 * _9) + 1408
        idx = _9
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[_351 + (64 * _9) + 1792] = 0
            mem[_351 + (64 * _9) + 1408] = _351 + (64 * _9) + 1792
            mem[_351 + (64 * _9) + 1440] = 0
            mem[_351 + (64 * _9) + 1472] = 0
            mem[_351 + (64 * _9) + 1504] = 0
            mem[_351 + (64 * _9) + 1536] = 0
            mem[_351 + (64 * _9) + 1568] = 0
            mem[_351 + (64 * _9) + 1600] = 0
            mem[_351 + (64 * _9) + 1632] = 0
            mem[_351 + (64 * _9) + 1664] = 0
            mem[_351 + (64 * _9) + 1696] = 0
            mem[_351 + (64 * _9) + 1728] = 0
            mem[_351 + (64 * _9) + 1760] = 0
            mem[s + 32] = _351 + (64 * _9) + 1408
            s = s + 32
            idx = idx - 1
            continue 
        _6392 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _6392:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6440 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _6468 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 384
            require return_data.size >= 32
            _6526 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            mem[_6526] = mem[_6440]
            mem[_6468] = _6526
            require mem[_6440 + 32] == mem[_6440 + 48 len 16]
            mem[_6468 + 32] = mem[_6440 + 32]
            require mem[_6440 + 64] == mem[_6440 + 80 len 16]
            mem[_6468 + 64] = mem[_6440 + 64]
            require mem[_6440 + 96] == mem[_6440 + 112 len 16]
            mem[_6468 + 96] = mem[_6440 + 96]
            require mem[_6440 + 128] == mem[_6440 + 144 len 16]
            mem[_6468 + 128] = mem[_6440 + 128]
            require mem[_6440 + 160] == mem[_6440 + 176 len 16]
            mem[_6468 + 160] = mem[_6440 + 160]
            require mem[_6440 + 192] == mem[_6440 + 219 len 5]
            mem[_6468 + 192] = mem[_6440 + 192]
            require mem[_6440 + 224] == mem[_6440 + 236 len 20]
            mem[_6468 + 224] = mem[_6440 + 224]
            require mem[_6440 + 256] == mem[_6440 + 268 len 20]
            mem[_6468 + 256] = mem[_6440 + 256]
            require mem[_6440 + 288] == mem[_6440 + 300 len 20]
            mem[_6468 + 288] = mem[_6440 + 288]
            require mem[_6440 + 320] == mem[_6440 + 332 len 20]
            mem[_6468 + 320] = mem[_6440 + 320]
            require mem[_6440 + 352] == mem[_6440 + 383 len 1]
            mem[_6468 + 352] = mem[_6440 + 352]
            if idx >= mem[_351 + (32 * _9) + 1376]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + (32 * _9) + 1408] = _6468
            if idx == -1:
                revert with 'NH{q', 17
            _6392 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _6884 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _6884:
            if idx >= mem[_351 + (32 * _9) + 1376]:
                revert with 'NH{q', 50
            _6903 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1408] + 288]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_6903))
            staticcall address(_6903).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6920 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6940 = mem[_6920]
            _6955 = mem[64]
            mem[64] = mem[64] + 224
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_6955] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[_351 + (32 * _9) + 1376]:
                revert with 'NH{q', 50
            _6974 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1408] + 224]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_6974))
            staticcall address(_6974).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7005 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_6955 + 32] = mem[_7005]
            mem[_6955 + 64] = _6940
            if not _6940:
                mem[_6955 + 96] = 0
            else:
                _7129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7129] = 2
                mem[_7129 + 32] = '48'
                if _6940 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    _7134 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[idx + _7134 + 68] = mem[idx + _7129 + 32]
                        _6884 = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = idx + 32
                        continue 
                    mem[_7134 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _7134 + -mem[64] + 100
                if _6940 and 5000 > -1 / _6940:
                    revert with 'NH{q', 17
                if 5000 * _6940 > -5001:
                    revert with 'NH{q', 17
                mem[_6955 + 96] = (5000 * _6940) + 5000 / 10000
            if idx >= mem[_351 + (32 * _9) + 1376]:
                revert with 'NH{q', 50
            mem[_6955 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1408]] + 25 len 1]
            if idx >= mem[_351 + (32 * _9) + 1376]:
                revert with 'NH{q', 50
            mem[_6955 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1408]] + 26 len 2]
            if idx >= mem[_351 + (32 * _9) + 1376]:
                revert with 'NH{q', 50
            mem[_6955 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1408]] + 30 len 2]
            if idx >= mem[_351]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + 32] = _6955
            if idx == -1:
                revert with 'NH{q', 17
            _6884 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _6901 = mem[64]
        mem[mem[64]] = 32
        _6911 = mem[_351]
        mem[mem[64] + 32] = mem[_351]
        idx = 0
        s = _351 + 32
        t = mem[64] + 64
        while idx < _6911:
            _7293 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_7293 + 32]
            mem[t + 64] = mem[_7293 + 64]
            mem[t + 96] = mem[_7293 + 96]
            mem[t + 128] = mem[_7293 + 128]
            mem[t + 160] = mem[_7293 + 160]
            mem[t + 192] = mem[_7293 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _6901 + (224 * _6911) + -mem[64] + 64
    mem[_351 + (32 * _9) + 1376] = 0
    mem[_351 + (32 * _9) + 1408] = 0
    mem[_351 + (32 * _9) + 1440] = 0
    mem[_351 + (32 * _9) + 1472] = 0
    mem[_351 + (32 * _9) + 1504] = 0
    mem[_351 + (32 * _9) + 1536] = 0
    mem[_351 + (32 * _9) + 1568] = 0
    mem[var62002] = var62001
    if not var62003 - 1:
        if _9 > test266151307():
            revert with 'NH{q', 65
        mem[_351 + (32 * _9) + 1600] = _9
        mem[64] = _351 + (64 * _9) + 1632
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6922 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _6962 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _7009 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_7009] = mem[_6922]
                mem[_6962] = _7009
                require mem[_6922 + 32] == mem[_6922 + 48 len 16]
                mem[_6962 + 32] = mem[_6922 + 32]
                require mem[_6922 + 64] == mem[_6922 + 80 len 16]
                mem[_6962 + 64] = mem[_6922 + 64]
                require mem[_6922 + 96] == mem[_6922 + 112 len 16]
                mem[_6962 + 96] = mem[_6922 + 96]
                require mem[_6922 + 128] == mem[_6922 + 144 len 16]
                mem[_6962 + 128] = mem[_6922 + 128]
                require mem[_6922 + 160] == mem[_6922 + 176 len 16]
                mem[_6962 + 160] = mem[_6922 + 160]
                require mem[_6922 + 192] == mem[_6922 + 219 len 5]
                mem[_6962 + 192] = mem[_6922 + 192]
                require mem[_6922 + 224] == mem[_6922 + 236 len 20]
                mem[_6962 + 224] = mem[_6922 + 224]
                require mem[_6922 + 256] == mem[_6922 + 268 len 20]
                mem[_6962 + 256] = mem[_6922 + 256]
                require mem[_6922 + 288] == mem[_6922 + 300 len 20]
                mem[_6962 + 288] = mem[_6922 + 288]
                require mem[_6922 + 320] == mem[_6922 + 332 len 20]
                mem[_6962 + 320] = mem[_6922 + 320]
                require mem[_6922 + 352] == mem[_6922 + 383 len 1]
                mem[_6962 + 352] = mem[_6922 + 352]
                if idx >= mem[_351 + (32 * _9) + 1600]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + (32 * _9) + 1632] = _6962
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _7288 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _7288:
                if idx >= mem[_351 + (32 * _9) + 1600]:
                    revert with 'NH{q', 50
                _7305 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1632] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_7305))
                staticcall address(_7305).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7318 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7340 = mem[_7318]
                _7347 = mem[64]
                mem[64] = mem[64] + 224
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_7347] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_351 + (32 * _9) + 1600]:
                    revert with 'NH{q', 50
                _7376 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1632] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_7376))
                staticcall address(_7376).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7400 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_7347 + 32] = mem[_7400]
                mem[_7347 + 64] = _7340
                if not _7340:
                    mem[_7347 + 96] = 0
                else:
                    _7567 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7567] = 2
                    mem[_7567 + 32] = '48'
                    if _7340 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                        _7574 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[idx + _7574 + 68] = mem[idx + _7567 + 32]
                            _7288 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        mem[_7574 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _7574 + -mem[64] + 100
                    if _7340 and 5000 > -1 / _7340:
                        revert with 'NH{q', 17
                    if 5000 * _7340 > -5001:
                        revert with 'NH{q', 17
                    mem[_7347 + 96] = (5000 * _7340) + 5000 / 10000
                if idx >= mem[_351 + (32 * _9) + 1600]:
                    revert with 'NH{q', 50
                mem[_7347 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1632]] + 25 len 1]
                if idx >= mem[_351 + (32 * _9) + 1600]:
                    revert with 'NH{q', 50
                mem[_7347 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1632]] + 26 len 2]
                if idx >= mem[_351 + (32 * _9) + 1600]:
                    revert with 'NH{q', 50
                mem[_7347 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1632]] + 30 len 2]
                if idx >= mem[_351]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + 32] = _7347
                if idx == -1:
                    revert with 'NH{q', 17
                _7288 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            _7303 = mem[64]
            mem[mem[64]] = 32
            _7313 = mem[_351]
            mem[mem[64] + 32] = mem[_351]
            idx = 0
            s = _351 + 32
            t = mem[64] + 64
            while idx < _7313:
                _7783 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_7783 + 32]
                mem[t + 64] = mem[_7783 + 64]
                mem[t + 96] = mem[_7783 + 96]
                mem[t + 128] = mem[_7783 + 128]
                mem[t + 160] = mem[_7783 + 160]
                mem[t + 192] = mem[_7783 + 192]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _7303 + (224 * _7313) + -mem[64] + 64
        mem[64] = _351 + (64 * _9) + 2048
        mem[_351 + (64 * _9) + 2016] = 0
        mem[_351 + (64 * _9) + 1632] = _351 + (64 * _9) + 2016
        mem[_351 + (64 * _9) + 1664] = 0
        mem[_351 + (64 * _9) + 1696] = 0
        mem[_351 + (64 * _9) + 1728] = 0
        mem[_351 + (64 * _9) + 1760] = 0
        mem[_351 + (64 * _9) + 1792] = 0
        mem[_351 + (64 * _9) + 1824] = 0
        mem[_351 + (64 * _9) + 1856] = 0
        mem[_351 + (64 * _9) + 1888] = 0
        mem[_351 + (64 * _9) + 1920] = 0
        mem[_351 + (64 * _9) + 1952] = 0
        mem[_351 + (64 * _9) + 1984] = 0
        mem[_351 + (32 * _9) + 1632] = _351 + (64 * _9) + 1632
        s = _351 + (32 * _9) + 1632
        idx = _9
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[_351 + (64 * _9) + 2016] = 0
            mem[_351 + (64 * _9) + 1632] = _351 + (64 * _9) + 2016
            mem[_351 + (64 * _9) + 1664] = 0
            mem[_351 + (64 * _9) + 1696] = 0
            mem[_351 + (64 * _9) + 1728] = 0
            mem[_351 + (64 * _9) + 1760] = 0
            mem[_351 + (64 * _9) + 1792] = 0
            mem[_351 + (64 * _9) + 1824] = 0
            mem[_351 + (64 * _9) + 1856] = 0
            mem[_351 + (64 * _9) + 1888] = 0
            mem[_351 + (64 * _9) + 1920] = 0
            mem[_351 + (64 * _9) + 1952] = 0
            mem[_351 + (64 * _9) + 1984] = 0
            mem[s + 32] = _351 + (64 * _9) + 1632
            s = s + 32
            idx = idx - 1
            continue 
        _7289 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _7289:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _7365 = mem[64]
            if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 384
            require return_data.size >= 32
            _7423 = mem[64]
            if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 32
            mem[_7423] = mem[_7337]
            mem[_7365] = _7423
            require mem[_7337 + 32] == mem[_7337 + 48 len 16]
            mem[_7365 + 32] = mem[_7337 + 32]
            require mem[_7337 + 64] == mem[_7337 + 80 len 16]
            mem[_7365 + 64] = mem[_7337 + 64]
            require mem[_7337 + 96] == mem[_7337 + 112 len 16]
            mem[_7365 + 96] = mem[_7337 + 96]
            require mem[_7337 + 128] == mem[_7337 + 144 len 16]
            mem[_7365 + 128] = mem[_7337 + 128]
            require mem[_7337 + 160] == mem[_7337 + 176 len 16]
            mem[_7365 + 160] = mem[_7337 + 160]
            require mem[_7337 + 192] == mem[_7337 + 219 len 5]
            mem[_7365 + 192] = mem[_7337 + 192]
            require mem[_7337 + 224] == mem[_7337 + 236 len 20]
            mem[_7365 + 224] = mem[_7337 + 224]
            require mem[_7337 + 256] == mem[_7337 + 268 len 20]
            mem[_7365 + 256] = mem[_7337 + 256]
            require mem[_7337 + 288] == mem[_7337 + 300 len 20]
            mem[_7365 + 288] = mem[_7337 + 288]
            require mem[_7337 + 320] == mem[_7337 + 332 len 20]
            mem[_7365 + 320] = mem[_7337 + 320]
            require mem[_7337 + 352] == mem[_7337 + 383 len 1]
            mem[_7365 + 352] = mem[_7337 + 352]
            if idx >= mem[_351 + (32 * _9) + 1600]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + (32 * _9) + 1632] = _7365
            if idx == -1:
                revert with 'NH{q', 17
            _7289 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _7781 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _7781:
            if idx >= mem[_351 + (32 * _9) + 1600]:
                revert with 'NH{q', 50
            _7800 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1632] + 288]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_7800))
            staticcall address(_7800).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7817 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7837 = mem[_7817]
            _7852 = mem[64]
            mem[64] = mem[64] + 224
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[_7852] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            if idx >= mem[_351 + (32 * _9) + 1600]:
                revert with 'NH{q', 50
            _7871 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1632] + 224]
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(address(_7871))
            staticcall address(_7871).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7902 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_7852 + 32] = mem[_7902]
            mem[_7852 + 64] = _7837
            if not _7837:
                mem[_7852 + 96] = 0
            else:
                _8026 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8026] = 2
                mem[_8026 + 32] = '48'
                if _7837 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    _8031 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[idx + _8031 + 68] = mem[idx + _8026 + 32]
                        _7781 = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = idx + 32
                        continue 
                    mem[_8031 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _8031 + -mem[64] + 100
                if _7837 and 5000 > -1 / _7837:
                    revert with 'NH{q', 17
                if 5000 * _7837 > -5001:
                    revert with 'NH{q', 17
                mem[_7852 + 96] = (5000 * _7837) + 5000 / 10000
            if idx >= mem[_351 + (32 * _9) + 1600]:
                revert with 'NH{q', 50
            mem[_7852 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1632]] + 25 len 1]
            if idx >= mem[_351 + (32 * _9) + 1600]:
                revert with 'NH{q', 50
            mem[_7852 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1632]] + 26 len 2]
            if idx >= mem[_351 + (32 * _9) + 1600]:
                revert with 'NH{q', 50
            mem[_7852 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1632]] + 30 len 2]
            if idx >= mem[_351]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _351 + 32] = _7852
            if idx == -1:
                revert with 'NH{q', 17
            _7781 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _7798 = mem[64]
        mem[mem[64]] = 32
        _7808 = mem[_351]
        mem[mem[64] + 32] = mem[_351]
        idx = 0
        s = _351 + 32
        t = mem[64] + 64
        while idx < _7808:
            _8190 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_8190 + 32]
            mem[t + 64] = mem[_8190 + 64]
            mem[t + 96] = mem[_8190 + 96]
            mem[t + 128] = mem[_8190 + 128]
            mem[t + 160] = mem[_8190 + 160]
            mem[t + 192] = mem[_8190 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _7798 + (224 * _7808) + -mem[64] + 64
    mem[_351 + (32 * _9) + 1600] = 0
    mem[_351 + (32 * _9) + 1632] = 0
    mem[_351 + (32 * _9) + 1664] = 0
    mem[_351 + (32 * _9) + 1696] = 0
    mem[_351 + (32 * _9) + 1728] = 0
    mem[_351 + (32 * _9) + 1760] = 0
    mem[_351 + (32 * _9) + 1792] = 0
    mem[var66002] = var66001
    if var66003 - 1:
        if var70003 - 1:
            # nil
        else:
            if _9 > test266151307():
                revert with 'NH{q', 65
            # nil
    else:
        if _9 > test266151307():
            revert with 'NH{q', 65
        mem[_351 + (32 * _9) + 1824] = _9
        mem[64] = _351 + (64 * _9) + 1856
        if not _9:
            idx = 0
            while idx < _9:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7819 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _7859 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _7906 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_7906] = mem[_7819]
                mem[_7859] = _7906
                require mem[_7819 + 32] == mem[_7819 + 48 len 16]
                mem[_7859 + 32] = mem[_7819 + 32]
                require mem[_7819 + 64] == mem[_7819 + 80 len 16]
                mem[_7859 + 64] = mem[_7819 + 64]
                require mem[_7819 + 96] == mem[_7819 + 112 len 16]
                mem[_7859 + 96] = mem[_7819 + 96]
                require mem[_7819 + 128] == mem[_7819 + 144 len 16]
                mem[_7859 + 128] = mem[_7819 + 128]
                require mem[_7819 + 160] == mem[_7819 + 176 len 16]
                mem[_7859 + 160] = mem[_7819 + 160]
                require mem[_7819 + 192] == mem[_7819 + 219 len 5]
                mem[_7859 + 192] = mem[_7819 + 192]
                require mem[_7819 + 224] == mem[_7819 + 236 len 20]
                mem[_7859 + 224] = mem[_7819 + 224]
                require mem[_7819 + 256] == mem[_7819 + 268 len 20]
                mem[_7859 + 256] = mem[_7819 + 256]
                require mem[_7819 + 288] == mem[_7819 + 300 len 20]
                mem[_7859 + 288] = mem[_7819 + 288]
                require mem[_7819 + 320] == mem[_7819 + 332 len 20]
                mem[_7859 + 320] = mem[_7819 + 320]
                require mem[_7819 + 352] == mem[_7819 + 383 len 1]
                mem[_7859 + 352] = mem[_7819 + 352]
                if idx >= mem[_351 + (32 * _9) + 1824]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + (32 * _9) + 1856] = _7859
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _8185 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _8185:
                if idx >= mem[_351 + (32 * _9) + 1824]:
                    revert with 'NH{q', 50
                _8202 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1856] + 288]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_8202))
                staticcall address(_8202).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8215 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8237 = mem[_8215]
                _8244 = mem[64]
                mem[64] = mem[64] + 224
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[_8244] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                if idx >= mem[_351 + (32 * _9) + 1824]:
                    revert with 'NH{q', 50
                _8273 = mem[mem[(32 * idx) + _351 + (32 * _9) + 1856] + 224]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(address(_8273))
                staticcall address(_8273).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8297 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_8244 + 32] = mem[_8297]
                mem[_8244 + 64] = _8237
                if not _8237:
                    mem[_8244 + 96] = 0
                    if idx >= mem[_351 + (32 * _9) + 1824]:
                        revert with 'NH{q', 50
                    mem[_8244 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1856]] + 25 len 1]
                    if idx >= mem[_351 + (32 * _9) + 1824]:
                        revert with 'NH{q', 50
                    mem[_8244 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1856]] + 26 len 2]
                    if idx >= mem[_351 + (32 * _9) + 1824]:
                        revert with 'NH{q', 50
                    mem[_8244 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1856]] + 30 len 2]
                    if idx >= mem[_351]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _351 + 32] = _8244
                    if idx == -1:
                        revert with 'NH{q', 17
                    _8185 = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = idx + 1
                    continue 
                _8464 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8464] = 2
                mem[_8464 + 32] = '48'
                if _8237 > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
                    # nil
                else:
                    if _8237 and 5000 > -1 / _8237:
                        revert with 'NH{q', 17
                    if 5000 * _8237 > -5001:
                        revert with 'NH{q', 17
                    mem[_8244 + 96] = (5000 * _8237) + 5000 / 10000
                    if idx >= mem[_351 + (32 * _9) + 1824]:
                        revert with 'NH{q', 50
                    mem[_8244 + 128] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1856]] + 25 len 1]
                    if idx >= mem[_351 + (32 * _9) + 1824]:
                        revert with 'NH{q', 50
                    mem[_8244 + 160] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1856]] + 26 len 2]
                    if idx >= mem[_351 + (32 * _9) + 1824]:
                        revert with 'NH{q', 50
                    mem[_8244 + 192] = mem[mem[mem[(32 * idx) + _351 + (32 * _9) + 1856]] + 30 len 2]
                    if idx >= mem[_351]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _351 + 32] = _8244
                    if idx == -1:
                        revert with 'NH{q', 17
                    _8185 = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = idx + 1
                    continue 
        else:
            mem[64] = _351 + (64 * _9) + 2272
            mem[_351 + (64 * _9) + 2240] = 0
            mem[_351 + (64 * _9) + 1856] = _351 + (64 * _9) + 2240
            mem[_351 + (64 * _9) + 1888] = 0
            mem[_351 + (64 * _9) + 1920] = 0
            mem[_351 + (64 * _9) + 1952] = 0
            mem[_351 + (64 * _9) + 1984] = 0
            mem[_351 + (64 * _9) + 2016] = 0
            mem[_351 + (64 * _9) + 2048] = 0
            mem[_351 + (64 * _9) + 2080] = 0
            mem[_351 + (64 * _9) + 2112] = 0
            mem[_351 + (64 * _9) + 2144] = 0
            mem[_351 + (64 * _9) + 2176] = 0
            mem[_351 + (64 * _9) + 2208] = 0
            mem[_351 + (32 * _9) + 1856] = _351 + (64 * _9) + 1856
            s = _351 + (32 * _9) + 1856
            idx = _9
            while idx - 1:
                mem[64] = mem[64] + 416
                mem[_351 + (64 * _9) + 2240] = 0
                mem[_351 + (64 * _9) + 1856] = _351 + (64 * _9) + 2240
                mem[_351 + (64 * _9) + 1888] = 0
                mem[_351 + (64 * _9) + 1920] = 0
                mem[_351 + (64 * _9) + 1952] = 0
                mem[_351 + (64 * _9) + 1984] = 0
                mem[_351 + (64 * _9) + 2016] = 0
                mem[_351 + (64 * _9) + 2048] = 0
                mem[_351 + (64 * _9) + 2080] = 0
                mem[_351 + (64 * _9) + 2112] = 0
                mem[_351 + (64 * _9) + 2144] = 0
                mem[_351 + (64 * _9) + 2176] = 0
                mem[_351 + (64 * _9) + 2208] = 0
                mem[s + 32] = _351 + (64 * _9) + 1856
                s = s + 32
                idx = idx - 1
                continue 
            _8186 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _8186:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128])
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8234 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _8262 = mem[64]
                if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _8320 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                mem[_8320] = mem[_8234]
                mem[_8262] = _8320
                require mem[_8234 + 32] == mem[_8234 + 48 len 16]
                mem[_8262 + 32] = mem[_8234 + 32]
                require mem[_8234 + 64] == mem[_8234 + 80 len 16]
                mem[_8262 + 64] = mem[_8234 + 64]
                require mem[_8234 + 96] == mem[_8234 + 112 len 16]
                mem[_8262 + 96] = mem[_8234 + 96]
                require mem[_8234 + 128] == mem[_8234 + 144 len 16]
                mem[_8262 + 128] = mem[_8234 + 128]
                require mem[_8234 + 160] == mem[_8234 + 176 len 16]
                mem[_8262 + 160] = mem[_8234 + 160]
                require mem[_8234 + 192] == mem[_8234 + 219 len 5]
                mem[_8262 + 192] = mem[_8234 + 192]
                require mem[_8234 + 224] == mem[_8234 + 236 len 20]
                mem[_8262 + 224] = mem[_8234 + 224]
                require mem[_8234 + 256] == mem[_8234 + 268 len 20]
                mem[_8262 + 256] = mem[_8234 + 256]
                require mem[_8234 + 288] == mem[_8234 + 300 len 20]
                mem[_8262 + 288] = mem[_8234 + 288]
                require mem[_8234 + 320] == mem[_8234 + 332 len 20]
                mem[_8262 + 320] = mem[_8234 + 320]
                require mem[_8234 + 352] == mem[_8234 + 383 len 1]
                mem[_8262 + 352] = mem[_8234 + 352]
                if idx >= mem[_351 + (32 * _9) + 1824]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _351 + (32 * _9) + 1856] = _8262
                if idx == -1:
                    revert with 'NH{q', 17
                _8186 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
        # nil
}



}
