contract main {




// =====================  Runtime code  =====================


#
#  - sub_8146ff97(?)
#  - sub_ff84c304(?)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xc18be007: owner, 0
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xc18be007: owner, arg1
    owner = arg1
}

function sub_ed05d671(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if var44002 >= var44001:
        mem[ceil32(32 * ('cd', 4).length) + 97] = 32
        mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 4).length
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + -mem[64] + 161
    if var46001 < ('cd', 4).length:
        if var50001 < var50002:
            revert with 0, 17
        if var56001 < 1:
            revert with 0, 17
        idx = var58002 - 1
        s = var58006
        t = var58007
        while idx < ('cd', 4).length:
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = mem[(32 * idx) + 140 len 20]
            if mem[96] < s:
                revert with 0, 17
            if mem[96] - s < 1:
                revert with 0, 17
            if mem[96] + -s - 1 >= mem[96]:
                revert with 0, 50
            mem[(32 * mem[96] + -s - 1) + 128] = address(t)
            if s == -1:
                revert with 0, 17
            if s + 1 < mem[96] / 2:
                if s + 1 >= mem[96]:
                    revert with 0, 50
                if mem[96] < s + 1:
                    revert with 0, 17
                if mem[96] + -s - 1 < 1:
                    revert with 0, 17
                idx = mem[96] + -s - 2
                s = s + 1
                t = mem[(32 * s + 1) + 128]
                continue 
            mem[ceil32(32 * ('cd', 4).length) + 97] = 32
            _191 = mem[96]
            mem[ceil32(32 * ('cd', 4).length) + 129] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 64
            while s < _191:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len ceil32(32 * ('cd', 4).length) + (32 * _191) + -mem[64] + 161
    revert with 0, 50
}



}
