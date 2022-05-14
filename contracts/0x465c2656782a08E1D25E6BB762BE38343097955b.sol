contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_e5038b2b;
mapping of struct stor2;
array of struct stor3;

function owner() {
    return owner
}

function sub_e5038b2b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_e5038b2b[arg1].field_1024 > 2:
        revert with 'NH{q', 33
    if sub_e5038b2b[arg1].field_1024 >= 3:
        revert with 'NH{q', 33
    return sub_e5038b2b[arg1].field_1024
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_3693d106(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3.length = 0
    idx = 0
    while stor3.length > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_b008ad19(?) {
    if stor3.length:
        mem[128] = uint256(stor3.field_0)
        idx = 128
        s = 0
        while (32 * stor3.length) + 96 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor3.length, data=mem[128 len 32 * stor3.length])
    mem[(32 * stor3.length) + 128] = 32
    mem[(32 * stor3.length) + 160] = stor3.length
    mem[(32 * stor3.length) + 192 len 32 * stor3.length] = mem[128 len 32 * stor3.length]
    return memory
      from (32 * stor3.length) + 128
       len (96 * stor3.length) + 64
}

function sub_ee73b4d9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    sub_e5038b2b[msg.sender][arg1][block.timestamp].field_0 = msg.sender
    sub_e5038b2b[msg.sender][arg1][block.timestamp].field_256 = arg1
    sub_e5038b2b[msg.sender][arg1][block.timestamp].field_512 = block.timestamp
    sub_e5038b2b[msg.sender][arg1][block.timestamp].field_768 = 0
    sub_e5038b2b[msg.sender][arg1][block.timestamp].field_1024 = 0
    sub_e5038b2b[msg.sender][arg1][block.timestamp].field_1280 = 0
    stor3.length++
    stor3[stor3.length].field_0 = sha3(msg.sender, arg1, block.timestamp)
    emit 0x21f9deef: msg.sender, sha3(msg.sender, arg1, block.timestamp)
    return sha3(msg.sender, arg1, block.timestamp)
}

function sub_f15e1f0b(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_e5038b2b[arg1].field_1024 > 2:
        revert with 'NH{q', 33
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor2[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor2[arg1].field_0 = 0
            idx = 0
            while stor2[arg1].field_1 + 31 / 32 > idx:
                stor2[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor2[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor2[arg1].field_0 = 0
            idx = 0
            while stor2[arg1].field_1 + 31 / 32 > idx:
                stor2[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0xec1c8543: Array(len=arg2.length, data=arg2[all]), arg1
}

function getResponse(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = sub_e5038b2b[arg1].field_256
    mem[160] = sub_e5038b2b[arg1].field_512
    mem[192] = sub_e5038b2b[arg1].field_768
    if sub_e5038b2b[arg1].field_1024 > 2:
        revert with 'NH{q', 33
    mem[224] = sub_e5038b2b[arg1].field_1024
    if sub_e5038b2b[arg1].field_1024 > 2:
        revert with 'NH{q', 33
    if sub_e5038b2b[arg1].field_1024 != 1:
        mem[256] = 32
        mem[288] = sub_e5038b2b[arg1].field_0
        mem[320 len ceil32(sub_e5038b2b[arg1].field_0)] = mem[128 len ceil32(sub_e5038b2b[arg1].field_0)]
        if ceil32(sub_e5038b2b[arg1].field_0) > sub_e5038b2b[arg1].field_0:
            mem[sub_e5038b2b[arg1].field_0 + 320] = 0
        return Array(len=sub_e5038b2b[arg1].field_0, data=mem[320 len ceil32(sub_e5038b2b[arg1].field_0)])
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_0:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1:
                if 31 < stor2[arg1].field_1:
                    mem[288] = stor2[arg1].field_0
                    idx = 288
                    s = 0
                    while stor2[arg1].field_1 + 256 > idx:
                        mem[idx + 32] = stor2[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[288 len ceil32(stor2[arg1].field_1)])
                mem[288] = 256 * stor2[arg1].field_8
        else:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1:
                if 31 < stor2[arg1].field_1:
                    mem[288] = stor2[arg1].field_0
                    idx = 288
                    s = 0
                    while stor2[arg1].field_1 + 256 > idx:
                        mem[idx + 32] = stor2[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[288 len ceil32(stor2[arg1].field_1)])
                mem[288] = 256 * stor2[arg1].field_8
        mem[ceil32(stor2[arg1].field_1) + 352 len ceil32(stor2[arg1].field_1)] = mem[288 len ceil32(stor2[arg1].field_1)]
        if ceil32(stor2[arg1].field_1) > stor2[arg1].field_1:
            mem[ceil32(stor2[arg1].field_1) + stor2[arg1].field_1 + 352] = 0
        return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[288 len ceil32(stor2[arg1].field_1)], mem[(2 * ceil32(stor2[arg1].field_1)) + 352 len 2 * ceil32(stor2[arg1].field_1)]), 
    if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1:
            if 31 < stor2[arg1].field_1:
                mem[288] = stor2[arg1].field_0
                idx = 288
                s = 0
                while stor2[arg1].field_1 + 256 > idx:
                    mem[idx + 32] = stor2[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0, data=mem[288 len ceil32(stor2[arg1].field_1)])
            mem[288] = 256 * stor2[arg1].field_8
    else:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1:
            if 31 < stor2[arg1].field_1:
                mem[288] = stor2[arg1].field_0
                idx = 288
                s = 0
                while stor2[arg1].field_1 + 256 > idx:
                    mem[idx + 32] = stor2[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0, data=mem[288 len ceil32(stor2[arg1].field_1)])
            mem[288] = 256 * stor2[arg1].field_8
    mem[ceil32(stor2[arg1].field_1) + 352 len ceil32(stor2[arg1].field_1)] = mem[288 len ceil32(stor2[arg1].field_1)]
    if ceil32(stor2[arg1].field_1) > stor2[arg1].field_1:
        mem[ceil32(stor2[arg1].field_1) + stor2[arg1].field_1 + 352] = 0
    return Array(len=stor2[arg1].field_0, data=mem[288 len ceil32(stor2[arg1].field_1)], mem[(2 * ceil32(stor2[arg1].field_1)) + 352 len 2 * ceil32(stor2[arg1].field_1)]), 
}



}
