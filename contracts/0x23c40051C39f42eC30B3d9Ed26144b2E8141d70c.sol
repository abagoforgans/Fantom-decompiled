contract main {




// =====================  Runtime code  =====================


#
#  - sub_167ef495(?)
#  - sub_7aceef2e(?)
#
address owner;
array of uint256 stor1;
array of struct stor2;
address sub_9f226a91Address;
address sub_5d33a1f4Address;

function sub_5d33a1f4(?) payable {
    return sub_5d33a1f4Address
}

function owner() payable {
    return owner
}

function sub_9f226a91(?) payable {
    return sub_9f226a91Address
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_6bc9c2ab(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < stor2[arg1].field_0
    mem[128] = stor2[arg1][arg2].field_0
    idx = 128
    s = 0
    while stor2[arg1][arg2].length + 96 > idx:
        mem[idx + 32] = stor2[arg1][(3 * arg2) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2[arg1][arg2].length) + 160] = stor[sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_0
    idx = ceil32(stor2[arg1][arg2].length) + 160
    s = 0
    while ceil32(stor2[arg1][arg2].length) + stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2[arg1][arg2].length) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 192] = stor[sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
    idx = ceil32(stor2[arg1][arg2].length) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 192
    s = 0
    while ceil32(stor2[arg1][arg2].length) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length + 160 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor2[arg1][arg2].length) > stor2[arg1][arg2].length:
        mem[ceil32(stor2[arg1][arg2].length) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) + stor2[arg1][arg2].length + 320] = 0
    mem[(2 * ceil32(stor2[arg1][arg2].length)) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) + 320] = stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length
    mem[(2 * ceil32(stor2[arg1][arg2].length)) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) + 352 len ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)] = mem[ceil32(stor2[arg1][arg2].length) + 160 len ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)]
    if ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) > stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length:
        mem[(2 * ceil32(stor2[arg1][arg2].length)) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) + stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + 352] = 0
    mem[(2 * ceil32(stor2[arg1][arg2].length)) + (2 * ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) + 352] = stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length
    mem[(2 * ceil32(stor2[arg1][arg2].length)) + (2 * ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) + 384 len ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length)] = mem[ceil32(stor2[arg1][arg2].length) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 192 len ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length)]
    if ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) > stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length:
        mem[(2 * ceil32(stor2[arg1][arg2].length)) + (2 * ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) + stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length + 384] = 0
    return Array(len=stor2[arg1][arg2].length, data=mem[128 len ceil32(stor2[arg1][arg2].length)], stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length, mem[ceil32(stor2[arg1][arg2].length) + 160 len ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)], stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length, mem[ceil32(stor2[arg1][arg2].length) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 192 len ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length)]), 
           ceil32(stor2[arg1][arg2].length) + 128,
           ceil32(stor2[arg1][arg2].length) + ceil32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 160
}

function getCollections() payable {
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    s = 128
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        _56 = mem[64]
        mem[64] = mem[64] + 96
        _57 = mem[64]
        mem[64] = mem[64] + ceil32(stor1[idx].length) + 32
        mem[_57] = stor1[idx].length
        mem[0] = (3 * idx) + sha3(1)
        mem[_57 + 32] = stor1[idx]
        t = _57 + 32
        u = sha3(mem[0])
        while _57 + stor1[idx].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_56] = _57
        _110 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(3 * idx) + ('name', 'stor1', 1) + 1].length) + 32
        mem[_110] = stor[(3 * idx) + ('name', 'stor1', 1) + 1].length
        mem[0] = (3 * idx) + sha3(1) + 1
        mem[_110 + 32] = stor[sha3((3 * idx) + ('name', 'stor1', 1) + 1)]
        t = _110 + 32
        u = sha3(mem[0])
        while _110 + stor[(3 * idx) + ('name', 'stor1', 1) + 1].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_56 + 32] = _110
        _144 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(3 * idx) + ('name', 'stor1', 1) + 2].length) + 32
        mem[_144] = stor[(3 * idx) + ('name', 'stor1', 1) + 2].length
        mem[0] = (3 * idx) + sha3(1) + 2
        mem[_144 + 32] = stor[sha3((3 * idx) + ('name', 'stor1', 1) + 2)]
        t = _144 + 32
        u = sha3(mem[0])
        while _144 + stor[(3 * idx) + ('name', 'stor1', 1) + 2].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_56 + 64] = _144
        mem[s] = _56
        s = s + 32
        idx = idx + 1
        continue 
    _58 = mem[64]
    mem[mem[64]] = 32
    _64 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _64:
        mem[u] = t + -_58 - 64
        _108 = mem[s]
        _113 = mem[mem[s]]
        mem[t] = 96
        _118 = mem[_113]
        mem[t + 96] = mem[_113]
        v = 0
        while v < _118:
            mem[t + v + 128] = mem[_113 + v + 32]
            v = v + 32
            continue 
        if ceil32(_118) <= _118:
            _146 = mem[_108 + 32]
            mem[t + 32] = ceil32(_118) + 128
            _148 = mem[_146]
            mem[t + ceil32(_118) + 128] = mem[_146]
            v = 0
            while v < _148:
                mem[t + ceil32(_118) + v + 160] = mem[_146 + v + 32]
                v = v + 32
                continue 
            if ceil32(_148) <= _148:
                _166 = mem[_108 + 64]
                mem[t + 64] = ceil32(_118) + ceil32(_148) + 160
                _170 = mem[_166]
                mem[t + ceil32(_118) + ceil32(_148) + 160] = mem[_166]
                v = 0
                while v < _170:
                    mem[t + ceil32(_118) + ceil32(_148) + v + 192] = mem[_166 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_170) > _170:
                    mem[t + ceil32(_118) + ceil32(_148) + _170 + 192] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_118) + ceil32(_148) + ceil32(_170) + 192
                u = u + 32
                continue 
            mem[t + ceil32(_118) + _148 + 160] = 0
            _168 = mem[_108 + 64]
            mem[t + 64] = ceil32(_118) + ceil32(_148) + 160
            _172 = mem[_168]
            mem[t + ceil32(_118) + ceil32(_148) + 160] = mem[_168]
            v = 0
            while v < _172:
                mem[t + ceil32(_118) + ceil32(_148) + v + 192] = mem[_168 + v + 32]
                v = v + 32
                continue 
            if ceil32(_172) > _172:
                mem[t + ceil32(_118) + ceil32(_148) + _172 + 192] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_118) + ceil32(_148) + ceil32(_172) + 192
            u = u + 32
            continue 
        mem[t + _118 + 128] = 0
        _147 = mem[_108 + 32]
        mem[t + 32] = ceil32(_118) + 128
        _149 = mem[_147]
        mem[t + ceil32(_118) + 128] = mem[_147]
        v = 0
        while v < _149:
            mem[t + ceil32(_118) + v + 160] = mem[_147 + v + 32]
            v = v + 32
            continue 
        if ceil32(_149) <= _149:
            _167 = mem[_108 + 64]
            mem[t + 64] = ceil32(_118) + ceil32(_149) + 160
            _171 = mem[_167]
            mem[t + ceil32(_118) + ceil32(_149) + 160] = mem[_167]
            v = 0
            while v < _171:
                mem[t + ceil32(_118) + ceil32(_149) + v + 192] = mem[_167 + v + 32]
                v = v + 32
                continue 
            if ceil32(_171) > _171:
                mem[t + ceil32(_118) + ceil32(_149) + _171 + 192] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_118) + ceil32(_149) + ceil32(_171) + 192
            u = u + 32
            continue 
        mem[t + ceil32(_118) + _149 + 160] = 0
        _169 = mem[_108 + 64]
        mem[t + 64] = ceil32(_118) + ceil32(_149) + 160
        _173 = mem[_169]
        mem[t + ceil32(_118) + ceil32(_149) + 160] = mem[_169]
        v = 0
        while v < _173:
            mem[t + ceil32(_118) + ceil32(_149) + v + 192] = mem[_169 + v + 32]
            v = v + 32
            continue 
        if ceil32(_173) > _173:
            mem[t + ceil32(_118) + ceil32(_149) + _173 + 192] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_118) + ceil32(_149) + ceil32(_173) + 192
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_76a1cc35(?) payable {
    mem[0] = msg.sender
    mem[32] = 2
    mem[64] = (32 * stor2[address(msg.sender)].field_0) + 128
    mem[96] = stor2[address(msg.sender)].field_0
    s = 128
    idx = 0
    while idx < stor2[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 2)
        _57 = mem[64]
        mem[64] = mem[64] + 96
        _58 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[address(msg.sender)][idx].length) + 32
        mem[_58] = stor2[address(msg.sender)][idx].length
        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 2))
        mem[_58 + 32] = stor2[address(msg.sender)][idx].field_0
        t = _58 + 32
        u = sha3(mem[0])
        while _58 + stor2[address(msg.sender)][idx].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_57] = _58
        _111 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor2', 2)) + 1].length) + 32
        mem[_111] = stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor2', 2)) + 1].length
        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 2)) + 1
        mem[_111 + 32] = stor[sha3((3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor2', 2)) + 1)].field_0
        t = _111 + 32
        u = sha3(mem[0])
        while _111 + stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor2', 2)) + 1].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_57 + 32] = _111
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor2', 2)) + 2].length) + 32
        mem[_145] = stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor2', 2)) + 2].length
        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 2)) + 2
        mem[_145 + 32] = stor[sha3((3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor2', 2)) + 2)].field_0
        t = _145 + 32
        u = sha3(mem[0])
        while _145 + stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor2', 2)) + 2].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_57 + 64] = _145
        mem[s] = _57
        s = s + 32
        idx = idx + 1
        continue 
    _59 = mem[64]
    mem[mem[64]] = 32
    _65 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _65:
        mem[u] = t + -_59 - 64
        _109 = mem[s]
        _114 = mem[mem[s]]
        mem[t] = 96
        _119 = mem[_114]
        mem[t + 96] = mem[_114]
        v = 0
        while v < _119:
            mem[t + v + 128] = mem[_114 + v + 32]
            v = v + 32
            continue 
        if ceil32(_119) <= _119:
            _147 = mem[_109 + 32]
            mem[t + 32] = ceil32(_119) + 128
            _149 = mem[_147]
            mem[t + ceil32(_119) + 128] = mem[_147]
            v = 0
            while v < _149:
                mem[t + ceil32(_119) + v + 160] = mem[_147 + v + 32]
                v = v + 32
                continue 
            if ceil32(_149) <= _149:
                _167 = mem[_109 + 64]
                mem[t + 64] = ceil32(_119) + ceil32(_149) + 160
                _171 = mem[_167]
                mem[t + ceil32(_119) + ceil32(_149) + 160] = mem[_167]
                v = 0
                while v < _171:
                    mem[t + ceil32(_119) + ceil32(_149) + v + 192] = mem[_167 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_171) > _171:
                    mem[t + ceil32(_119) + ceil32(_149) + _171 + 192] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_119) + ceil32(_149) + ceil32(_171) + 192
                u = u + 32
                continue 
            mem[t + ceil32(_119) + _149 + 160] = 0
            _169 = mem[_109 + 64]
            mem[t + 64] = ceil32(_119) + ceil32(_149) + 160
            _173 = mem[_169]
            mem[t + ceil32(_119) + ceil32(_149) + 160] = mem[_169]
            v = 0
            while v < _173:
                mem[t + ceil32(_119) + ceil32(_149) + v + 192] = mem[_169 + v + 32]
                v = v + 32
                continue 
            if ceil32(_173) > _173:
                mem[t + ceil32(_119) + ceil32(_149) + _173 + 192] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_119) + ceil32(_149) + ceil32(_173) + 192
            u = u + 32
            continue 
        mem[t + _119 + 128] = 0
        _148 = mem[_109 + 32]
        mem[t + 32] = ceil32(_119) + 128
        _150 = mem[_148]
        mem[t + ceil32(_119) + 128] = mem[_148]
        v = 0
        while v < _150:
            mem[t + ceil32(_119) + v + 160] = mem[_148 + v + 32]
            v = v + 32
            continue 
        if ceil32(_150) <= _150:
            _168 = mem[_109 + 64]
            mem[t + 64] = ceil32(_119) + ceil32(_150) + 160
            _172 = mem[_168]
            mem[t + ceil32(_119) + ceil32(_150) + 160] = mem[_168]
            v = 0
            while v < _172:
                mem[t + ceil32(_119) + ceil32(_150) + v + 192] = mem[_168 + v + 32]
                v = v + 32
                continue 
            if ceil32(_172) > _172:
                mem[t + ceil32(_119) + ceil32(_150) + _172 + 192] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_119) + ceil32(_150) + ceil32(_172) + 192
            u = u + 32
            continue 
        mem[t + ceil32(_119) + _150 + 160] = 0
        _170 = mem[_109 + 64]
        mem[t + 64] = ceil32(_119) + ceil32(_150) + 160
        _174 = mem[_170]
        mem[t + ceil32(_119) + ceil32(_150) + 160] = mem[_170]
        v = 0
        while v < _174:
            mem[t + ceil32(_119) + ceil32(_150) + v + 192] = mem[_170 + v + 32]
            v = v + 32
            continue 
        if ceil32(_174) > _174:
            mem[t + ceil32(_119) + ceil32(_150) + _174 + 192] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_119) + ceil32(_150) + ceil32(_174) + 192
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
