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
        if msg.sender != 0xc5c4ee80481b0560774459dc47770dc6ec5f47df:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xc5c4ee80481b0560774459dc47770dc6ec5f47df:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function dell_mypair(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    _24 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _24:
        mem[t] = u + -_21 - 64
        _34 = mem[s]
        _36 = mem[mem[s]]
        mem[u] = 64
        _37 = mem[_36]
        mem[u + 64] = mem[_36]
        v = 0
        w = u + 96
        x = _36 + 32
        while v < _37:
            mem[w] = mem[x + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _43 = mem[_34 + 32]
        mem[u + 32] = (32 * _37) + 96
        _44 = mem[_43]
        mem[u + (32 * _37) + 96] = mem[_43]
        w = u + (32 * _37) + 128
        v = 0
        x = _43 + 32
        while v < _44:
            mem[w] = mem[x]
            w = w + 32
            v = v + 1
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = u + (32 * _37) + (32 * _44) + 128
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function read_mypair2(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
            idx = 0
            s = (32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 416
            t = 256
            while idx < uint256(stor1[arg1].field_0):
                mem[s] = mem[t + 12 len 20]
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
        s = (32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 416
        t = 256
        while idx < uint256(stor1[arg1].field_0):
            mem[s] = mem[t + 12 len 20]
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
    s = (32 * uint256(stor1[arg1].field_0)) + (32 * uint256(stor1[arg1].field_256)) + 416
    t = 256
    while idx < uint256(stor1[arg1].field_0):
        mem[s] = mem[t + 12 len 20]
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
}

function sub_778c92e7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
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
        _29 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]) + 32
        mem[_29] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]) + 68 <= calldata.size
        u = cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68
        v = _29 + 32
        w = 0
        while w < cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]:
            require cd[u] == address(cd[u])
            mem[v] = cd[u]
            u = u + 32
            v = v + 32
            w = w + 1
            continue 
        mem[_21] = _29
        require test266151307() >= cd[(cd[4] + cd[s] + 68)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] <= test266151307()
        _48 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32
        mem[_48] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]
        require calldata.size >= cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 68
        u = 0
        v = cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 68
        w = _48 + 32
        while u < cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_21 + 32] = _48
        mem[t] = _21
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    s = 0
    while s < mem[96]:
        require s < mem[96]
        stor1.length++
        mem[0] = 1
        _44 = mem[mem[(32 * s) + 128]]
        _45 = mem[mem[mem[(32 * s) + 128]]]
        uint256(stor1[stor1.length].field_0) = mem[mem[mem[(32 * s) + 128]]]
        mem[0] = sha3(1) + (2 * stor1.length)
        if not _45:
            idx = sha3(sha3(1) + (2 * stor1.length))
            while sha3(sha3(1) + (2 * stor1.length)) + uint256(stor1[stor1.length].field_0) > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            _58 = mem[mem[(32 * s) + 128] + 32]
            _59 = mem[mem[mem[(32 * s) + 128] + 32]]
            uint256(stor1[stor1.length].field_256) = mem[mem[mem[(32 * s) + 128] + 32]]
            mem[0] = sha3(1) + (2 * stor1.length) + 1
            if not _59:
                idx = sha3(sha3(1) + (2 * stor1.length) + 1)
                while sha3(sha3(1) + (2 * stor1.length) + 1) + uint256(stor1[stor1.length].field_256) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                t = sha3(sha3(1) + (2 * stor1.length) + 1)
                idx = _58 + 32
                while _58 + (32 * _59) + 32 > idx:
                    uint256(stor[t]) = mem[idx]
                    t = t + 1
                    idx = idx + 32
                    continue 
                idx = sha3(sha3(1) + (2 * stor1.length) + 1) + (Mask(251, 0, (32 * _59) + 31) >> 5)
                while sha3(sha3(1) + (2 * stor1.length) + 1) + uint256(stor1[stor1.length].field_256) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
        else:
            u = sha3(sha3(1) + (2 * stor1.length))
            t = _44 + 32
            while _44 + (32 * _45) + 32 > t:
                address(stor[u]) = mem[t + 12 len 20]
                u = u + 1
                t = t + 32
                continue 
            t = sha3(sha3(1) + (2 * stor1.length)) + (Mask(251, 0, (32 * _45) + 31) >> 5)
            while sha3(sha3(1) + (2 * stor1.length)) + uint256(stor1[stor1.length].field_0) > t:
                uint256(stor[t]) = 0
                t = t + 1
                continue 
            _67 = mem[mem[(32 * s) + 128] + 32]
            _68 = mem[mem[mem[(32 * s) + 128] + 32]]
            uint256(stor1[stor1.length].field_256) = mem[mem[mem[(32 * s) + 128] + 32]]
            mem[0] = sha3(1) + (2 * stor1.length) + 1
            if not _68:
                idx = sha3(sha3(1) + (2 * stor1.length) + 1)
                while sha3(sha3(1) + (2 * stor1.length) + 1) + uint256(stor1[stor1.length].field_256) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                u = sha3(sha3(1) + (2 * stor1.length) + 1)
                t = _67 + 32
                while _67 + (32 * _68) + 32 > t:
                    uint256(stor[u]) = mem[t]
                    u = u + 1
                    t = t + 32
                    continue 
                t = sha3(sha3(1) + (2 * stor1.length) + 1) + (Mask(251, 0, (32 * _68) + 31) >> 5)
                while sha3(sha3(1) + (2 * stor1.length) + 1) + uint256(stor1[stor1.length].field_256) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
        s = s + 1
        continue 
}



}
