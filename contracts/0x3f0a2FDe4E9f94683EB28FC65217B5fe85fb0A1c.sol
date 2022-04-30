contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;

function owner() payable {
    return owner
}

function mypair_lenght() payable {
    return stor1.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        if 0xc5c4ee80481b0560774459dc47770dc6ec5f47df != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if 0xc5c4ee80481b0560774459dc47770dc6ec5f47df != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function dell_mypair(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor1.length - 1 < stor1.length
    require arg1 < stor1.length
    uint256(stor1[arg1].field_0) = uint256(stor1[stor1.length - 1].field_0)
    if not uint256(stor1[stor1.length - 1].field_0):
        idx = 0
        while uint256(stor1[arg1].field_0) > idx:
            uint256(stor1[(2 * arg1) + idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while uint256(stor1[stor1.length - 1].field_0) > idx:
            uint256(stor1[(2 * arg1) + s].field_0) = uint256(stor1[(2 * stor1.length - 1) + idx].field_0)
            s = s + 1
            idx = idx + 1
            continue 
        idx = uint256(stor1[stor1.length - 1].field_0)
        while uint256(stor1[arg1].field_0) > idx:
            uint256(stor1[(2 * arg1) + idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor1[arg1].field_256) = uint256(stor1[stor1.length - 1].field_256)
    if not uint256(stor1[stor1.length - 1].field_256):
        idx = 0
        while uint256(stor1[arg1].field_256) > idx:
            uint256(stor[idx + sha3((2 * arg1) + ('name', 'stor1', 1) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while uint256(stor1[stor1.length - 1].field_256) > idx:
            uint256(stor[s + sha3((2 * arg1) + ('name', 'stor1', 1) + 1)].field_0) = uint256(stor[idx + sha3((2 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0)
            s = s + 1
            idx = idx + 1
            continue 
        idx = uint256(stor1[stor1.length - 1].field_256)
        while uint256(stor1[arg1].field_256) > idx:
            uint256(stor[idx + sha3((2 * arg1) + ('name', 'stor1', 1) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    require stor1.length
    uint256(stor1[stor1.length - 1].field_0) = 0
    idx = 0
    while uint256(stor1[stor1.length - 1].field_0) > idx:
        uint256(stor1[(2 * stor1.length - 1) + idx].field_0) = 0
        idx = idx + 1
        continue 
    uint256(stor1[stor1.length - 1].field_256) = 0
    idx = 0
    while uint256(stor1[stor1.length - 1].field_256) > idx:
        uint256(stor[idx + sha3((2 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0) = 0
        idx = idx + 1
        continue 
    stor1.length--
}

function read_mypair() payable {
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    s = 128
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        _19 = mem[64]
        mem[64] = mem[64] + 64
        _20 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor1[idx].field_0)) + 32
        mem[_20] = uint256(stor1[idx].field_0)
        if not uint256(stor1[idx].field_0):
            mem[_19] = _20
            _22 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor1[idx].field_256)) + 32
            mem[_22] = uint256(stor1[idx].field_256)
            if uint256(stor1[idx].field_256):
                mem[0] = (2 * idx) + sha3(1) + 1
                mem[_22 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'stor1', 1) + 1)].field_0)
                t = _22 + 32
                u = sha3(mem[0])
                while _22 + (32 * uint256(stor1[idx].field_256)) > t:
                    mem[t + 32] = uint256(stor1[u].field_0)
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_19 + 32] = _22
        else:
            mem[0] = (2 * idx) + sha3(1)
            mem[_20 + 32] = address(stor1[idx].field_0)
            t = _20 + 32
            u = sha3(mem[0])
            while _20 + (32 * uint256(stor1[idx].field_0)) > t:
                mem[t + 32] = address(stor1[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[_19] = _20
            _42 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor1[idx].field_256)) + 32
            mem[_42] = uint256(stor1[idx].field_256)
            if uint256(stor1[idx].field_256):
                mem[0] = (2 * idx) + sha3(1) + 1
                mem[_42 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'stor1', 1) + 1)].field_0)
                t = _42 + 32
                u = sha3(mem[0])
                while _42 + (32 * uint256(stor1[idx].field_256)) > t:
                    mem[t + 32] = uint256(stor1[u].field_0)
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_19 + 32] = _42
        mem[s] = _19
        s = s + 32
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    _25 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _25:
        mem[u] = t + -_21 - 64
        _34 = mem[s]
        _36 = mem[mem[s]]
        mem[t] = 64
        _37 = mem[_36]
        mem[t + 64] = mem[_36]
        v = 0
        w = _36 + 32
        x = t + 96
        while v < _37:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _45 = mem[_34 + 32]
        mem[t + 32] = (32 * _37) + 96
        _46 = mem[_45]
        mem[t + (32 * _37) + 96] = mem[_45]
        v = 0
        w = _45 + 32
        x = t + (32 * _37) + 128
        while v < _46:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + (32 * _37) + (32 * _46) + 128
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function read_mypair2(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor1.length
    if not uint256(stor1[arg1].field_0):
        mem[(32 * uint256(stor1[arg1].field_0)) + 256] = uint256(stor1[arg1].field_256)
        if uint256(stor1[arg1].field_256):
            mem[(32 * uint256(stor1[arg1].field_0)) + 288] = uint256(stor[sha3((2 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
            idx = (32 * uint256(stor1[arg1].field_0)) + 288
            s = 0
            while (32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 256 > idx:
                mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    else:
        mem[256] = address(stor1[arg1].field_0)
        idx = 256
        s = 0
        while (32 * uint256(stor1[arg1].field_0)) + 224 > idx:
            mem[idx + 32] = address(stor1[(2 * arg1) + s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * uint256(stor1[arg1].field_0)) + 256] = uint256(stor1[arg1].field_256)
        if uint256(stor1[arg1].field_256):
            mem[(32 * uint256(stor1[arg1].field_0)) + 288] = uint256(stor[sha3((2 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
            idx = (32 * uint256(stor1[arg1].field_0)) + 288
            s = 0
            while (32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 256 > idx:
                mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            s = 256
            t = (32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 416
            while idx < uint256(stor1[arg1].field_0):
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 416] = uint256(stor1[arg1].field_256)
            mem[(64 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 448 len 32 * uint256(stor1[arg1].field_256)] = mem[(32 * uint256(stor1[arg1].field_0)) + 288 len 32 * uint256(stor1[arg1].field_256)]
            return 32, 64, 
                   (32 * uint256(stor1[arg1].field_0)) + 96,
                   uint256(stor1[arg1].field_0),
                   mem[(32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 416 len (32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 32]
    mem[(32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 288] = 32
    mem[(32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 320] = 64
    mem[(32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 384] = uint256(stor1[arg1].field_0)
    idx = 0
    s = 256
    t = (32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 416
    while idx < uint256(stor1[arg1].field_0):
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 352] = (32 * uint256(stor1[arg1].field_0)) + 96
    mem[(64 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 416] = uint256(stor1[arg1].field_256)
    mem[(64 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 448 len 32 * uint256(stor1[arg1].field_256)] = mem[(32 * uint256(stor1[arg1].field_0)) + 288 len 32 * uint256(stor1[arg1].field_256)]
    return memory
      from (32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 288
       len (96 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 160
}

function sub_778c92e7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 64
        _21 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)] <= test266151307()
        _30 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]) + 32
        mem[_30] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68
        w = _30 + 32
        while u < cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_21] = _30
        require cd[(cd[4] + cd[s] + 68)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] <= test266151307()
        _50 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32
        mem[_50] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 68
        w = _50 + 32
        while u < cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]:
            require cd[v] == cd[v]
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_21 + 32] = _50
        mem[t] = _21
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        stor1.length++
        mem[0] = 1
        _44 = mem[mem[(32 * idx) + 128]]
        _45 = mem[mem[mem[(32 * idx) + 128]]]
        uint256(stor1[stor1.length].field_0) = mem[mem[mem[(32 * idx) + 128]]]
        mem[0] = (2 * stor1.length) + sha3(1)
        if not _45:
            s = sha3((2 * stor1.length) + sha3(1))
            while sha3((2 * stor1.length) + sha3(1)) + uint256(stor1[stor1.length].field_0) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            _58 = mem[mem[(32 * idx) + 128] + 32]
            _59 = mem[mem[mem[(32 * idx) + 128] + 32]]
            uint256(stor1[stor1.length].field_256) = mem[mem[mem[(32 * idx) + 128] + 32]]
            mem[0] = (2 * stor1.length) + sha3(1) + 1
            if not _59:
                s = sha3((2 * stor1.length) + sha3(1) + 1)
                while sha3((2 * stor1.length) + sha3(1) + 1) + uint256(stor1[stor1.length].field_256) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                t = sha3((2 * stor1.length) + sha3(1) + 1)
                s = _58 + 32
                while _58 + (32 * _59) + 32 > s:
                    uint256(stor[t]) = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((2 * stor1.length) + sha3(1) + 1) + (Mask(251, 0, (32 * _59) + 31) >> 5)
                while sha3((2 * stor1.length) + sha3(1) + 1) + uint256(stor1[stor1.length].field_256) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
        else:
            t = sha3((2 * stor1.length) + sha3(1))
            s = _44 + 32
            while _44 + (32 * _45) + 32 > s:
                address(stor[t]) = mem[s + 12 len 20]
                t = t + 1
                s = s + 32
                continue 
            s = sha3((2 * stor1.length) + sha3(1)) + (Mask(251, 0, (32 * _45) + 31) >> 5)
            while sha3((2 * stor1.length) + sha3(1)) + uint256(stor1[stor1.length].field_0) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            _67 = mem[mem[(32 * idx) + 128] + 32]
            _68 = mem[mem[mem[(32 * idx) + 128] + 32]]
            uint256(stor1[stor1.length].field_256) = mem[mem[mem[(32 * idx) + 128] + 32]]
            mem[0] = (2 * stor1.length) + sha3(1) + 1
            if not _68:
                s = sha3((2 * stor1.length) + sha3(1) + 1)
                while sha3((2 * stor1.length) + sha3(1) + 1) + uint256(stor1[stor1.length].field_256) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                t = sha3((2 * stor1.length) + sha3(1) + 1)
                s = _67 + 32
                while _67 + (32 * _68) + 32 > s:
                    uint256(stor[t]) = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((2 * stor1.length) + sha3(1) + 1) + (Mask(251, 0, (32 * _68) + 31) >> 5)
                while sha3((2 * stor1.length) + sha3(1) + 1) + uint256(stor1[stor1.length].field_256) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
        idx = idx + 1
        continue 
}



}
