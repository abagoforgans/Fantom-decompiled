contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
array of struct stor2;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403024;

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

function sub_e33d508c(?) payable {
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        idx = 0
        s = (32 * stor1.length) + 192
        t = 128
        while idx < stor1.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = address(stor1[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1.length) + -mem[64] + 192
}

function sub_57a24af9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2.length++
    if bool(stor2[stor2.length].field_0):
        if bool(stor2[stor2.length].field_0) == uint255(stor2[stor2.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor2[stor2.length][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor2[stor2.length].field_0 = 0
            idx = 0
            while (uint255(stor2[stor2.length].field_0) * 0.5) + 31 / 32 > idx:
                stor2[(3 * stor2.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2[stor2.length].field_0) == stor2[stor2.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg3.length:
            stor2[stor2.length][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor2[stor2.length].field_0 = 0
            idx = 0
            while stor2[stor2.length].field_1 % 128 + 31 / 32 > idx:
                stor2[(3 * stor2.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor4057[stor2.length].field_0):
        if bool(stor4057[stor2.length].field_0) == uint255(stor4057[stor2.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3((3 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)][] = Array(len=arg2.length, data=arg2[all])
        else:
            stor4057[stor2.length].field_0 = 0
            idx = 0
            while (uint255(stor4057[stor2.length].field_0) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((3 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)] = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4057[stor2.length].field_0) == stor4057[stor2.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3((3 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)][] = Array(len=arg2.length, data=arg2[all])
        else:
            stor4057[stor2.length].field_0 = 0
            idx = 0
            while stor4057[stor2.length].field_1 % 128 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)] = 0
                idx = idx + 1
                continue 
    address(stor4057[stor2.length].field_0) = address(arg1)
    Mask(96, 0, stor4057[stor2.length].field_160) = 1
    stor1.length++
    address(stor1[stor1.length].field_0) = address(arg1)
    emit tokenAdded(address(arg1));
}

function sub_a50d9983(?) payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        _104 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor2[idx].field_0):
            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _109 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_0) * 0.5) + 32
            mem[_109] = uint255(stor2[idx].field_0) * 0.5
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor2[idx].field_0):
                    mem[_104] = _109
                    if bool(stor2[idx].field_256):
                        if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _124 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_256) * 0.5) + 32
                        mem[_124] = uint255(stor2[idx].field_256) * 0.5
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_124 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_124 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _124 + 32
                                    u = sha3(mem[0])
                                    while _124 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_124 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_124 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _124 + 32
                                    u = sha3(mem[0])
                                    while _124 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_104 + 32] = _124
                    else:
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        _127 = mem[64]
                        mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                        mem[_127] = stor2[idx].field_257 % 128
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_127 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_127 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _127 + 32
                                    u = sha3(mem[0])
                                    while _127 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_127 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_127 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _127 + 32
                                    u = sha3(mem[0])
                                    while _127 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_104 + 32] = _127
                else:
                    if 31 >= uint255(stor2[idx].field_0) * 0.5:
                        mem[_109 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        mem[_104] = _109
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            _134 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_256) * 0.5) + 32
                            mem[_134] = uint255(stor2[idx].field_256) * 0.5
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor2[idx].field_256):
                                    if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                        mem[_134 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_134 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _134 + 32
                                        u = sha3(mem[0])
                                        while _134 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 0, 34
                                if stor2[idx].field_257 % 128:
                                    if 31 >= stor2[idx].field_257 % 128:
                                        mem[_134 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_134 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _134 + 32
                                        u = sha3(mem[0])
                                        while _134 + stor2[idx].field_257 % 128 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_104 + 32] = _134
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            _140 = mem[64]
                            mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                            mem[_140] = stor2[idx].field_257 % 128
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor2[idx].field_256):
                                    if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                        mem[_140 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_140 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _140 + 32
                                        u = sha3(mem[0])
                                        while _140 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 0, 34
                                if stor2[idx].field_257 % 128:
                                    if 31 >= stor2[idx].field_257 % 128:
                                        mem[_140 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_140 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _140 + 32
                                        u = sha3(mem[0])
                                        while _140 + stor2[idx].field_257 % 128 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_104 + 32] = _140
                    else:
                        mem[0] = (3 * idx) + sha3(2)
                        mem[_109 + 32] = stor2[idx].field_0
                        t = _109 + 32
                        u = sha3(mem[0])
                        while _109 + (uint255(stor2[idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_104] = _109
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            _210 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_256) * 0.5) + 32
                            mem[_210] = uint255(stor2[idx].field_256) * 0.5
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor2[idx].field_256):
                                    mem[_104 + 32] = _210
                                    mem[_104 + 64] = address(stor2[idx].field_512)
                                    mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                                    mem[s] = _104
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_210 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    mem[_104 + 32] = _210
                                    mem[_104 + 64] = address(stor2[idx].field_512)
                                    mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                                    mem[s] = _104
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[0] = (3 * idx) + sha3(2) + 1
                                mem[_210 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                t = _210 + 32
                                u = sha3(mem[0])
                                while _210 + (uint255(stor2[u].field_256) * 0.5) > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_104 + 32] = _210
                                mem[_104 + 64] = address(stor2[u].field_512)
                                mem[_104 + 96] = bool(uint8(stor2[u].field_672))
                                mem[t] = _104
                                t = t + 32
                                u = u + 1
                                continue 
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_210 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_210 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _210 + 32
                                    u = sha3(mem[0])
                                    while _210 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_104 + 32] = _210
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            _216 = mem[64]
                            mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                            mem[_216] = stor2[idx].field_257 % 128
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor2[idx].field_256):
                                    if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                        mem[_216 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_216 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _216 + 32
                                        u = sha3(mem[0])
                                        while _216 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 0, 34
                                if stor2[idx].field_257 % 128:
                                    if 31 >= stor2[idx].field_257 % 128:
                                        mem[_216 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_216 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _216 + 32
                                        u = sha3(mem[0])
                                        while _216 + stor2[idx].field_257 % 128 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_104 + 32] = _216
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor2[idx].field_1 % 128:
                    mem[_104] = _109
                    if bool(stor2[idx].field_256):
                        if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _128 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_256) * 0.5) + 32
                        mem[_128] = uint255(stor2[idx].field_256) * 0.5
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_128 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_128 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _128 + 32
                                    u = sha3(mem[0])
                                    while _128 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_128 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_128 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _128 + 32
                                    u = sha3(mem[0])
                                    while _128 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_104 + 32] = _128
                    else:
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        _135 = mem[64]
                        mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                        mem[_135] = stor2[idx].field_257 % 128
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_135 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_135 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _135 + 32
                                    u = sha3(mem[0])
                                    while _135 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_135 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_135 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _135 + 32
                                    u = sha3(mem[0])
                                    while _135 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_104 + 32] = _135
                else:
                    if 31 >= stor2[idx].field_1 % 128:
                        mem[_109 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        mem[_104] = _109
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            _141 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_256) * 0.5) + 32
                            mem[_141] = uint255(stor2[idx].field_256) * 0.5
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor2[idx].field_256):
                                    if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                        mem[_141 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_141 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _141 + 32
                                        u = sha3(mem[0])
                                        while _141 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 0, 34
                                if stor2[idx].field_257 % 128:
                                    if 31 >= stor2[idx].field_257 % 128:
                                        mem[_141 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_141 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _141 + 32
                                        u = sha3(mem[0])
                                        while _141 + stor2[idx].field_257 % 128 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_104 + 32] = _141
                            mem[_104 + 64] = address(stor2[idx].field_512)
                            mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                            mem[s] = _104
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        _145 = mem[64]
                        mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                        mem[_145] = stor2[idx].field_257 % 128
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_145 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_145 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _145 + 32
                                    u = sha3(mem[0])
                                    while _145 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_104 + 32] = _145
                            mem[_104 + 64] = address(stor2[idx].field_512)
                            mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                            mem[s] = _104
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        if not stor2[idx].field_257 % 128:
                            mem[_104 + 32] = _145
                            mem[_104 + 64] = address(stor2[idx].field_512)
                            mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                            mem[s] = _104
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor2[idx].field_257 % 128:
                            mem[_145 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                            mem[_104 + 32] = _145
                            mem[_104 + 64] = address(stor2[idx].field_512)
                            mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                            mem[s] = _104
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (3 * idx) + sha3(2) + 1
                        mem[_145 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                        t = _145 + 32
                        u = sha3(mem[0])
                        while _145 + stor2[u].field_257 % 128 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_104 + 32] = _145
                        mem[_104 + 64] = address(stor2[u].field_512)
                        mem[_104 + 96] = bool(uint8(stor2[u].field_672))
                        mem[t] = _104
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = (3 * idx) + sha3(2)
                    mem[_109 + 32] = stor2[idx].field_0
                    t = _109 + 32
                    u = sha3(mem[0])
                    while _109 + stor2[idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_104] = _109
                    if bool(stor2[idx].field_256):
                        if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _211 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_256) * 0.5) + 32
                        mem[_211] = uint255(stor2[idx].field_256) * 0.5
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_211 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_211 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _211 + 32
                                    u = sha3(mem[0])
                                    while _211 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_211 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_211 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _211 + 32
                                    u = sha3(mem[0])
                                    while _211 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_104 + 32] = _211
                    else:
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        _217 = mem[64]
                        mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                        mem[_217] = stor2[idx].field_257 % 128
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_217 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_217 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _217 + 32
                                    u = sha3(mem[0])
                                    while _217 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_217 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_217 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _217 + 32
                                    u = sha3(mem[0])
                                    while _217 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_104 + 32] = _217
        else:
            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                revert with 0, 34
            _112 = mem[64]
            mem[64] = mem[64] + ceil32(stor2[idx].field_1 % 128) + 32
            mem[_112] = stor2[idx].field_1 % 128
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor2[idx].field_0):
                    mem[_104] = _112
                    if bool(stor2[idx].field_256):
                        if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _129 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_256) * 0.5) + 32
                        mem[_129] = uint255(stor2[idx].field_256) * 0.5
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_129 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_129 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _129 + 32
                                    u = sha3(mem[0])
                                    while _129 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_129 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_129 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _129 + 32
                                    u = sha3(mem[0])
                                    while _129 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_104 + 32] = _129
                    else:
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        _136 = mem[64]
                        mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                        mem[_136] = stor2[idx].field_257 % 128
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_136 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_136 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _136 + 32
                                    u = sha3(mem[0])
                                    while _136 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_136 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_136 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _136 + 32
                                    u = sha3(mem[0])
                                    while _136 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_104 + 32] = _136
                else:
                    if 31 >= uint255(stor2[idx].field_0) * 0.5:
                        mem[_112 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        mem[_104] = _112
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            _142 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_256) * 0.5) + 32
                            mem[_142] = uint255(stor2[idx].field_256) * 0.5
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor2[idx].field_256):
                                    if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                        mem[_142 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_142 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _142 + 32
                                        u = sha3(mem[0])
                                        while _142 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 0, 34
                                if stor2[idx].field_257 % 128:
                                    if 31 >= stor2[idx].field_257 % 128:
                                        mem[_142 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_142 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _142 + 32
                                        u = sha3(mem[0])
                                        while _142 + stor2[idx].field_257 % 128 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_104 + 32] = _142
                            mem[_104 + 64] = address(stor2[idx].field_512)
                            mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                            mem[s] = _104
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        _146 = mem[64]
                        mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                        mem[_146] = stor2[idx].field_257 % 128
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_146 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_146 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _146 + 32
                                    u = sha3(mem[0])
                                    while _146 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_104 + 32] = _146
                            mem[_104 + 64] = address(stor2[idx].field_512)
                            mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                            mem[s] = _104
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        if not stor2[idx].field_257 % 128:
                            mem[_104 + 32] = _146
                            mem[_104 + 64] = address(stor2[idx].field_512)
                            mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                            mem[s] = _104
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor2[idx].field_257 % 128:
                            mem[_146 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                            mem[_104 + 32] = _146
                            mem[_104 + 64] = address(stor2[idx].field_512)
                            mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                            mem[s] = _104
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (3 * idx) + sha3(2) + 1
                        mem[_146 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                        t = _146 + 32
                        u = sha3(mem[0])
                        while _146 + stor2[u].field_257 % 128 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_104 + 32] = _146
                        mem[_104 + 64] = address(stor2[u].field_512)
                        mem[_104 + 96] = bool(uint8(stor2[u].field_672))
                        mem[t] = _104
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = (3 * idx) + sha3(2)
                    mem[_112 + 32] = stor2[idx].field_0
                    t = _112 + 32
                    u = sha3(mem[0])
                    while _112 + (uint255(stor2[idx].field_0) * 0.5) > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_104] = _112
                    if bool(stor2[idx].field_256):
                        if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _212 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_256) * 0.5) + 32
                        mem[_212] = uint255(stor2[idx].field_256) * 0.5
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_212 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_212 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _212 + 32
                                    u = sha3(mem[0])
                                    while _212 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_212 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_212 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _212 + 32
                                    u = sha3(mem[0])
                                    while _212 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_104 + 32] = _212
                    else:
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        _218 = mem[64]
                        mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                        mem[_218] = stor2[idx].field_257 % 128
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_218 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_218 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _218 + 32
                                    u = sha3(mem[0])
                                    while _218 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_218 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_218 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _218 + 32
                                    u = sha3(mem[0])
                                    while _218 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_104 + 32] = _218
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor2[idx].field_1 % 128:
                    mem[_104] = _112
                    if bool(stor2[idx].field_256):
                        if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _137 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_256) * 0.5) + 32
                        mem[_137] = uint255(stor2[idx].field_256) * 0.5
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_137 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_137 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _137 + 32
                                    u = sha3(mem[0])
                                    while _137 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_137 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_137 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _137 + 32
                                    u = sha3(mem[0])
                                    while _137 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_104 + 32] = _137
                    else:
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        _143 = mem[64]
                        mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                        mem[_143] = stor2[idx].field_257 % 128
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2[idx].field_256):
                                if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                    mem[_143 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_143 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _143 + 32
                                    u = sha3(mem[0])
                                    while _143 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor2[idx].field_257 % 128:
                                if 31 >= stor2[idx].field_257 % 128:
                                    mem[_143 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                else:
                                    mem[0] = (3 * idx) + sha3(2) + 1
                                    mem[_143 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                    t = _143 + 32
                                    u = sha3(mem[0])
                                    while _143 + stor2[idx].field_257 % 128 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_104 + 32] = _143
                else:
                    if 31 >= stor2[idx].field_1 % 128:
                        mem[_112 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        mem[_104] = _112
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            _147 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_256) * 0.5) + 32
                            mem[_147] = uint255(stor2[idx].field_256) * 0.5
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor2[idx].field_256):
                                    if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                        mem[_147 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_147 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _147 + 32
                                        u = sha3(mem[0])
                                        while _147 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[_104 + 32] = _147
                                mem[_104 + 64] = address(stor2[idx].field_512)
                                mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                                mem[s] = _104
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            if not stor2[idx].field_257 % 128:
                                mem[_104 + 32] = _147
                                mem[_104 + 64] = address(stor2[idx].field_512)
                                mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                                mem[s] = _104
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor2[idx].field_257 % 128:
                                mem[_147 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                mem[_104 + 32] = _147
                                mem[_104 + 64] = address(stor2[idx].field_512)
                                mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                                mem[s] = _104
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = (3 * idx) + sha3(2) + 1
                            mem[_147 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                            t = _147 + 32
                            u = sha3(mem[0])
                            while _147 + stor2[u].field_257 % 128 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_104 + 32] = _147
                            mem[_104 + 64] = address(stor2[u].field_512)
                            mem[_104 + 96] = bool(uint8(stor2[u].field_672))
                            mem[t] = _104
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        _151 = mem[64]
                        mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                        mem[_151] = stor2[idx].field_257 % 128
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor2[idx].field_256):
                                mem[_104 + 32] = _151
                                mem[_104 + 64] = address(stor2[idx].field_512)
                                mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                                mem[s] = _104
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                mem[_151 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                mem[_104 + 32] = _151
                                mem[_104 + 64] = address(stor2[idx].field_512)
                                mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
                                mem[s] = _104
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = (3 * idx) + sha3(2) + 1
                            mem[_151 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                            t = _151 + 32
                            u = sha3(mem[0])
                            while _151 + (uint255(stor2[u].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_104 + 32] = _151
                            mem[_104 + 64] = address(stor2[u].field_512)
                            mem[_104 + 96] = bool(uint8(stor2[u].field_672))
                            mem[t] = _104
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_257 % 128:
                            if 31 >= stor2[idx].field_257 % 128:
                                mem[_151 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                            else:
                                mem[0] = (3 * idx) + sha3(2) + 1
                                mem[_151 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                t = _151 + 32
                                u = sha3(mem[0])
                                while _151 + stor2[idx].field_257 % 128 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_104 + 32] = _151
                    else:
                        mem[0] = (3 * idx) + sha3(2)
                        mem[_112 + 32] = stor2[idx].field_0
                        t = _112 + 32
                        u = sha3(mem[0])
                        while _112 + stor2[idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_104] = _112
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                revert with 0, 34
                            _213 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_256) * 0.5) + 32
                            mem[_213] = uint255(stor2[idx].field_256) * 0.5
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor2[idx].field_256):
                                    if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                        mem[_213 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_213 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _213 + 32
                                        u = sha3(mem[0])
                                        while _213 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 0, 34
                                if stor2[idx].field_257 % 128:
                                    if 31 >= stor2[idx].field_257 % 128:
                                        mem[_213 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_213 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _213 + 32
                                        u = sha3(mem[0])
                                        while _213 + stor2[idx].field_257 % 128 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_104 + 32] = _213
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 0, 34
                            _219 = mem[64]
                            mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                            mem[_219] = stor2[idx].field_257 % 128
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor2[idx].field_256):
                                    if 31 >= uint255(stor2[idx].field_256) * 0.5:
                                        mem[_219 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_219 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _219 + 32
                                        u = sha3(mem[0])
                                        while _219 + (uint255(stor2[idx].field_256) * 0.5) > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 0, 34
                                if stor2[idx].field_257 % 128:
                                    if 31 >= stor2[idx].field_257 % 128:
                                        mem[_219 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                                    else:
                                        mem[0] = (3 * idx) + sha3(2) + 1
                                        mem[_219 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                                        t = _219 + 32
                                        u = sha3(mem[0])
                                        while _219 + stor2[idx].field_257 % 128 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_104 + 32] = _219
        mem[_104 + 64] = address(stor2[idx].field_512)
        mem[_104 + 96] = bool(uint8(stor2[idx].field_672))
        mem[s] = _104
        s = s + 32
        idx = idx + 1
        continue 
    _105 = mem[64]
    mem[mem[64]] = 32
    _106 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _106:
        mem[u] = t + -_105 - 64
        _204 = mem[s]
        _205 = mem[mem[s]]
        mem[t] = 128
        _207 = mem[_205]
        mem[t + 128] = mem[_205]
        v = 0
        while v < _207:
            mem[v + t + 160] = mem[_205 + v + 32]
            v = v + 32
            continue 
        if ceil32(_207) <= _207:
            _248 = mem[_204 + 32]
            mem[t + 32] = ceil32(_207) + 160
            _249 = mem[_248]
            mem[ceil32(_207) + t + 160] = mem[_248]
            v = 0
            while v < _249:
                mem[v + ceil32(_207) + t + 192] = mem[_248 + v + 32]
                v = v + 32
                continue 
            if ceil32(_249) > _249:
                mem[ceil32(_207) + t + _249 + 192] = 0
            mem[t + 64] = mem[_204 + 76 len 20]
            mem[t + 96] = bool(mem[_204 + 96])
            idx = idx + 1
            s = s + 32
            t = ceil32(_249) + ceil32(_207) + t + 192
            u = u + 32
            continue 
        mem[t + _207 + 160] = 0
        _250 = mem[_204 + 32]
        mem[t + 32] = ceil32(_207) + 160
        _251 = mem[_250]
        mem[ceil32(_207) + t + 160] = mem[_250]
        v = 0
        while v < _251:
            mem[v + ceil32(_207) + t + 192] = mem[_250 + v + 32]
            v = v + 32
            continue 
        if ceil32(_251) > _251:
            mem[ceil32(_207) + t + _251 + 192] = 0
        mem[t + 64] = mem[_204 + 76 len 20]
        mem[t + 96] = bool(mem[_204 + 96])
        idx = idx + 1
        s = s + 32
        t = ceil32(_251) + ceil32(_207) + t + 192
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
