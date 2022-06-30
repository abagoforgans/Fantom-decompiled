contract main {




// =====================  Runtime code  =====================


#
#  - sub_38dbedb9(?)
#
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function sub_61e39941(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = 0
    mem[292 len 192] = Mask(32, 224, sha3(arg2[all])) >> 224, arg3, arg4, arg5, arg6, arg7, mem[292 len 28]
    call address(arg1).mem[292 len 4] with:
         gas gas_remaining wei
        args mem[296 len 160]
    require ext_call.success
    if not return_data.size:
        return 32, 164, Mask(32, 224, sha3(arg2[all])) >> 224, arg3, arg4, arg5, arg6, arg7, 0 >> 1056, 0
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_41944819(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == owner
    mem[96 len arg3.length] = arg3[all]
    mem[arg3.length + 96] = 0
    call address(arg1) with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    require ext_call.success
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[96] = bool(ext_call.success)
    mem[128] = 64
    mem[160] = bool(ext_call.success)
    mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
    if ceil32(bool(ext_call.success)) > bool(ext_call.success):
        mem[bool(ext_call.success) + 192] = 0
    return memory
      from 96
       len ceil32(bool(ext_call.success)) + 96
}

function sub_04642d0c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require msg.sender == owner
    if not address(arg1):
        call owner with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(address(arg1))
        if arg2:
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args owner, arg2
        else:
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function uint2str(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return '', 0
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if s:
        mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[64] + mem[96] + 64] = 0
    return Array(len=mem[96], data=mem[mem[64] + 64 len ceil32(mem[96])])
}

function sub_bb0b1195(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - 4]
            if not return_data.size:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 96
            else:
                _37 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_37] = return_data.size
                mem[_37 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _37
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = 32
        _25 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _25:
            mem[t] = u + -_24 - 64
            _46 = mem[s]
            _48 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _48:
                mem[v + u + 32] = mem[v + _46 + 32]
                v = v + 32
                continue 
            if ceil32(_48) > _48:
                mem[u + _48 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_48) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 36).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - 4]
            if not return_data.size:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 96
            else:
                _58 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_58] = return_data.size
                mem[_58 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _58
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _49 = mem[64]
        mem[mem[64]] = 32
        _50 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _50:
            mem[t] = u + -_49 - 64
            _62 = mem[s]
            _64 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _64:
                mem[v + u + 32] = mem[v + _62 + 32]
                v = v + 32
                continue 
            if ceil32(_64) > _64:
                mem[u + _64 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_64) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_24f50790(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - 4]
            if not return_data.size:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 96
            else:
                _38 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_38] = return_data.size
                mem[_38 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _38
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = 32
        _25 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _25:
            mem[t] = u + -_24 - 64
            _46 = mem[s]
            _48 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _48:
                mem[v + u + 32] = mem[v + _46 + 32]
                v = v + 32
                continue 
            if ceil32(_48) > _48:
                mem[u + _48 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_48) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 36).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - 4]
            if not return_data.size:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 96
            else:
                _58 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_58] = return_data.size
                mem[_58 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _58
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _49 = mem[64]
        mem[mem[64]] = 32
        _50 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _50:
            mem[t] = u + -_49 - 64
            _62 = mem[s]
            _64 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _64:
                mem[v + u + 32] = mem[v + _62 + 32]
                v = v + 32
                continue 
            if ceil32(_64) > _64:
                mem[u + _64 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_64) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_7fe5f143(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == bool(cd[68])
    idx = 0
    while idx < ('cd', 36).length:
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call address(cd[4]) with:
             gas gas_remaining wei
            args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        if not return_data.size:
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not cd[68]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not idx:
                _63 = mem[64]
                mem[64] = mem[64] + 64
                mem[_63] = 1
                mem[_63 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _65 = mem[64]
                mem[mem[64] + 32] = 0x6572726f723a0000000000000000000000000000000000000000000000000000
                idx = 0
                while idx < 1:
                    mem[idx + _65 + 38] = mem[idx + _63 + 32]
                    idx = idx + 32
                    continue 
                mem[_65 + 39] = 0x204d53473a000000000000000000000000000000000000000000000000000000
                _125 = mem[96]
                idx = 0
                while idx < _125:
                    mem[idx + _65 + 44] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_125) <= _125:
                    _294 = mem[64]
                    mem[mem[64]] = _125 + _65 + -mem[64] + 12
                    mem[64] = _125 + _65 + 44
                    mem[_125 + _65 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_125 + _65 + 48] = 32
                    _304 = mem[_294]
                    mem[_125 + _65 + 80] = mem[_294]
                    idx = 0
                    while idx < _304:
                        mem[idx + _125 + _65 + 112] = mem[idx + _294 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_304) > _304:
                        mem[_125 + _65 + _304 + 112] = 0
                    revert with 0, 32, mem[_125 + _65 + 80 len ceil32(_304) + 32]
                mem[_65 + _125 + 44] = 0
                _300 = mem[64]
                mem[mem[64]] = _125 + _65 + -mem[64] + 12
                mem[64] = _125 + _65 + 44
                mem[_125 + _65 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_125 + _65 + 48] = 32
                _310 = mem[_300]
                mem[_125 + _65 + 80] = mem[_300]
                idx = 0
                while idx < _310:
                    mem[idx + _125 + _65 + 112] = mem[idx + _300 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_310) > _310:
                    mem[_125 + _65 + _310 + 112] = 0
                revert with 0, 32, mem[_125 + _65 + 80 len ceil32(_310) + 32]
            t = 0
            s = idx
            while s:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 0, 65
            _121 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                s = idx
                while s:
                    if u < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if u - 1 >= mem[_121]:
                        revert with 0, 50
                    mem[u + _121 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _287 = mem[64]
                mem[mem[64] + 32] = 0x6572726f723a0000000000000000000000000000000000000000000000000000
                _291 = mem[_121]
                idx = 0
                while idx < _291:
                    mem[idx + _287 + 38] = mem[idx + _121 + 32]
                    idx = idx + 32
                    continue 
                mem[_287 + _291 + 38] = 0x204d53473a000000000000000000000000000000000000000000000000000000
                if ceil32(_291) <= _291:
                    _451 = mem[96]
                    idx = 0
                    while idx < _451:
                        mem[idx + _287 + _291 + 43] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_451) <= _451:
                        _571 = mem[64]
                        mem[mem[64]] = _451 + _287 + _291 + -mem[64] + 11
                        mem[64] = _451 + _287 + _291 + 43
                        mem[_451 + _287 + _291 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_451 + _287 + _291 + 47] = 32
                        _587 = mem[_571]
                        mem[_451 + _287 + _291 + 79] = mem[_571]
                        idx = 0
                        while idx < _587:
                            mem[idx + _451 + _287 + _291 + 111] = mem[idx + _571 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_587) > _587:
                            mem[_451 + _287 + _291 + _587 + 111] = 0
                        revert with 0, 32, mem[_451 + _287 + _291 + 79 len ceil32(_587) + 32]
                    mem[_287 + _291 + _451 + 43] = 0
                    _579 = mem[64]
                    mem[mem[64]] = _451 + _287 + _291 + -mem[64] + 11
                    mem[64] = _451 + _287 + _291 + 43
                    mem[_451 + _287 + _291 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_451 + _287 + _291 + 47] = 32
                    _595 = mem[_579]
                    mem[_451 + _287 + _291 + 79] = mem[_579]
                    idx = 0
                    while idx < _595:
                        mem[idx + _451 + _287 + _291 + 111] = mem[idx + _579 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_595) > _595:
                        mem[_451 + _287 + _291 + _595 + 111] = 0
                    revert with 0, 32, mem[_451 + _287 + _291 + 79 len ceil32(_595) + 32]
                _455 = mem[96]
                idx = 0
                while idx < _455:
                    mem[idx + _287 + _291 + 43] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_455) <= _455:
                    _572 = mem[64]
                    mem[mem[64]] = _455 + _287 + _291 + -mem[64] + 11
                    mem[64] = _455 + _287 + _291 + 43
                    mem[_455 + _287 + _291 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_455 + _287 + _291 + 47] = 32
                    _588 = mem[_572]
                    mem[_455 + _287 + _291 + 79] = mem[_572]
                    idx = 0
                    while idx < _588:
                        mem[idx + _455 + _287 + _291 + 111] = mem[idx + _572 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_588) > _588:
                        mem[_455 + _287 + _291 + _588 + 111] = 0
                    revert with 0, 32, mem[_455 + _287 + _291 + 79 len ceil32(_588) + 32]
                mem[_287 + _291 + _455 + 43] = 0
                _580 = mem[64]
                mem[mem[64]] = _455 + _287 + _291 + -mem[64] + 11
                mem[64] = _455 + _287 + _291 + 43
                mem[_455 + _287 + _291 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_455 + _287 + _291 + 47] = 32
                _596 = mem[_580]
                mem[_455 + _287 + _291 + 79] = mem[_580]
                idx = 0
                while idx < _596:
                    mem[idx + _455 + _287 + _291 + 111] = mem[idx + _580 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_596) > _596:
                    mem[_455 + _287 + _291 + _596 + 111] = 0
                revert with 0, 32, mem[_455 + _287 + _291 + 79 len ceil32(_596) + 32]
            mem[_121 + 32 len t] = call.data[calldata.size len t]
            u = t
            s = idx
            while s:
                if u < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if u - 1 >= mem[_121]:
                    revert with 0, 50
                mem[u + _121 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            _288 = mem[64]
            mem[mem[64] + 32] = 0x6572726f723a0000000000000000000000000000000000000000000000000000
            _292 = mem[_121]
            idx = 0
            while idx < _292:
                mem[idx + _288 + 38] = mem[idx + _121 + 32]
                idx = idx + 32
                continue 
            mem[_288 + _292 + 38] = 0x204d53473a000000000000000000000000000000000000000000000000000000
            if ceil32(_292) <= _292:
                _452 = mem[96]
                idx = 0
                while idx < _452:
                    mem[idx + _288 + _292 + 43] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_452) <= _452:
                    _573 = mem[64]
                    mem[mem[64]] = _452 + _288 + _292 + -mem[64] + 11
                    mem[64] = _452 + _288 + _292 + 43
                    mem[_452 + _288 + _292 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_452 + _288 + _292 + 47] = 32
                    _589 = mem[_573]
                    mem[_452 + _288 + _292 + 79] = mem[_573]
                    idx = 0
                    while idx < _589:
                        mem[idx + _452 + _288 + _292 + 111] = mem[idx + _573 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_589) > _589:
                        mem[_452 + _288 + _292 + _589 + 111] = 0
                    revert with 0, 32, mem[_452 + _288 + _292 + 79 len ceil32(_589) + 32]
                mem[_288 + _292 + _452 + 43] = 0
                _581 = mem[64]
                mem[mem[64]] = _452 + _288 + _292 + -mem[64] + 11
                mem[64] = _452 + _288 + _292 + 43
                mem[_452 + _288 + _292 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_452 + _288 + _292 + 47] = 32
                _597 = mem[_581]
                mem[_452 + _288 + _292 + 79] = mem[_581]
                idx = 0
                while idx < _597:
                    mem[idx + _452 + _288 + _292 + 111] = mem[idx + _581 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_597) > _597:
                    mem[_452 + _288 + _292 + _597 + 111] = 0
                revert with 0, 32, mem[_452 + _288 + _292 + 79 len ceil32(_597) + 32]
            _456 = mem[96]
            idx = 0
            while idx < _456:
                mem[idx + _288 + _292 + 43] = mem[idx + 128]
                idx = idx + 32
                continue 
            if ceil32(_456) <= _456:
                _574 = mem[64]
                mem[mem[64]] = _456 + _288 + _292 + -mem[64] + 11
                mem[64] = _456 + _288 + _292 + 43
                mem[_456 + _288 + _292 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_456 + _288 + _292 + 47] = 32
                _590 = mem[_574]
                mem[_456 + _288 + _292 + 79] = mem[_574]
                idx = 0
                while idx < _590:
                    mem[idx + _456 + _288 + _292 + 111] = mem[idx + _574 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_590) > _590:
                    mem[_456 + _288 + _292 + _590 + 111] = 0
                revert with 0, 32, mem[_456 + _288 + _292 + 79 len ceil32(_590) + 32]
            mem[_288 + _292 + _456 + 43] = 0
            _582 = mem[64]
            mem[mem[64]] = _456 + _288 + _292 + -mem[64] + 11
            mem[64] = _456 + _288 + _292 + 43
            mem[_456 + _288 + _292 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_456 + _288 + _292 + 47] = 32
            _598 = mem[_582]
            mem[_456 + _288 + _292 + 79] = mem[_582]
            idx = 0
            while idx < _598:
                mem[idx + _456 + _288 + _292 + 111] = mem[idx + _582 + 32]
                idx = idx + 32
                continue 
            if ceil32(_598) > _598:
                mem[_456 + _288 + _292 + _598 + 111] = 0
            revert with 0, 32, mem[_456 + _288 + _292 + 79 len ceil32(_598) + 32]
        _62 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_62] = return_data.size
        mem[_62 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not cd[68]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not idx:
            _64 = mem[64]
            mem[64] = mem[64] + 64
            mem[_64] = 1
            mem[_64 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _66 = mem[64]
            mem[mem[64] + 32] = 0x6572726f723a0000000000000000000000000000000000000000000000000000
            idx = 0
            while idx < 1:
                mem[idx + _66 + 38] = mem[idx + _64 + 32]
                idx = idx + 32
                continue 
            mem[_66 + 39] = 0x204d53473a000000000000000000000000000000000000000000000000000000
            _126 = mem[_62]
            idx = 0
            while idx < _126:
                mem[idx + _66 + 44] = mem[idx + _62 + 32]
                idx = idx + 32
                continue 
            if ceil32(_126) <= _126:
                _298 = mem[64]
                mem[mem[64]] = _126 + _66 + -mem[64] + 12
                mem[64] = _126 + _66 + 44
                mem[_126 + _66 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_126 + _66 + 48] = 32
                _306 = mem[_298]
                mem[_126 + _66 + 80] = mem[_298]
                idx = 0
                while idx < _306:
                    mem[idx + _126 + _66 + 112] = mem[idx + _298 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_306) > _306:
                    mem[_126 + _66 + _306 + 112] = 0
                revert with 0, 32, mem[_126 + _66 + 80 len ceil32(_306) + 32]
            mem[_66 + _126 + 44] = 0
            _302 = mem[64]
            mem[mem[64]] = _126 + _66 + -mem[64] + 12
            mem[64] = _126 + _66 + 44
            mem[_126 + _66 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_126 + _66 + 48] = 32
            _314 = mem[_302]
            mem[_126 + _66 + 80] = mem[_302]
            idx = 0
            while idx < _314:
                mem[idx + _126 + _66 + 112] = mem[idx + _302 + 32]
                idx = idx + 32
                continue 
            if ceil32(_314) > _314:
                mem[_126 + _66 + _314 + 112] = 0
            revert with 0, 32, mem[_126 + _66 + 80 len ceil32(_314) + 32]
        t = 0
        s = idx
        while s:
            if t == -1:
                revert with 0, 17
            t = t + 1
            s = s / 10
            continue 
        if t > test266151307():
            revert with 0, 65
        _122 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            u = t
            s = idx
            while s:
                if u < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if u - 1 >= mem[_122]:
                    revert with 0, 50
                mem[u + _122 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            _289 = mem[64]
            mem[mem[64] + 32] = 0x6572726f723a0000000000000000000000000000000000000000000000000000
            _295 = mem[_122]
            idx = 0
            while idx < _295:
                mem[idx + _289 + 38] = mem[idx + _122 + 32]
                idx = idx + 32
                continue 
            mem[_289 + _295 + 38] = 0x204d53473a000000000000000000000000000000000000000000000000000000
            if ceil32(_295) <= _295:
                _453 = mem[_62]
                idx = 0
                while idx < _453:
                    mem[idx + _289 + _295 + 43] = mem[idx + _62 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_453) <= _453:
                    _575 = mem[64]
                    mem[mem[64]] = _453 + _289 + _295 + -mem[64] + 11
                    mem[64] = _453 + _289 + _295 + 43
                    mem[_453 + _289 + _295 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_453 + _289 + _295 + 47] = 32
                    _591 = mem[_575]
                    mem[_453 + _289 + _295 + 79] = mem[_575]
                    idx = 0
                    while idx < _591:
                        mem[idx + _453 + _289 + _295 + 111] = mem[idx + _575 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_591) > _591:
                        mem[_453 + _289 + _295 + _591 + 111] = 0
                    revert with 0, 32, mem[_453 + _289 + _295 + 79 len ceil32(_591) + 32]
                mem[_289 + _295 + _453 + 43] = 0
                _583 = mem[64]
                mem[mem[64]] = _453 + _289 + _295 + -mem[64] + 11
                mem[64] = _453 + _289 + _295 + 43
                mem[_453 + _289 + _295 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_453 + _289 + _295 + 47] = 32
                _599 = mem[_583]
                mem[_453 + _289 + _295 + 79] = mem[_583]
                idx = 0
                while idx < _599:
                    mem[idx + _453 + _289 + _295 + 111] = mem[idx + _583 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_599) > _599:
                    mem[_453 + _289 + _295 + _599 + 111] = 0
                revert with 0, 32, mem[_453 + _289 + _295 + 79 len ceil32(_599) + 32]
            _457 = mem[_62]
            idx = 0
            while idx < _457:
                mem[idx + _289 + _295 + 43] = mem[idx + _62 + 32]
                idx = idx + 32
                continue 
            if ceil32(_457) <= _457:
                _576 = mem[64]
                mem[mem[64]] = _457 + _289 + _295 + -mem[64] + 11
                mem[64] = _457 + _289 + _295 + 43
                mem[_457 + _289 + _295 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_457 + _289 + _295 + 47] = 32
                _592 = mem[_576]
                mem[_457 + _289 + _295 + 79] = mem[_576]
                idx = 0
                while idx < _592:
                    mem[idx + _457 + _289 + _295 + 111] = mem[idx + _576 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_592) > _592:
                    mem[_457 + _289 + _295 + _592 + 111] = 0
                revert with 0, 32, mem[_457 + _289 + _295 + 79 len ceil32(_592) + 32]
            mem[_289 + _295 + _457 + 43] = 0
            _584 = mem[64]
            mem[mem[64]] = _457 + _289 + _295 + -mem[64] + 11
            mem[64] = _457 + _289 + _295 + 43
            mem[_457 + _289 + _295 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_457 + _289 + _295 + 47] = 32
            _600 = mem[_584]
            mem[_457 + _289 + _295 + 79] = mem[_584]
            idx = 0
            while idx < _600:
                mem[idx + _457 + _289 + _295 + 111] = mem[idx + _584 + 32]
                idx = idx + 32
                continue 
            if ceil32(_600) > _600:
                mem[_457 + _289 + _295 + _600 + 111] = 0
            revert with 0, 32, mem[_457 + _289 + _295 + 79 len ceil32(_600) + 32]
        mem[_122 + 32 len t] = call.data[calldata.size len t]
        u = t
        s = idx
        while s:
            if u < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if u - 1 >= mem[_122]:
                revert with 0, 50
            mem[u + _122 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            u = u - 1
            s = s / 10
            continue 
        _290 = mem[64]
        mem[mem[64] + 32] = 0x6572726f723a0000000000000000000000000000000000000000000000000000
        _296 = mem[_122]
        idx = 0
        while idx < _296:
            mem[idx + _290 + 38] = mem[idx + _122 + 32]
            idx = idx + 32
            continue 
        mem[_290 + _296 + 38] = 0x204d53473a000000000000000000000000000000000000000000000000000000
        if ceil32(_296) <= _296:
            _454 = mem[_62]
            idx = 0
            while idx < _454:
                mem[idx + _290 + _296 + 43] = mem[idx + _62 + 32]
                idx = idx + 32
                continue 
            if ceil32(_454) <= _454:
                _577 = mem[64]
                mem[mem[64]] = _454 + _290 + _296 + -mem[64] + 11
                mem[64] = _454 + _290 + _296 + 43
                mem[_454 + _290 + _296 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_454 + _290 + _296 + 47] = 32
                _593 = mem[_577]
                mem[_454 + _290 + _296 + 79] = mem[_577]
                idx = 0
                while idx < _593:
                    mem[idx + _454 + _290 + _296 + 111] = mem[idx + _577 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_593) > _593:
                    mem[_454 + _290 + _296 + _593 + 111] = 0
                revert with 0, 32, mem[_454 + _290 + _296 + 79 len ceil32(_593) + 32]
            mem[_290 + _296 + _454 + 43] = 0
            _585 = mem[64]
            mem[mem[64]] = _454 + _290 + _296 + -mem[64] + 11
            mem[64] = _454 + _290 + _296 + 43
            mem[_454 + _290 + _296 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_454 + _290 + _296 + 47] = 32
            _601 = mem[_585]
            mem[_454 + _290 + _296 + 79] = mem[_585]
            idx = 0
            while idx < _601:
                mem[idx + _454 + _290 + _296 + 111] = mem[idx + _585 + 32]
                idx = idx + 32
                continue 
            if ceil32(_601) > _601:
                mem[_454 + _290 + _296 + _601 + 111] = 0
            revert with 0, 32, mem[_454 + _290 + _296 + 79 len ceil32(_601) + 32]
        _458 = mem[_62]
        idx = 0
        while idx < _458:
            mem[idx + _290 + _296 + 43] = mem[idx + _62 + 32]
            idx = idx + 32
            continue 
        if ceil32(_458) <= _458:
            _578 = mem[64]
            mem[mem[64]] = _458 + _290 + _296 + -mem[64] + 11
            mem[64] = _458 + _290 + _296 + 43
            mem[_458 + _290 + _296 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_458 + _290 + _296 + 47] = 32
            _594 = mem[_578]
            mem[_458 + _290 + _296 + 79] = mem[_578]
            idx = 0
            while idx < _594:
                mem[idx + _458 + _290 + _296 + 111] = mem[idx + _578 + 32]
                idx = idx + 32
                continue 
            if ceil32(_594) > _594:
                mem[_458 + _290 + _296 + _594 + 111] = 0
            revert with 0, 32, mem[_458 + _290 + _296 + 79 len ceil32(_594) + 32]
        mem[_290 + _296 + _458 + 43] = 0
        _586 = mem[64]
        mem[mem[64]] = _458 + _290 + _296 + -mem[64] + 11
        mem[64] = _458 + _290 + _296 + 43
        mem[_458 + _290 + _296 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_458 + _290 + _296 + 47] = 32
        _602 = mem[_586]
        mem[_458 + _290 + _296 + 79] = mem[_586]
        idx = 0
        while idx < _602:
            mem[idx + _458 + _290 + _296 + 111] = mem[idx + _586 + 32]
            idx = idx + 32
            continue 
        if ceil32(_602) > _602:
            mem[_458 + _290 + _296 + _602 + 111] = 0
        revert with 0, 32, mem[_458 + _290 + _296 + 79 len ceil32(_602) + 32]
}



}
