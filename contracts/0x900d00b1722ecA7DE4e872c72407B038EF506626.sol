contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getTokenHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = 0x24616c743364206b65337a000000000000000000000000000000000000000000
    mem[139] = arg1
    mem[171] = 0x4034320000000000000000000000000000000000000000000000000000000000
    if not sha3(0, arg1, 4207666):
        return '', 0
    s = 0
    idx = 0
    while idx + sha3(0, arg1, 4207666):
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = Mask(248, 0, idx) * 0.00390625
        continue 
    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 > !(2 * s):
        revert with 0, 17
    if (2 * s) + 2 > test266151307():
        revert with 0, 65
    mem[174] = (2 * s) + 2
    mem[64] = floor32((2 * s) + 33) + 206
    if not (2 * s) + 2:
        if 0 >= (2 * s) + 2:
            revert with 0, 50
        mem[206 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= (2 * s) + 2:
            revert with 0, 50
        mem[207 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = 0
        while idx > 1:
            if t + sha3(mem[128 len 46]) % 16 >= 16:
                revert with 0, 50
            if idx >= mem[174]:
                revert with 0, 50
            mem[idx + 206 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        mem[mem[64]] = 32
        _43 = mem[174]
        mem[mem[64] + 32] = mem[174]
        mem[mem[64] + 64 len ceil32(_43)] = mem[206 len ceil32(_43)]
        if ceil32(_43) > _43:
            mem[mem[64] + _43 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_43) + 32]
    mem[206 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
    if 0 >= (2 * s) + 2:
        revert with 0, 50
    mem[206 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    if 1 >= (2 * s) + 2:
        revert with 0, 50
    mem[207 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 1 > !(2 * s):
        revert with 0, 17
    idx = (2 * s) + 1
    t = 0
    while idx > 1:
        if t + sha3(mem[128 len 46]) % 16 >= 16:
            revert with 0, 50
        if idx >= mem[174]:
            revert with 0, 50
        mem[idx + 206 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        t = Mask(252, 0, t) * 0.0625
        continue 
    if t:
        revert with 0, 'Strings: hex length insufficient'
    mem[mem[64]] = 32
    _44 = mem[174]
    mem[mem[64] + 32] = mem[174]
    mem[mem[64] + 64 len ceil32(_44)] = mem[206 len ceil32(_44)]
    if ceil32(_44) > _44:
        mem[mem[64] + _44 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_44) + 32]
}



}
