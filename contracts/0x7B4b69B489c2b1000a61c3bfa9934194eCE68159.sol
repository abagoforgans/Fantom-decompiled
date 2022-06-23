contract main {




// =====================  Runtime code  =====================


#
#  - proposals(uint256 arg1)
#
const a = 0x2e62c9f8d794337728ddefb8fd9b7457a8cde090

const b = 0x4f18a84affe7d03e6824a076f3c02f726be16866

const c = 0x9d944ba1541903e6d7e2e8720620fc20f3df990c


array of struct stor0;
mapping of uint8 stor1;

function get_proposals_length() payable {
    return stor0.length
}

function isVoted(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[arg1][arg2])
}

function _fallback() payable {
    revert
}

function vote(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 0x2e62c9f8d794337728ddefb8fd9b7457a8cde090 != msg.sender:
        if 0x4f18a84affe7d03e6824a076f3c02f726be16866 != msg.sender:
            if 0x9d944ba1541903e6d7e2e8720620fc20f3df990c != msg.sender:
                revert with 0, 'Not admin'
    if stor1[arg1][address(msg.sender)]:
        revert with 0, 'Had voted'
    if arg1 >= stor0.length:
        revert with 'NH{q', 50
    if not arg2:
        if stor0[arg1].field_688 > 254:
            revert with 'NH{q', 17
        stor0[arg1].field_688 = uint8(stor0[arg1].field_688 + 1)
    else:
        if stor0[arg1].field_680 > 254:
            revert with 'NH{q', 17
        stor0[arg1].field_680 = uint8(stor0[arg1].field_680 + 1)
    stor1[arg1][address(msg.sender)] = 1
    emit Voted(msg.sender, arg1, arg2);
}

function sub_da2277c3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    if 0x2e62c9f8d794337728ddefb8fd9b7457a8cde090 != msg.sender:
        if 0x4f18a84affe7d03e6824a076f3c02f726be16866 != msg.sender:
            if 0x9d944ba1541903e6d7e2e8720620fc20f3df990c != msg.sender:
                revert with 0, 'Not admin'
    stor0.length++
    if stor0[stor0.length].field_0:
        if stor0[stor0.length].field_0 == stor0[stor0.length].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor0[stor0.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0[stor0.length].field_0 = 0
            idx = 0
            while stor0[stor0.length].field_1 + 31 / 32 > idx:
                stor0[(3 * stor0.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor0[stor0.length].field_0 == stor0[stor0.length].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor0[stor0.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0[stor0.length].field_0 = 0
            idx = 0
            while stor0[stor0.length].field_1 + 31 / 32 > idx:
                stor0[(3 * stor0.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    if stor0[stor0.length].field_256:
        if stor0[stor0.length].field_256 == stor0[stor0.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor[sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor0[stor0.length].field_256 = 0
            idx = 0
            while stor0[stor0.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor0[stor0.length].field_256 == stor0[stor0.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor[sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor0[stor0.length].field_256 = 0
            idx = 0
            while stor0[stor0.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    stor0[stor0.length].field_512 = address(arg3)
    stor0[stor0.length].field_672 = Mask(96, 0, bool(arg4))
    stor0[stor0.length].field_680 = 0
    stor0[stor0.length].field_768 = 0
    stor0[stor0.length].field_688 = 0
    stor0[stor0.length].field_768 = 0
}

function is_apporved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor0.length:
        revert with 'NH{q', 50
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_0:
            if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_1:
                if 31 >= stor0[arg1].field_1:
                    mem[320] = 256 * stor0[arg1].field_8
                else:
                    mem[320] = stor0[arg1].field_0
                    idx = 320
                    s = 0
                    while stor0[arg1].field_1 + 288 > idx:
                        mem[idx + 32] = stor0[(3 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_1:
                if 31 >= stor0[arg1].field_1:
                    mem[320] = 256 * stor0[arg1].field_8
                else:
                    mem[320] = stor0[arg1].field_0
                    idx = 320
                    s = 0
                    while stor0[arg1].field_1 + 288 > idx:
                        mem[idx + 32] = stor0[(3 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor0[arg1].field_256:
            if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
                revert with 'NH{q', 34
        else:
            if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
                revert with 'NH{q', 34
        if stor0[arg1].field_256:
            if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_257:
                if 31 < stor0[arg1].field_257:
                    idx = ceil32(stor0[arg1].field_1) + 352
                    s = 0
                    while ceil32(stor0[arg1].field_1) + stor0[arg1].field_257 + 320 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_257:
                if 31 < stor0[arg1].field_257:
                    idx = ceil32(stor0[arg1].field_1) + 352
                    s = 0
                    while ceil32(stor0[arg1].field_1) + stor0[arg1].field_257 + 320 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor0[arg1].field_1), data=mem[320 len ceil32(stor0[arg1].field_1)]), 
               stor0[arg1].field_512,
               stor0[arg1].field_512,
               bool(stor0[arg1].field_672)
    if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_1:
            if 31 >= stor0[arg1].field_1:
                mem[320] = 256 * stor0[arg1].field_8
            else:
                mem[320] = stor0[arg1].field_0
                idx = 320
                s = 0
                while stor0[arg1].field_1 + 288 > idx:
                    mem[idx + 32] = stor0[(3 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_1:
            if 31 >= stor0[arg1].field_1:
                mem[320] = 256 * stor0[arg1].field_8
            else:
                mem[320] = stor0[arg1].field_0
                idx = 320
                s = 0
                while stor0[arg1].field_1 + 288 > idx:
                    mem[idx + 32] = stor0[(3 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor0[arg1].field_256:
        if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
            revert with 'NH{q', 34
    else:
        if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
            revert with 'NH{q', 34
    if stor0[arg1].field_256:
        if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_257:
            if 31 < stor0[arg1].field_257:
                idx = ceil32(stor0[arg1].field_1) + 352
                s = 0
                while ceil32(stor0[arg1].field_1) + stor0[arg1].field_257 + 320 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_257:
            if 31 < stor0[arg1].field_257:
                idx = ceil32(stor0[arg1].field_1) + 352
                s = 0
                while ceil32(stor0[arg1].field_1) + stor0[arg1].field_257 + 320 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor0[arg1].field_0, data=mem[320 len ceil32(stor0[arg1].field_1)]), 
           stor0[arg1].field_512,
           stor0[arg1].field_512,
           bool(stor0[arg1].field_672)
}



}
