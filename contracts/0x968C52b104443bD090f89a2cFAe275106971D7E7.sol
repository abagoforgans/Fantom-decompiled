contract main {




// =====================  Runtime code  =====================


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
        _4 = mem[64]
        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _4 + -mem[64] - 4]
        if return_data.size:
            _6 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6] = return_data.size
            mem[_6 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require not cd[68]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_38dbedb9(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == bool(cd[100])
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
        mem[mem[64] len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[((32 * idx) + cd[36] + 36)] wei
             gas gas_remaining wei
            args call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
        if return_data.size:
            _6 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6] = return_data.size
            mem[_6 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require not cd[100]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
            _36 = mem[64]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _36 + -mem[64] - 4]
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



}
