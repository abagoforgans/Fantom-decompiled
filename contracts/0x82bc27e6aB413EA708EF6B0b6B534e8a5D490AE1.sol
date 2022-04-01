contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of struct sub_fcc652db;

function owner() payable {
    return owner
}

function sub_f4c3eb2e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_fcc652db[address(arg1)].field_416)
}

function sub_fcc652db(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fcc652db[address(arg1)].field_0, sub_fcc652db[address(arg1)].field_256
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

function sub_40bbdd1d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_fcc652db[address(arg1)].field_416:
        revert with 0, 'Already removed'
    sub_fcc652db[address(arg1)].field_416 = 0
    emit 0xf98db801: address(arg1)
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

function sub_e4007517(?) payable {
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
        mem[idx + 32] = stor1[s].field_256
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

function sub_57b346e0(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 98 < 97 or ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg5.length)) + 98 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_fcc652db[address(arg1)].field_416:
        revert with 0, 'Already exists'
    sub_fcc652db[address(arg1)].field_0 = address(arg2)
    sub_fcc652db[address(arg1)].field_256 = address(arg3)
    sub_fcc652db[address(arg1)].field_416 = 1
    if sub_fcc652db[address(arg1)].field_512:
        if sub_fcc652db[address(arg1)].field_512 == uint255(sub_fcc652db[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg4.length:
            sub_fcc652db[address(arg1)][2][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            sub_fcc652db[address(arg1)].field_512 = 0
            idx = 0
            while (uint255(sub_fcc652db[address(arg1)].field_512) * 0.5) + 31 / 32 > idx:
                sub_fcc652db[address(arg1)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if sub_fcc652db[address(arg1)].field_512 == sub_fcc652db[address(arg1)].field_513 < 32:
            revert with 0, 34
        if arg4.length:
            sub_fcc652db[address(arg1)][2][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            sub_fcc652db[address(arg1)].field_512 = 0
            idx = 0
            while sub_fcc652db[address(arg1)].field_513 + 31 / 32 > idx:
                sub_fcc652db[address(arg1)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    if sub_fcc652db[address(arg1)].field_768:
        if sub_fcc652db[address(arg1)].field_768 == uint255(sub_fcc652db[address(arg1)].field_768) * 0.5 < 32:
            revert with 0, 34
        if arg5.length:
            sub_fcc652db[address(arg1)][3][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            sub_fcc652db[address(arg1)].field_768 = 0
            idx = 0
            while (uint255(sub_fcc652db[address(arg1)].field_768) * 0.5) + 31 / 32 > idx:
                sub_fcc652db[address(arg1)][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if sub_fcc652db[address(arg1)].field_768 == sub_fcc652db[address(arg1)].field_769 < 32:
            revert with 0, 34
        if arg5.length:
            sub_fcc652db[address(arg1)][3][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            sub_fcc652db[address(arg1)].field_768 = 0
            idx = 0
            while sub_fcc652db[address(arg1)].field_769 + 31 / 32 > idx:
                sub_fcc652db[address(arg1)][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    stor1.length++
    stor1[stor1.length].field_0 = address(arg1)
    emit 0xb660046e: address(arg1), address(arg2), address(arg3)
}

function sub_003a9426(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_fcc652db[address(arg1)].field_512:
        if sub_fcc652db[address(arg1)].field_512 == uint255(sub_fcc652db[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if sub_fcc652db[address(arg1)].field_512:
            if sub_fcc652db[address(arg1)].field_512 == uint255(sub_fcc652db[address(arg1)].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_fcc652db[address(arg1)].field_512):
                if 31 < uint255(sub_fcc652db[address(arg1)].field_512) * 0.5:
                    mem[128] = sub_fcc652db[address(arg1)][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_fcc652db[address(arg1)].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_fcc652db[address(arg1)][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_fcc652db[address(arg1)].field_512), data=mem[128 len ceil32(uint255(sub_fcc652db[address(arg1)].field_512) * 0.5)]), 
                mem[128] = 256 * sub_fcc652db[address(arg1)].field_520
        else:
            if sub_fcc652db[address(arg1)].field_512 == sub_fcc652db[address(arg1)].field_513 < 32:
                revert with 0, 34
            if sub_fcc652db[address(arg1)].field_513:
                if 31 < sub_fcc652db[address(arg1)].field_513:
                    mem[128] = sub_fcc652db[address(arg1)][2].field_0
                    idx = 128
                    s = 0
                    while sub_fcc652db[address(arg1)].field_513 + 96 > idx:
                        mem[idx + 32] = sub_fcc652db[address(arg1)][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_fcc652db[address(arg1)].field_512), data=mem[128 len ceil32(uint255(sub_fcc652db[address(arg1)].field_512) * 0.5)]), 
                mem[128] = 256 * sub_fcc652db[address(arg1)].field_520
        mem[ceil32(uint255(sub_fcc652db[address(arg1)].field_512) * 0.5) + 192 len ceil32(uint255(sub_fcc652db[address(arg1)].field_512) * 0.5)] = mem[128 len ceil32(uint255(sub_fcc652db[address(arg1)].field_512) * 0.5)]
        if ceil32(uint255(sub_fcc652db[address(arg1)].field_512) * 0.5) > uint255(sub_fcc652db[address(arg1)].field_512) * 0.5:
            mem[ceil32(uint255(sub_fcc652db[address(arg1)].field_512) * 0.5) + (uint255(sub_fcc652db[address(arg1)].field_512) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, sub_fcc652db[address(arg1)].field_512), data=mem[128 len ceil32(uint255(sub_fcc652db[address(arg1)].field_512) * 0.5)], mem[(2 * ceil32(uint255(sub_fcc652db[address(arg1)].field_512) * 0.5)) + 192 len 2 * ceil32(uint255(sub_fcc652db[address(arg1)].field_512) * 0.5)]), 
    if sub_fcc652db[address(arg1)].field_512 == sub_fcc652db[address(arg1)].field_513 < 32:
        revert with 0, 34
    if sub_fcc652db[address(arg1)].field_512:
        if sub_fcc652db[address(arg1)].field_512 == uint255(sub_fcc652db[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_fcc652db[address(arg1)].field_512):
            if 31 < uint255(sub_fcc652db[address(arg1)].field_512) * 0.5:
                mem[128] = sub_fcc652db[address(arg1)][2].field_0
                idx = 128
                s = 0
                while (uint255(sub_fcc652db[address(arg1)].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_fcc652db[address(arg1)][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_fcc652db[address(arg1)].field_512, data=mem[128 len ceil32(sub_fcc652db[address(arg1)].field_513)])
            mem[128] = 256 * sub_fcc652db[address(arg1)].field_520
    else:
        if sub_fcc652db[address(arg1)].field_512 == sub_fcc652db[address(arg1)].field_513 < 32:
            revert with 0, 34
        if sub_fcc652db[address(arg1)].field_513:
            if 31 < sub_fcc652db[address(arg1)].field_513:
                mem[128] = sub_fcc652db[address(arg1)][2].field_0
                idx = 128
                s = 0
                while sub_fcc652db[address(arg1)].field_513 + 96 > idx:
                    mem[idx + 32] = sub_fcc652db[address(arg1)][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_fcc652db[address(arg1)].field_512, data=mem[128 len ceil32(sub_fcc652db[address(arg1)].field_513)])
            mem[128] = 256 * sub_fcc652db[address(arg1)].field_520
    mem[ceil32(sub_fcc652db[address(arg1)].field_513) + 192 len ceil32(sub_fcc652db[address(arg1)].field_513)] = mem[128 len ceil32(sub_fcc652db[address(arg1)].field_513)]
    if ceil32(sub_fcc652db[address(arg1)].field_513) > sub_fcc652db[address(arg1)].field_513:
        mem[ceil32(sub_fcc652db[address(arg1)].field_513) + sub_fcc652db[address(arg1)].field_513 + 192] = 0
    return Array(len=sub_fcc652db[address(arg1)].field_512, data=mem[128 len ceil32(sub_fcc652db[address(arg1)].field_513)], mem[(2 * ceil32(sub_fcc652db[address(arg1)].field_513)) + 192 len 2 * ceil32(sub_fcc652db[address(arg1)].field_513)]), 
}



}
