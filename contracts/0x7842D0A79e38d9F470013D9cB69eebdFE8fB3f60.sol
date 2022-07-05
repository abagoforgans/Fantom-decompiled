contract main {




// =====================  Runtime code  =====================


uint8 gameActive; offset 160
uint128 stor0; offset 160
address stor0;
mapping of struct stor1;
mapping of uint8 stor2;
uint256 scoreCount;

function bannedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function scoreCount() payable {
    return scoreCount
}

function gameActive() payable {
    return bool(gameActive)
}

function _fallback() payable {
    revert
}

function unbanAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized'
    stor2[address(arg1)] = 0
}

function transferOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized'
    address(stor0.field_0) = arg1
}

function unbanScore(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized'
    uint8(stor1[arg1].field_1024) = 1
}

function setGameActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function storeScore(uint256 arg1, string arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307() or ceil32(ceil32(arg3.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if bool(gameActive) != 1:
        revert with 0, 'Game Not Active!'
    if bool(stor2[address(msg.sender)]) == 1:
        revert with 0, 'You're banned, why'd you cheat huh?'
    address(stor1[stor3].field_0) = msg.sender
    stor1[stor3].field_256 = arg1
    if bool(stor1[stor3].field_512):
        if bool(stor1[stor3].field_512) == uint255(stor1[stor3].field_513) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor1[stor3][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1[stor3].field_512 = 0
            idx = 0
            while uint255(stor1[stor3].field_513) + 31 / 32 > idx:
                stor1[stor3][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1[stor3].field_512) == stor1[stor3].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor1[stor3][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1[stor3].field_512 = 0
            idx = 0
            while stor1[stor3].field_513 % 128 + 31 / 32 > idx:
                stor1[stor3][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor1[stor3].field_768):
        if bool(stor1[stor3].field_768) == uint255(stor1[stor3].field_769) < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor1[stor3][3][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor1[stor3].field_768 = 0
            idx = 0
            while uint255(stor1[stor3].field_769) + 31 / 32 > idx:
                stor1[stor3][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1[stor3].field_768) == stor1[stor3].field_769 % 128 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor1[stor3][3][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor1[stor3].field_768 = 0
            idx = 0
            while stor1[stor3].field_769 % 128 + 31 / 32 > idx:
                stor1[stor3][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    uint8(stor1[stor3].field_1024) = 1
    if scoreCount == -1:
        revert with 'NH{q', 17
    scoreCount++
}

function scores(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[arg1].field_512):
        if bool(stor1[arg1].field_512) == uint255(stor1[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if bool(stor1[arg1].field_512):
            if bool(stor1[arg1].field_512) == uint255(stor1[arg1].field_513) < 32:
                revert with 'NH{q', 34
            if uint255(stor1[arg1].field_513):
                if 31 >= uint255(stor1[arg1].field_513):
                    mem[128] = 256 * Mask(248, 0, stor1[arg1].field_520)
                else:
                    mem[128] = stor1[arg1][2].field_0
                    idx = 128
                    s = 0
                    while uint255(stor1[arg1].field_513) + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor1[arg1].field_512) == stor1[arg1].field_513 % 128 < 32:
                revert with 'NH{q', 34
            if stor1[arg1].field_513 % 128:
                if 31 >= stor1[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor1[arg1].field_520)
                else:
                    mem[128] = stor1[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor1[arg1].field_768):
            if bool(stor1[arg1].field_768) == uint255(stor1[arg1].field_769) < 32:
                revert with 'NH{q', 34
            if bool(stor1[arg1].field_768):
                if bool(stor1[arg1].field_768) == uint255(stor1[arg1].field_769) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor1[arg1].field_769):
                    if ceil32(uint255(stor1[arg1].field_513)) > uint255(stor1[arg1].field_513):
                        mem[ceil32(uint255(stor1[arg1].field_513)) + ceil32(uint255(stor1[arg1].field_769)) + uint255(stor1[arg1].field_513) + 352] = 0
                    mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(uint255(stor1[arg1].field_769)) + 352] = uint255(stor1[arg1].field_769)
                    mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(uint255(stor1[arg1].field_769)) + 384 len ceil32(uint255(stor1[arg1].field_769))] = mem[ceil32(uint255(stor1[arg1].field_513)) + 160 len ceil32(uint255(stor1[arg1].field_769))]
                    if ceil32(uint255(stor1[arg1].field_769)) > uint255(stor1[arg1].field_769):
                        mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(uint255(stor1[arg1].field_769)) + uint255(stor1[arg1].field_769) + 384] = 0
                else:
                    if 31 >= uint255(stor1[arg1].field_769):
                        mem[ceil32(uint255(stor1[arg1].field_513)) + 160] = 256 * Mask(248, 0, stor1[arg1].field_776)
                    else:
                        mem[ceil32(uint255(stor1[arg1].field_513)) + 160] = stor1[arg1][3].field_0
                        idx = ceil32(uint255(stor1[arg1].field_513)) + 160
                        s = 0
                        while ceil32(uint255(stor1[arg1].field_513)) + uint255(stor1[arg1].field_769) + 128 > idx:
                            mem[idx + 32] = stor1[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor1[arg1].field_513)) > uint255(stor1[arg1].field_513):
                        mem[ceil32(uint255(stor1[arg1].field_513)) + ceil32(uint255(stor1[arg1].field_769)) + uint255(stor1[arg1].field_513) + 352] = 0
                    mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(uint255(stor1[arg1].field_769)) + 352] = uint255(stor1[arg1].field_769)
                    mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(uint255(stor1[arg1].field_769)) + 384 len ceil32(uint255(stor1[arg1].field_769))] = mem[ceil32(uint255(stor1[arg1].field_513)) + 160 len ceil32(uint255(stor1[arg1].field_769))]
                    if ceil32(uint255(stor1[arg1].field_769)) > uint255(stor1[arg1].field_769):
                        mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(uint255(stor1[arg1].field_769)) + uint255(stor1[arg1].field_769) + 384] = 0
            else:
                if bool(stor1[arg1].field_768) == stor1[arg1].field_769 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor1[arg1].field_769 % 128:
                    if ceil32(uint255(stor1[arg1].field_513)) > uint255(stor1[arg1].field_513):
                        mem[ceil32(uint255(stor1[arg1].field_513)) + ceil32(uint255(stor1[arg1].field_769)) + uint255(stor1[arg1].field_513) + 352] = 0
                    mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(uint255(stor1[arg1].field_769)) + 352] = uint255(stor1[arg1].field_769)
                    mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(uint255(stor1[arg1].field_769)) + 384 len ceil32(uint255(stor1[arg1].field_769))] = mem[ceil32(uint255(stor1[arg1].field_513)) + 160 len ceil32(uint255(stor1[arg1].field_769))]
                    if ceil32(uint255(stor1[arg1].field_769)) > uint255(stor1[arg1].field_769):
                        mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(uint255(stor1[arg1].field_769)) + uint255(stor1[arg1].field_769) + 384] = 0
                else:
                    if 31 >= stor1[arg1].field_769 % 128:
                        mem[ceil32(uint255(stor1[arg1].field_513)) + 160] = 256 * Mask(248, 0, stor1[arg1].field_776)
                    else:
                        mem[ceil32(uint255(stor1[arg1].field_513)) + 160] = stor1[arg1][3].field_0
                        idx = ceil32(uint255(stor1[arg1].field_513)) + 160
                        s = 0
                        while ceil32(uint255(stor1[arg1].field_513)) + stor1[arg1].field_769 % 128 + 128 > idx:
                            mem[idx + 32] = stor1[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor1[arg1].field_513)) > uint255(stor1[arg1].field_513):
                        mem[ceil32(uint255(stor1[arg1].field_513)) + ceil32(uint255(stor1[arg1].field_769)) + uint255(stor1[arg1].field_513) + 352] = 0
                    mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(uint255(stor1[arg1].field_769)) + 352] = uint255(stor1[arg1].field_769)
                    mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(uint255(stor1[arg1].field_769)) + 384 len ceil32(uint255(stor1[arg1].field_769))] = mem[ceil32(uint255(stor1[arg1].field_513)) + 160 len ceil32(uint255(stor1[arg1].field_769))]
                    if ceil32(uint255(stor1[arg1].field_769)) > uint255(stor1[arg1].field_769):
                        mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(uint255(stor1[arg1].field_769)) + uint255(stor1[arg1].field_769) + 384] = 0
            return address(stor1[arg1].field_0), 
                   stor1[arg1].field_256,
                   Array(len=2 * Mask(256, -1, uint255(stor1[arg1].field_513)), data=mem[128 len ceil32(uint255(stor1[arg1].field_513))], 2 * Mask(256, -1, uint255(stor1[arg1].field_769)), mem[ceil32(uint255(stor1[arg1].field_513)) + 160 len ceil32(uint255(stor1[arg1].field_769))]),
                   ceil32(uint255(stor1[arg1].field_513)) + 192,
                   bool(uint8(stor1[arg1].field_1024))
        if bool(stor1[arg1].field_768) == stor1[arg1].field_769 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor1[arg1].field_768):
            if bool(stor1[arg1].field_768) == uint255(stor1[arg1].field_769) < 32:
                revert with 'NH{q', 34
            if not uint255(stor1[arg1].field_769):
                if ceil32(uint255(stor1[arg1].field_513)) > uint255(stor1[arg1].field_513):
                    mem[ceil32(uint255(stor1[arg1].field_513)) + ceil32(stor1[arg1].field_769 % 128) + uint255(stor1[arg1].field_513) + 352] = 0
                mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(stor1[arg1].field_769 % 128) + 352] = stor1[arg1].field_769 % 128
                mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(stor1[arg1].field_769 % 128) + 384 len ceil32(stor1[arg1].field_769 % 128)] = mem[ceil32(uint255(stor1[arg1].field_513)) + 160 len ceil32(stor1[arg1].field_769 % 128)]
                if ceil32(stor1[arg1].field_769 % 128) > stor1[arg1].field_769 % 128:
                    mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(stor1[arg1].field_769 % 128) + stor1[arg1].field_769 % 128 + 384] = 0
            else:
                if 31 >= uint255(stor1[arg1].field_769):
                    mem[ceil32(uint255(stor1[arg1].field_513)) + 160] = 256 * Mask(248, 0, stor1[arg1].field_776)
                else:
                    mem[ceil32(uint255(stor1[arg1].field_513)) + 160] = stor1[arg1][3].field_0
                    idx = ceil32(uint255(stor1[arg1].field_513)) + 160
                    s = 0
                    while ceil32(uint255(stor1[arg1].field_513)) + uint255(stor1[arg1].field_769) + 128 > idx:
                        mem[idx + 32] = stor1[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor1[arg1].field_513)) > uint255(stor1[arg1].field_513):
                    mem[ceil32(uint255(stor1[arg1].field_513)) + ceil32(stor1[arg1].field_769 % 128) + uint255(stor1[arg1].field_513) + 352] = 0
                mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(stor1[arg1].field_769 % 128) + 352] = stor1[arg1].field_769 % 128
                mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(stor1[arg1].field_769 % 128) + 384 len ceil32(stor1[arg1].field_769 % 128)] = mem[ceil32(uint255(stor1[arg1].field_513)) + 160 len ceil32(stor1[arg1].field_769 % 128)]
                if ceil32(stor1[arg1].field_769 % 128) > stor1[arg1].field_769 % 128:
                    mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(stor1[arg1].field_769 % 128) + stor1[arg1].field_769 % 128 + 384] = 0
        else:
            if bool(stor1[arg1].field_768) == stor1[arg1].field_769 % 128 < 32:
                revert with 'NH{q', 34
            if not stor1[arg1].field_769 % 128:
                if ceil32(uint255(stor1[arg1].field_513)) > uint255(stor1[arg1].field_513):
                    mem[ceil32(uint255(stor1[arg1].field_513)) + ceil32(stor1[arg1].field_769 % 128) + uint255(stor1[arg1].field_513) + 352] = 0
                mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(stor1[arg1].field_769 % 128) + 352] = stor1[arg1].field_769 % 128
                mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(stor1[arg1].field_769 % 128) + 384 len ceil32(stor1[arg1].field_769 % 128)] = mem[ceil32(uint255(stor1[arg1].field_513)) + 160 len ceil32(stor1[arg1].field_769 % 128)]
                if ceil32(stor1[arg1].field_769 % 128) > stor1[arg1].field_769 % 128:
                    mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(stor1[arg1].field_769 % 128) + stor1[arg1].field_769 % 128 + 384] = 0
            else:
                if 31 >= stor1[arg1].field_769 % 128:
                    mem[ceil32(uint255(stor1[arg1].field_513)) + 160] = 256 * Mask(248, 0, stor1[arg1].field_776)
                else:
                    mem[ceil32(uint255(stor1[arg1].field_513)) + 160] = stor1[arg1][3].field_0
                    idx = ceil32(uint255(stor1[arg1].field_513)) + 160
                    s = 0
                    while ceil32(uint255(stor1[arg1].field_513)) + stor1[arg1].field_769 % 128 + 128 > idx:
                        mem[idx + 32] = stor1[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor1[arg1].field_513)) > uint255(stor1[arg1].field_513):
                    mem[ceil32(uint255(stor1[arg1].field_513)) + ceil32(stor1[arg1].field_769 % 128) + uint255(stor1[arg1].field_513) + 352] = 0
                mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(stor1[arg1].field_769 % 128) + 352] = stor1[arg1].field_769 % 128
                mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(stor1[arg1].field_769 % 128) + 384 len ceil32(stor1[arg1].field_769 % 128)] = mem[ceil32(uint255(stor1[arg1].field_513)) + 160 len ceil32(stor1[arg1].field_769 % 128)]
                if ceil32(stor1[arg1].field_769 % 128) > stor1[arg1].field_769 % 128:
                    mem[(2 * ceil32(uint255(stor1[arg1].field_513))) + ceil32(stor1[arg1].field_769 % 128) + stor1[arg1].field_769 % 128 + 384] = 0
        return address(stor1[arg1].field_0), 
               stor1[arg1].field_256,
               Array(len=2 * Mask(256, -1, uint255(stor1[arg1].field_513)), data=mem[128 len ceil32(uint255(stor1[arg1].field_513))], stor1[arg1].field_768 % 128, mem[ceil32(uint255(stor1[arg1].field_513)) + 160 len ceil32(stor1[arg1].field_769 % 128)]),
               ceil32(uint255(stor1[arg1].field_513)) + 192,
               bool(uint8(stor1[arg1].field_1024))
    if bool(stor1[arg1].field_512) == stor1[arg1].field_513 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1[arg1].field_512):
        if bool(stor1[arg1].field_512) == uint255(stor1[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if uint255(stor1[arg1].field_513):
            if 31 >= uint255(stor1[arg1].field_513):
                mem[128] = 256 * Mask(248, 0, stor1[arg1].field_520)
            else:
                mem[128] = stor1[arg1][2].field_0
                idx = 128
                s = 0
                while uint255(stor1[arg1].field_513) + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor1[arg1].field_512) == stor1[arg1].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if stor1[arg1].field_513 % 128:
            if 31 >= stor1[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor1[arg1].field_520)
            else:
                mem[128] = stor1[arg1][2].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor1[arg1].field_768):
        if bool(stor1[arg1].field_768) == uint255(stor1[arg1].field_769) < 32:
            revert with 'NH{q', 34
        if bool(stor1[arg1].field_768):
            if bool(stor1[arg1].field_768) == uint255(stor1[arg1].field_769) < 32:
                revert with 'NH{q', 34
            if not uint255(stor1[arg1].field_769):
                if ceil32(stor1[arg1].field_513 % 128) > stor1[arg1].field_513 % 128:
                    mem[ceil32(stor1[arg1].field_513 % 128) + ceil32(uint255(stor1[arg1].field_769)) + stor1[arg1].field_513 % 128 + 352] = 0
                mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(uint255(stor1[arg1].field_769)) + 352] = uint255(stor1[arg1].field_769)
                mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(uint255(stor1[arg1].field_769)) + 384 len ceil32(uint255(stor1[arg1].field_769))] = mem[ceil32(stor1[arg1].field_513 % 128) + 160 len ceil32(uint255(stor1[arg1].field_769))]
                if ceil32(uint255(stor1[arg1].field_769)) > uint255(stor1[arg1].field_769):
                    mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(uint255(stor1[arg1].field_769)) + uint255(stor1[arg1].field_769) + 384] = 0
            else:
                if 31 >= uint255(stor1[arg1].field_769):
                    mem[ceil32(stor1[arg1].field_513 % 128) + 160] = 256 * Mask(248, 0, stor1[arg1].field_776)
                else:
                    mem[ceil32(stor1[arg1].field_513 % 128) + 160] = stor1[arg1][3].field_0
                    idx = ceil32(stor1[arg1].field_513 % 128) + 160
                    s = 0
                    while ceil32(stor1[arg1].field_513 % 128) + uint255(stor1[arg1].field_769) + 128 > idx:
                        mem[idx + 32] = stor1[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor1[arg1].field_513 % 128) > stor1[arg1].field_513 % 128:
                    mem[ceil32(stor1[arg1].field_513 % 128) + ceil32(uint255(stor1[arg1].field_769)) + stor1[arg1].field_513 % 128 + 352] = 0
                mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(uint255(stor1[arg1].field_769)) + 352] = uint255(stor1[arg1].field_769)
                mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(uint255(stor1[arg1].field_769)) + 384 len ceil32(uint255(stor1[arg1].field_769))] = mem[ceil32(stor1[arg1].field_513 % 128) + 160 len ceil32(uint255(stor1[arg1].field_769))]
                if ceil32(uint255(stor1[arg1].field_769)) > uint255(stor1[arg1].field_769):
                    mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(uint255(stor1[arg1].field_769)) + uint255(stor1[arg1].field_769) + 384] = 0
        else:
            if bool(stor1[arg1].field_768) == stor1[arg1].field_769 % 128 < 32:
                revert with 'NH{q', 34
            if not stor1[arg1].field_769 % 128:
                if ceil32(stor1[arg1].field_513 % 128) > stor1[arg1].field_513 % 128:
                    mem[ceil32(stor1[arg1].field_513 % 128) + ceil32(uint255(stor1[arg1].field_769)) + stor1[arg1].field_513 % 128 + 352] = 0
                mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(uint255(stor1[arg1].field_769)) + 352] = uint255(stor1[arg1].field_769)
                mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(uint255(stor1[arg1].field_769)) + 384 len ceil32(uint255(stor1[arg1].field_769))] = mem[ceil32(stor1[arg1].field_513 % 128) + 160 len ceil32(uint255(stor1[arg1].field_769))]
                if ceil32(uint255(stor1[arg1].field_769)) > uint255(stor1[arg1].field_769):
                    mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(uint255(stor1[arg1].field_769)) + uint255(stor1[arg1].field_769) + 384] = 0
            else:
                if 31 >= stor1[arg1].field_769 % 128:
                    mem[ceil32(stor1[arg1].field_513 % 128) + 160] = 256 * Mask(248, 0, stor1[arg1].field_776)
                else:
                    mem[ceil32(stor1[arg1].field_513 % 128) + 160] = stor1[arg1][3].field_0
                    idx = ceil32(stor1[arg1].field_513 % 128) + 160
                    s = 0
                    while ceil32(stor1[arg1].field_513 % 128) + stor1[arg1].field_769 % 128 + 128 > idx:
                        mem[idx + 32] = stor1[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor1[arg1].field_513 % 128) > stor1[arg1].field_513 % 128:
                    mem[ceil32(stor1[arg1].field_513 % 128) + ceil32(uint255(stor1[arg1].field_769)) + stor1[arg1].field_513 % 128 + 352] = 0
                mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(uint255(stor1[arg1].field_769)) + 352] = uint255(stor1[arg1].field_769)
                mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(uint255(stor1[arg1].field_769)) + 384 len ceil32(uint255(stor1[arg1].field_769))] = mem[ceil32(stor1[arg1].field_513 % 128) + 160 len ceil32(uint255(stor1[arg1].field_769))]
                if ceil32(uint255(stor1[arg1].field_769)) > uint255(stor1[arg1].field_769):
                    mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(uint255(stor1[arg1].field_769)) + uint255(stor1[arg1].field_769) + 384] = 0
        return address(stor1[arg1].field_0), 
               stor1[arg1].field_256,
               Array(len=stor1[arg1].field_512 % 128, data=mem[128 len ceil32(stor1[arg1].field_513 % 128)], 2 * Mask(256, -1, uint255(stor1[arg1].field_769)), mem[ceil32(stor1[arg1].field_513 % 128) + 160 len ceil32(uint255(stor1[arg1].field_769))]),
               ceil32(stor1[arg1].field_513 % 128) + 192,
               bool(uint8(stor1[arg1].field_1024))
    if bool(stor1[arg1].field_768) == stor1[arg1].field_769 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1[arg1].field_768):
        if bool(stor1[arg1].field_768) == uint255(stor1[arg1].field_769) < 32:
            revert with 'NH{q', 34
        if not uint255(stor1[arg1].field_769):
            if ceil32(stor1[arg1].field_513 % 128) > stor1[arg1].field_513 % 128:
                mem[ceil32(stor1[arg1].field_513 % 128) + ceil32(stor1[arg1].field_769 % 128) + stor1[arg1].field_513 % 128 + 352] = 0
            mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(stor1[arg1].field_769 % 128) + 352] = stor1[arg1].field_769 % 128
            mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(stor1[arg1].field_769 % 128) + 384 len ceil32(stor1[arg1].field_769 % 128)] = mem[ceil32(stor1[arg1].field_513 % 128) + 160 len ceil32(stor1[arg1].field_769 % 128)]
            if ceil32(stor1[arg1].field_769 % 128) > stor1[arg1].field_769 % 128:
                mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(stor1[arg1].field_769 % 128) + stor1[arg1].field_769 % 128 + 384] = 0
        else:
            if 31 >= uint255(stor1[arg1].field_769):
                mem[ceil32(stor1[arg1].field_513 % 128) + 160] = 256 * Mask(248, 0, stor1[arg1].field_776)
            else:
                mem[ceil32(stor1[arg1].field_513 % 128) + 160] = stor1[arg1][3].field_0
                idx = ceil32(stor1[arg1].field_513 % 128) + 160
                s = 0
                while ceil32(stor1[arg1].field_513 % 128) + uint255(stor1[arg1].field_769) + 128 > idx:
                    mem[idx + 32] = stor1[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor1[arg1].field_513 % 128) > stor1[arg1].field_513 % 128:
                mem[ceil32(stor1[arg1].field_513 % 128) + ceil32(stor1[arg1].field_769 % 128) + stor1[arg1].field_513 % 128 + 352] = 0
            mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(stor1[arg1].field_769 % 128) + 352] = stor1[arg1].field_769 % 128
            mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(stor1[arg1].field_769 % 128) + 384 len ceil32(stor1[arg1].field_769 % 128)] = mem[ceil32(stor1[arg1].field_513 % 128) + 160 len ceil32(stor1[arg1].field_769 % 128)]
            if ceil32(stor1[arg1].field_769 % 128) > stor1[arg1].field_769 % 128:
                mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(stor1[arg1].field_769 % 128) + stor1[arg1].field_769 % 128 + 384] = 0
    else:
        if bool(stor1[arg1].field_768) == stor1[arg1].field_769 % 128 < 32:
            revert with 'NH{q', 34
        if not stor1[arg1].field_769 % 128:
            if ceil32(stor1[arg1].field_513 % 128) > stor1[arg1].field_513 % 128:
                mem[ceil32(stor1[arg1].field_513 % 128) + ceil32(stor1[arg1].field_769 % 128) + stor1[arg1].field_513 % 128 + 352] = 0
            mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(stor1[arg1].field_769 % 128) + 352] = stor1[arg1].field_769 % 128
            mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(stor1[arg1].field_769 % 128) + 384 len ceil32(stor1[arg1].field_769 % 128)] = mem[ceil32(stor1[arg1].field_513 % 128) + 160 len ceil32(stor1[arg1].field_769 % 128)]
            if ceil32(stor1[arg1].field_769 % 128) > stor1[arg1].field_769 % 128:
                mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(stor1[arg1].field_769 % 128) + stor1[arg1].field_769 % 128 + 384] = 0
        else:
            if 31 >= stor1[arg1].field_769 % 128:
                mem[ceil32(stor1[arg1].field_513 % 128) + 160] = 256 * Mask(248, 0, stor1[arg1].field_776)
            else:
                mem[ceil32(stor1[arg1].field_513 % 128) + 160] = stor1[arg1][3].field_0
                idx = ceil32(stor1[arg1].field_513 % 128) + 160
                s = 0
                while ceil32(stor1[arg1].field_513 % 128) + stor1[arg1].field_769 % 128 + 128 > idx:
                    mem[idx + 32] = stor1[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor1[arg1].field_513 % 128) > stor1[arg1].field_513 % 128:
                mem[ceil32(stor1[arg1].field_513 % 128) + ceil32(stor1[arg1].field_769 % 128) + stor1[arg1].field_513 % 128 + 352] = 0
            mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(stor1[arg1].field_769 % 128) + 352] = stor1[arg1].field_769 % 128
            mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(stor1[arg1].field_769 % 128) + 384 len ceil32(stor1[arg1].field_769 % 128)] = mem[ceil32(stor1[arg1].field_513 % 128) + 160 len ceil32(stor1[arg1].field_769 % 128)]
            if ceil32(stor1[arg1].field_769 % 128) > stor1[arg1].field_769 % 128:
                mem[(2 * ceil32(stor1[arg1].field_513 % 128)) + ceil32(stor1[arg1].field_769 % 128) + stor1[arg1].field_769 % 128 + 384] = 0
    return address(stor1[arg1].field_0), 
           stor1[arg1].field_256,
           Array(len=stor1[arg1].field_512 % 128, data=mem[128 len ceil32(stor1[arg1].field_513 % 128)], stor1[arg1].field_768 % 128, mem[ceil32(stor1[arg1].field_513 % 128) + 160 len ceil32(stor1[arg1].field_769 % 128)]),
           ceil32(stor1[arg1].field_513 % 128) + 192,
           bool(uint8(stor1[arg1].field_1024))
}

function banAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized'
    stor2[address(arg1)] = 1
    idx = 0
    while idx < scoreCount:
        if address(stor1[idx].field_0) != arg1:
            mem[32] = 1
            address(stor1[idx].field_0) = address(stor1[idx].field_0)
            if bool(stor1[idx].field_512):
                if bool(stor1[idx].field_512) == uint255(stor1[idx].field_513) < 32:
                    revert with 'NH{q', 34
                if bool(stor1[idx].field_512):
                    if bool(stor1[idx].field_512) == uint255(stor1[idx].field_513) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx].field_513):
                        stor1[idx].field_512 = 0
                        s = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if bool(stor1[idx].field_768):
                            if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                revert with 'NH{q', 34
                            if bool(stor1[idx].field_768):
                                if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 3
                                if not uint255(stor1[idx].field_769):
                                    stor1[idx].field_768 = 0
                                    s = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                                    mem[0] = sha3(idx, 1) + 3
                                    s = sha3(sha3(idx, 1) + 3)
                                    t = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 3
                                if not uint255(stor1[idx].field_769):
                                    stor1[idx].field_768 = 0
                                    s = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                                    mem[0] = sha3(idx, 1) + 3
                                    s = sha3(sha3(idx, 1) + 3)
                                    t = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                                    while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            if bool(stor1[idx].field_768):
                                if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 3
                                if not stor1[idx].field_769 % 128:
                                    stor1[idx].field_768 = 0
                                    s = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                                    mem[0] = sha3(idx, 1) + 3
                                    s = sha3(sha3(idx, 1) + 3)
                                    t = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 3
                                if not stor1[idx].field_769 % 128:
                                    stor1[idx].field_768 = 0
                                    s = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                                    mem[0] = sha3(idx, 1) + 3
                                    s = sha3(sha3(idx, 1) + 3)
                                    t = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                                    while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        stor1[idx].field_512 = (2 * uint255(stor1[idx].field_513)) + 1
                        s = sha3(sha3(idx, 1) + 2)
                        t = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32) > t:
                            stor[s] = stor[t]
                            s = s + 1
                            t = t + 1
                            continue 
                        s = sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32)
                        while sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if bool(stor1[idx].field_768):
                            if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                revert with 'NH{q', 34
                            if bool(stor1[idx].field_768):
                                if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 3
                                if not uint255(stor1[idx].field_769):
                                    stor1[idx].field_768 = 0
                                    s = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    uint8(stor1[idx].field_1024) = uint8(bool(uint8(stor1[idx].field_1024)))
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                                stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(s, 1) + 3) + (uint255(stor1[s].field_769) + 31 / 32)
                                while sha3(sha3(s, 1) + 3) + (uint255(stor1[s].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                uint8(stor1[s].field_1024) = uint8(bool(uint8(stor1[s].field_1024)))
                                if sha3(sha3(s, 1) + 3) + (uint255(stor1[s].field_769) + 31 / 32) == -1:
                                    revert with 'NH{q', 17
                                s = sha3(sha3(s, 1) + 3) + (uint255(stor1[s].field_769) + 31 / 32) + 1
                                continue 
                            if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not uint255(stor1[idx].field_769):
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            if bool(stor1[idx].field_768):
                                if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 3
                                if not stor1[idx].field_769 % 128:
                                    stor1[idx].field_768 = 0
                                    s = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                                    mem[0] = sha3(idx, 1) + 3
                                    s = sha3(sha3(idx, 1) + 3)
                                    t = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 3
                                if not stor1[idx].field_769 % 128:
                                    stor1[idx].field_768 = 0
                                    s = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                                    mem[0] = sha3(idx, 1) + 3
                                    s = sha3(sha3(idx, 1) + 3)
                                    t = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                                    while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                else:
                    if bool(stor1[idx].field_512) == stor1[idx].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx].field_513):
                        stor1[idx].field_512 = 0
                        s = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor1[idx].field_512 = (2 * uint255(stor1[idx].field_513)) + 1
                        s = sha3(sha3(idx, 1) + 2)
                        t = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32) > t:
                            stor[s] = stor[t]
                            s = s + 1
                            t = t + 1
                            continue 
                        s = sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32)
                        while sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    if bool(stor1[idx].field_768):
                        if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_768):
                            if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not uint255(stor1[idx].field_769):
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not uint255(stor1[idx].field_769):
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_768):
                            if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not stor1[idx].field_769 % 128:
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not stor1[idx].field_769 % 128:
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
            else:
                if bool(stor1[idx].field_512) == stor1[idx].field_513 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor1[idx].field_512):
                    if bool(stor1[idx].field_512) == uint255(stor1[idx].field_513) < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx].field_513 % 128:
                        stor1[idx].field_512 = 0
                        s = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor1[idx].field_512 = (2 * stor1[idx].field_513 % 128) + 1
                        s = sha3(sha3(idx, 1) + 2)
                        t = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32) > t:
                            stor[s] = stor[t]
                            s = s + 1
                            t = t + 1
                            continue 
                        s = sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32)
                        while sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor1[idx].field_512) == stor1[idx].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx].field_513 % 128:
                        stor1[idx].field_512 = 0
                        s = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor1[idx].field_512 = (2 * stor1[idx].field_513 % 128) + 1
                        s = sha3(sha3(idx, 1) + 2)
                        t = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32) > t:
                            stor[s] = stor[t]
                            s = s + 1
                            t = t + 1
                            continue 
                        s = sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32)
                        while sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                if bool(stor1[idx].field_768):
                    if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                        revert with 'NH{q', 34
                    if bool(stor1[idx].field_768):
                        if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 3
                        if not uint255(stor1[idx].field_769):
                            stor1[idx].field_768 = 0
                            s = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                            mem[0] = sha3(idx, 1) + 3
                            s = sha3(sha3(idx, 1) + 3)
                            t = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                            while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 3
                        if not uint255(stor1[idx].field_769):
                            stor1[idx].field_768 = 0
                            s = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                            mem[0] = sha3(idx, 1) + 3
                            s = sha3(sha3(idx, 1) + 3)
                            t = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                        revert with 'NH{q', 34
                    if bool(stor1[idx].field_768):
                        if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 3
                        if not stor1[idx].field_769 % 128:
                            stor1[idx].field_768 = 0
                            s = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                            mem[0] = sha3(idx, 1) + 3
                            s = sha3(sha3(idx, 1) + 3)
                            t = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                            while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 3
                        if not stor1[idx].field_769 % 128:
                            stor1[idx].field_768 = 0
                            s = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                            mem[0] = sha3(idx, 1) + 3
                            s = sha3(sha3(idx, 1) + 3)
                            t = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
        else:
            uint8(stor1[idx].field_1024) = 0
            mem[32] = 1
            address(stor1[idx].field_0) = address(stor1[idx].field_0)
            if bool(stor1[idx].field_512):
                if bool(stor1[idx].field_512) == uint255(stor1[idx].field_513) < 32:
                    revert with 'NH{q', 34
                if bool(stor1[idx].field_512):
                    if bool(stor1[idx].field_512) == uint255(stor1[idx].field_513) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx].field_513):
                        stor1[idx].field_512 = 0
                        s = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor1[idx].field_512 = (2 * uint255(stor1[idx].field_513)) + 1
                        s = sha3(sha3(idx, 1) + 2)
                        t = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32) > t:
                            stor[s] = stor[t]
                            s = s + 1
                            t = t + 1
                            continue 
                        s = sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32)
                        while sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor1[idx].field_512) == stor1[idx].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx].field_513):
                        stor1[idx].field_512 = 0
                        s = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor1[idx].field_512 = (2 * uint255(stor1[idx].field_513)) + 1
                        s = sha3(sha3(idx, 1) + 2)
                        t = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32) > t:
                            stor[s] = stor[t]
                            s = s + 1
                            t = t + 1
                            continue 
                        s = sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32)
                        while sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                if bool(stor1[idx].field_768):
                    if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                        revert with 'NH{q', 34
                    if bool(stor1[idx].field_768):
                        if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 3
                        if not uint255(stor1[idx].field_769):
                            stor1[idx].field_768 = 0
                            s = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                            mem[0] = sha3(idx, 1) + 3
                            s = sha3(sha3(idx, 1) + 3)
                            t = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                            while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 3
                        if not uint255(stor1[idx].field_769):
                            stor1[idx].field_768 = 0
                            s = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                            mem[0] = sha3(idx, 1) + 3
                            s = sha3(sha3(idx, 1) + 3)
                            t = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                        revert with 'NH{q', 34
                    if bool(stor1[idx].field_768):
                        if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 3
                        if not stor1[idx].field_769 % 128:
                            stor1[idx].field_768 = 0
                            s = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                            mem[0] = sha3(idx, 1) + 3
                            s = sha3(sha3(idx, 1) + 3)
                            t = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                            while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 3
                        if not stor1[idx].field_769 % 128:
                            stor1[idx].field_768 = 0
                            s = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                            mem[0] = sha3(idx, 1) + 3
                            s = sha3(sha3(idx, 1) + 3)
                            t = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
            else:
                if bool(stor1[idx].field_512) == stor1[idx].field_513 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor1[idx].field_512):
                    if bool(stor1[idx].field_512) == uint255(stor1[idx].field_513) < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx].field_513 % 128:
                        stor1[idx].field_512 = 0
                        s = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor1[idx].field_512 = (2 * stor1[idx].field_513 % 128) + 1
                        s = sha3(sha3(idx, 1) + 2)
                        t = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32) > t:
                            stor[s] = stor[t]
                            s = s + 1
                            t = t + 1
                            continue 
                        s = sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32)
                        while sha3(sha3(idx, 1) + 2) + (uint255(stor1[idx].field_513) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    if bool(stor1[idx].field_768):
                        if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_768):
                            if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not uint255(stor1[idx].field_769):
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not uint255(stor1[idx].field_769):
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_768):
                            if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not stor1[idx].field_769 % 128:
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not stor1[idx].field_769 % 128:
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor1[idx].field_512) == stor1[idx].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx].field_513 % 128:
                        stor1[idx].field_512 = 0
                        s = sha3(sha3(idx, 1) + 2)
                        while sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if bool(stor1[idx].field_768):
                            if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                revert with 'NH{q', 34
                            if bool(stor1[idx].field_768):
                                if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 3
                                if not uint255(stor1[idx].field_769):
                                    stor1[idx].field_768 = 0
                                    s = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                                    mem[0] = sha3(idx, 1) + 3
                                    s = sha3(sha3(idx, 1) + 3)
                                    t = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 3
                                if not uint255(stor1[idx].field_769):
                                    stor1[idx].field_768 = 0
                                    s = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                                    mem[0] = sha3(idx, 1) + 3
                                    s = sha3(sha3(idx, 1) + 3)
                                    t = sha3(sha3(idx, 1) + 3)
                                    while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                                    while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            uint8(stor1[idx].field_1024) = uint8(bool(uint8(stor1[idx].field_1024)))
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_768):
                            if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not stor1[idx].field_769 % 128:
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            uint8(stor1[idx].field_1024) = uint8(bool(uint8(stor1[idx].field_1024)))
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 3
                        if not stor1[idx].field_769 % 128:
                            stor1[idx].field_768 = 0
                            s = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            uint8(stor1[idx].field_1024) = uint8(bool(uint8(stor1[idx].field_1024)))
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                        mem[0] = sha3(idx, 1) + 3
                        s = sha3(sha3(idx, 1) + 3)
                        t = sha3(sha3(idx, 1) + 3)
                        while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                            stor[s] = stor[t]
                            s = s + 1
                            t = t + 1
                            continue 
                        s = sha3(sha3(s, 1) + 3) + (stor1[s].field_769 % 128 + 31 / 32)
                        while sha3(sha3(s, 1) + 3) + (stor1[s].field_769 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        uint8(stor1[s].field_1024) = uint8(bool(uint8(stor1[s].field_1024)))
                        if sha3(sha3(s, 1) + 3) + (stor1[s].field_769 % 128 + 31 / 32) == -1:
                            revert with 'NH{q', 17
                        s = sha3(sha3(s, 1) + 3) + (stor1[s].field_769 % 128 + 31 / 32) + 1
                        continue 
                    stor1[idx].field_512 = (2 * stor1[idx].field_513 % 128) + 1
                    s = sha3(sha3(idx, 1) + 2)
                    t = sha3(sha3(idx, 1) + 2)
                    while sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32) > t:
                        stor[s] = stor[t]
                        s = s + 1
                        t = t + 1
                        continue 
                    s = sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32)
                    while sha3(sha3(idx, 1) + 2) + (stor1[idx].field_513 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    if bool(stor1[idx].field_768):
                        if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_768):
                            if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not uint255(stor1[idx].field_769):
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not uint255(stor1[idx].field_769):
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_768):
                            if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not stor1[idx].field_769 % 128:
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                                mem[0] = sha3(idx, 1) + 3
                                s = sha3(sha3(idx, 1) + 3)
                                t = sha3(sha3(idx, 1) + 3)
                                while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                                while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 3
                            if not stor1[idx].field_769 % 128:
                                stor1[idx].field_768 = 0
                                s = sha3(sha3(s, 1) + 3)
                                while sha3(sha3(s, 1) + 3) + (stor1[s].field_769 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                uint8(stor1[s].field_1024) = uint8(bool(uint8(stor1[s].field_1024)))
                                if sha3(sha3(s, 1) + 3) + (stor1[s].field_769 % 128 + 31 / 32) == -1:
                                    revert with 'NH{q', 17
                                s = sha3(sha3(s, 1) + 3) + (stor1[s].field_769 % 128 + 31 / 32) + 1
                                continue 
                            stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
                            mem[0] = sha3(idx, 1) + 3
                            s = sha3(sha3(idx, 1) + 3)
                            t = sha3(sha3(idx, 1) + 3)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32)
                            while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
        uint8(stor1[idx].field_1024) = uint8(bool(uint8(stor1[idx].field_1024)))
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getScores(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        idx = 0
        while idx < arg2:
            if idx > -arg1 - 1:
                revert with 'NH{q', 17
            mem[0] = idx + arg1
            mem[32] = 1
            _494 = mem[64]
            mem[64] = mem[64] + 160
            mem[_494] = address(stor1[idx + arg1].field_0)
            mem[_494 + 32] = stor1[idx + arg1].field_256
            if bool(stor1[idx + arg1].field_512):
                if bool(stor1[idx + arg1].field_512) == uint255(stor1[idx + arg1].field_513) < 32:
                    revert with 'NH{q', 34
                _497 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_513)) + 32
                mem[_497] = uint255(stor1[idx + arg1].field_513)
                if bool(stor1[idx + arg1].field_512):
                    if bool(stor1[idx + arg1].field_512) == uint255(stor1[idx + arg1].field_513) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx + arg1].field_513):
                        mem[_494 + 64] = _497
                        if bool(stor1[idx + arg1].field_768):
                            if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                revert with 'NH{q', 34
                            _513 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                            mem[_513] = uint255(stor1[idx + arg1].field_769)
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_513 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_513 + 32] = stor1[idx + arg1][3].field_0
                                        s = _513 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _513 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_513 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_513 + 32] = stor1[idx + arg1][3].field_0
                                        s = _513 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _513 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_494 + 96] = _513
                        else:
                            if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            _514 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                            mem[_514] = stor1[idx + arg1].field_769 % 128
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_514 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_514 + 32] = stor1[idx + arg1][3].field_0
                                        s = _514 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _514 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_514 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_514 + 32] = stor1[idx + arg1][3].field_0
                                        s = _514 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _514 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_494 + 96] = _514
                    else:
                        if 31 >= uint255(stor1[idx + arg1].field_513):
                            mem[_497 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_520)
                            mem[_494 + 64] = _497
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _517 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_517] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_517 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_517 + 32] = stor1[idx + arg1][3].field_0
                                            s = _517 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _517 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_517 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_517 + 32] = stor1[idx + arg1][3].field_0
                                            s = _517 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _517 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _517
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _523 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_523] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_523 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_523 + 32] = stor1[idx + arg1][3].field_0
                                            s = _523 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _523 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_523 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_523 + 32] = stor1[idx + arg1][3].field_0
                                            s = _523 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _523 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _523
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 2
                            mem[_497 + 32] = stor1[idx + arg1][2].field_0
                            s = _497 + 32
                            t = sha3(sha3(idx + arg1, 1) + 2)
                            while _497 + uint255(stor1[idx + arg1].field_513) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_494 + 64] = _497
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _1012 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_1012] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1012 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1012 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1012 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1012 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1012 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1012 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1012 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1012 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _1012
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1017 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_1017] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1017 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1017 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1017 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1017 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1017 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1017 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1017 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1017 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _1017
                else:
                    if bool(stor1[idx + arg1].field_512) == stor1[idx + arg1].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx + arg1].field_513 % 128:
                        mem[_494 + 64] = _497
                        if bool(stor1[idx + arg1].field_768):
                            if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                revert with 'NH{q', 34
                            _515 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                            mem[_515] = uint255(stor1[idx + arg1].field_769)
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_515 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_515 + 32] = stor1[idx + arg1][3].field_0
                                        s = _515 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _515 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_515 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_515 + 32] = stor1[idx + arg1][3].field_0
                                        s = _515 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _515 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_494 + 96] = _515
                        else:
                            if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            _518 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                            mem[_518] = stor1[idx + arg1].field_769 % 128
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_518 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_518 + 32] = stor1[idx + arg1][3].field_0
                                        s = _518 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _518 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_518 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_518 + 32] = stor1[idx + arg1][3].field_0
                                        s = _518 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _518 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_494 + 96] = _518
                    else:
                        if 31 >= stor1[idx + arg1].field_513 % 128:
                            mem[_497 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_520)
                            mem[_494 + 64] = _497
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _524 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_524] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_524 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_524 + 32] = stor1[idx + arg1][3].field_0
                                            s = _524 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _524 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_524 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_524 + 32] = stor1[idx + arg1][3].field_0
                                            s = _524 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _524 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _524
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _530 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_530] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_530 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_530 + 32] = stor1[idx + arg1][3].field_0
                                            s = _530 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _530 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_530 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_530 + 32] = stor1[idx + arg1][3].field_0
                                            s = _530 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _530 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _530
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 2
                            mem[_497 + 32] = stor1[idx + arg1][2].field_0
                            s = _497 + 32
                            t = sha3(sha3(idx + arg1, 1) + 2)
                            while _497 + stor1[idx + arg1].field_513 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_494 + 64] = _497
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _1013 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_1013] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1013 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1013 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1013 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1013 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1013 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1013 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1013 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1013 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _1013
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1018 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_1018] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1018 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1018 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1018 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1018 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1018 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1018 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1018 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1018 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _1018
            else:
                if bool(stor1[idx + arg1].field_512) == stor1[idx + arg1].field_513 % 128 < 32:
                    revert with 'NH{q', 34
                _498 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_513 % 128) + 32
                mem[_498] = stor1[idx + arg1].field_513 % 128
                if bool(stor1[idx + arg1].field_512):
                    if bool(stor1[idx + arg1].field_512) == uint255(stor1[idx + arg1].field_513) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx + arg1].field_513):
                        mem[_494 + 64] = _498
                        if bool(stor1[idx + arg1].field_768):
                            if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                revert with 'NH{q', 34
                            _516 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                            mem[_516] = uint255(stor1[idx + arg1].field_769)
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_516 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_516 + 32] = stor1[idx + arg1][3].field_0
                                        s = _516 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _516 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_516 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_516 + 32] = stor1[idx + arg1][3].field_0
                                        s = _516 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _516 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_494 + 96] = _516
                        else:
                            if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            _519 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                            mem[_519] = stor1[idx + arg1].field_769 % 128
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_519 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_519 + 32] = stor1[idx + arg1][3].field_0
                                        s = _519 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _519 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_519 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_519 + 32] = stor1[idx + arg1][3].field_0
                                        s = _519 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _519 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_494 + 96] = _519
                    else:
                        if 31 >= uint255(stor1[idx + arg1].field_513):
                            mem[_498 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_520)
                            mem[_494 + 64] = _498
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _525 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_525] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_525 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_525 + 32] = stor1[idx + arg1][3].field_0
                                            s = _525 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _525 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_525 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_525 + 32] = stor1[idx + arg1][3].field_0
                                            s = _525 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _525 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _525
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _531 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_531] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_531 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_531 + 32] = stor1[idx + arg1][3].field_0
                                            s = _531 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _531 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_531 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_531 + 32] = stor1[idx + arg1][3].field_0
                                            s = _531 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _531 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _531
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 2
                            mem[_498 + 32] = stor1[idx + arg1][2].field_0
                            s = _498 + 32
                            t = sha3(sha3(idx + arg1, 1) + 2)
                            while _498 + uint255(stor1[idx + arg1].field_513) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_494 + 64] = _498
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _1014 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_1014] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1014 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1014 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1014 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1014 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1014 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1014 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1014 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1014 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _1014
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1019 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_1019] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1019 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1019 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1019 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1019 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1019 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1019 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1019 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1019 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _1019
                else:
                    if bool(stor1[idx + arg1].field_512) == stor1[idx + arg1].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx + arg1].field_513 % 128:
                        mem[_494 + 64] = _498
                        if bool(stor1[idx + arg1].field_768):
                            if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                revert with 'NH{q', 34
                            _520 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                            mem[_520] = uint255(stor1[idx + arg1].field_769)
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_520 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_520 + 32] = stor1[idx + arg1][3].field_0
                                        s = _520 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _520 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_520 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_520 + 32] = stor1[idx + arg1][3].field_0
                                        s = _520 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _520 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_494 + 96] = _520
                        else:
                            if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            _526 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                            mem[_526] = stor1[idx + arg1].field_769 % 128
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_526 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_526 + 32] = stor1[idx + arg1][3].field_0
                                        s = _526 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _526 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_526 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_526 + 32] = stor1[idx + arg1][3].field_0
                                        s = _526 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _526 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_494 + 96] = _526
                    else:
                        if 31 >= stor1[idx + arg1].field_513 % 128:
                            mem[_498 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_520)
                            mem[_494 + 64] = _498
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _532 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_532] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_532 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_532 + 32] = stor1[idx + arg1][3].field_0
                                            s = _532 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _532 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_532 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_532 + 32] = stor1[idx + arg1][3].field_0
                                            s = _532 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _532 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _532
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _540 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_540] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_540 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_540 + 32] = stor1[idx + arg1][3].field_0
                                            s = _540 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _540 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_540 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_540 + 32] = stor1[idx + arg1][3].field_0
                                            s = _540 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _540 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _540
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 2
                            mem[_498 + 32] = stor1[idx + arg1][2].field_0
                            s = _498 + 32
                            t = sha3(sha3(idx + arg1, 1) + 2)
                            while _498 + stor1[idx + arg1].field_513 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_494 + 64] = _498
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _1015 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_1015] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1015 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1015 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1015 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1015 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1015 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1015 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1015 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1015 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _1015
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1020 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_1020] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1020 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1020 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1020 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1020 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1020 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1020 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1020 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1020 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_494 + 96] = _1020
            mem[_494 + 128] = bool(uint8(stor1[idx + arg1].field_1024))
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _494
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _490 = mem[64]
        mem[mem[64]] = 32
        _491 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _491:
            mem[u] = t + -_490 - 64
            _977 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_977 + 32]
            _1041 = mem[_977 + 64]
            mem[t + 64] = 160
            _1070 = mem[_1041]
            mem[t + 160] = mem[_1041]
            v = 0
            while v < _1070:
                mem[t + v + 192] = mem[_1041 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1070) <= _1070:
                _1360 = mem[_977 + 96]
                mem[t + 96] = ceil32(_1070) + 192
                _1362 = mem[_1360]
                mem[t + ceil32(_1070) + 192] = mem[_1360]
                v = 0
                while v < _1362:
                    mem[t + ceil32(_1070) + v + 224] = mem[_1360 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1362) > _1362:
                    mem[t + ceil32(_1070) + _1362 + 224] = 0
                mem[t + 128] = bool(mem[_977 + 128])
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1070) + ceil32(_1362) + 224
                u = u + 32
                continue 
            mem[t + _1070 + 192] = 0
            _1361 = mem[_977 + 96]
            mem[t + 96] = ceil32(_1070) + 192
            _1365 = mem[_1361]
            mem[t + ceil32(_1070) + 192] = mem[_1361]
            v = 0
            while v < _1365:
                mem[t + ceil32(_1070) + v + 224] = mem[_1361 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1365) > _1365:
                mem[t + ceil32(_1070) + _1365 + 224] = 0
            mem[t + 128] = bool(mem[_977 + 128])
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1070) + ceil32(_1365) + 224
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg2) + 288
        mem[(32 * arg2) + 128] = 0
        mem[(32 * arg2) + 160] = 0
        mem[(32 * arg2) + 192] = 96
        mem[(32 * arg2) + 224] = 96
        mem[(32 * arg2) + 256] = 0
        mem[var25001] = (32 * arg2) + 128
        s = var25001
        idx = var25002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[(32 * arg2) + 128] = 0
            mem[(32 * arg2) + 160] = 0
            mem[(32 * arg2) + 192] = 96
            mem[(32 * arg2) + 224] = 96
            mem[(32 * arg2) + 256] = 0
            mem[s + 32] = (32 * arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg2:
            if idx > -arg1 - 1:
                revert with 'NH{q', 17
            mem[0] = idx + arg1
            mem[32] = 1
            _1364 = mem[64]
            mem[64] = mem[64] + 160
            mem[_1364] = address(stor1[idx + arg1].field_0)
            mem[_1364 + 32] = stor1[idx + arg1].field_256
            if bool(stor1[idx + arg1].field_512):
                if bool(stor1[idx + arg1].field_512) == uint255(stor1[idx + arg1].field_513) < 32:
                    revert with 'NH{q', 34
                _1367 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_513)) + 32
                mem[_1367] = uint255(stor1[idx + arg1].field_513)
                if bool(stor1[idx + arg1].field_512):
                    if bool(stor1[idx + arg1].field_512) == uint255(stor1[idx + arg1].field_513) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx + arg1].field_513):
                        mem[_1364 + 64] = _1367
                        if bool(stor1[idx + arg1].field_768):
                            if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                revert with 'NH{q', 34
                            _1382 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                            mem[_1382] = uint255(stor1[idx + arg1].field_769)
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_1382 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1382 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1382 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1382 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_1382 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1382 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1382 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1382 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1364 + 96] = _1382
                        else:
                            if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            _1383 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                            mem[_1383] = stor1[idx + arg1].field_769 % 128
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_1383 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1383 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1383 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1383 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_1383 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1383 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1383 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1383 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1364 + 96] = _1383
                    else:
                        if 31 >= uint255(stor1[idx + arg1].field_513):
                            mem[_1367 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_520)
                            mem[_1364 + 64] = _1367
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _1386 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_1386] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1386 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1386 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1386 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1386 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1386 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1386 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1386 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1386 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1386
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1391 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_1391] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1391 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1391 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1391 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1391 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1391 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1391 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1391 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1391 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1391
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 2
                            mem[_1367 + 32] = stor1[idx + arg1][2].field_0
                            s = _1367 + 32
                            t = sha3(sha3(idx + arg1, 1) + 2)
                            while _1367 + uint255(stor1[idx + arg1].field_513) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1364 + 64] = _1367
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _1650 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_1650] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1650 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1650 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1650 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1650 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1650 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1650 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1650 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1650 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1650
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1656 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_1656] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1656 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1656 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1656 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1656 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1656 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1656 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1656 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1656 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1656
                else:
                    if bool(stor1[idx + arg1].field_512) == stor1[idx + arg1].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx + arg1].field_513 % 128:
                        mem[_1364 + 64] = _1367
                        if bool(stor1[idx + arg1].field_768):
                            if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                revert with 'NH{q', 34
                            _1384 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                            mem[_1384] = uint255(stor1[idx + arg1].field_769)
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_1384 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1384 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1384 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1384 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_1384 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1384 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1384 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1384 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1364 + 96] = _1384
                        else:
                            if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            _1387 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                            mem[_1387] = stor1[idx + arg1].field_769 % 128
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_1387 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1387 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1387 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1387 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_1387 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1387 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1387 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1387 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1364 + 96] = _1387
                    else:
                        if 31 >= stor1[idx + arg1].field_513 % 128:
                            mem[_1367 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_520)
                            mem[_1364 + 64] = _1367
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _1392 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_1392] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1392 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1392 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1392 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1392 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1392 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1392 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1392 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1392 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1392
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1396 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_1396] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1396 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1396 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1396 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1396 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1396 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1396 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1396 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1396 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1396
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 2
                            mem[_1367 + 32] = stor1[idx + arg1][2].field_0
                            s = _1367 + 32
                            t = sha3(sha3(idx + arg1, 1) + 2)
                            while _1367 + stor1[idx + arg1].field_513 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1364 + 64] = _1367
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _1651 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_1651] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1651 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1651 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1651 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1651 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1651 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1651 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1651 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1651 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1651
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1657 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_1657] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1657 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1657 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1657 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1657 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1657 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1657 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1657 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1657 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1657
            else:
                if bool(stor1[idx + arg1].field_512) == stor1[idx + arg1].field_513 % 128 < 32:
                    revert with 'NH{q', 34
                _1368 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_513 % 128) + 32
                mem[_1368] = stor1[idx + arg1].field_513 % 128
                if bool(stor1[idx + arg1].field_512):
                    if bool(stor1[idx + arg1].field_512) == uint255(stor1[idx + arg1].field_513) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx + arg1].field_513):
                        mem[_1364 + 64] = _1368
                        if bool(stor1[idx + arg1].field_768):
                            if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                revert with 'NH{q', 34
                            _1385 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                            mem[_1385] = uint255(stor1[idx + arg1].field_769)
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_1385 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1385 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1385 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1385 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_1385 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1385 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1385 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1385 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1364 + 96] = _1385
                        else:
                            if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            _1388 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                            mem[_1388] = stor1[idx + arg1].field_769 % 128
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_1388 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1388 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1388 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1388 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_1388 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1388 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1388 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1388 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1364 + 96] = _1388
                    else:
                        if 31 >= uint255(stor1[idx + arg1].field_513):
                            mem[_1368 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_520)
                            mem[_1364 + 64] = _1368
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _1393 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_1393] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1393 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1393 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1393 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1393 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1393 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1393 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1393 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1393 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1393
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1397 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_1397] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1397 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1397 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1397 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1397 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1397 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1397 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1397 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1397 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1397
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 2
                            mem[_1368 + 32] = stor1[idx + arg1][2].field_0
                            s = _1368 + 32
                            t = sha3(sha3(idx + arg1, 1) + 2)
                            while _1368 + uint255(stor1[idx + arg1].field_513) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1364 + 64] = _1368
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _1652 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_1652] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1652 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1652 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1652 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1652 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1652 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1652 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1652 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1652 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1652
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1658 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_1658] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1658 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1658 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1658 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1658 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1658 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1658 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1658 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1658 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1658
                else:
                    if bool(stor1[idx + arg1].field_512) == stor1[idx + arg1].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx + arg1].field_513 % 128:
                        mem[_1364 + 64] = _1368
                        if bool(stor1[idx + arg1].field_768):
                            if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                revert with 'NH{q', 34
                            _1389 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                            mem[_1389] = uint255(stor1[idx + arg1].field_769)
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_1389 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1389 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1389 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1389 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_1389 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1389 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1389 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1389 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1364 + 96] = _1389
                        else:
                            if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                revert with 'NH{q', 34
                            _1394 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                            mem[_1394] = stor1[idx + arg1].field_769 % 128
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_769):
                                    if 31 >= uint255(stor1[idx + arg1].field_769):
                                        mem[_1394 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1394 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1394 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1394 + uint255(stor1[idx + arg1].field_769) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_769 % 128:
                                    if 31 >= stor1[idx + arg1].field_769 % 128:
                                        mem[_1394 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 3
                                        mem[_1394 + 32] = stor1[idx + arg1][3].field_0
                                        s = _1394 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 3)
                                        while _1394 + stor1[idx + arg1].field_769 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1364 + 96] = _1394
                    else:
                        if 31 >= stor1[idx + arg1].field_513 % 128:
                            mem[_1368 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_520)
                            mem[_1364 + 64] = _1368
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _1398 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_1398] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1398 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1398 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1398 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1398 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1398 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1398 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1398 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1398 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1398
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1404 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_1404] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1404 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1404 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1404 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1404 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1404 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1404 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1404 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1404 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1404
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 2
                            mem[_1368 + 32] = stor1[idx + arg1][2].field_0
                            s = _1368 + 32
                            t = sha3(sha3(idx + arg1, 1) + 2)
                            while _1368 + stor1[idx + arg1].field_513 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1364 + 64] = _1368
                            if bool(stor1[idx + arg1].field_768):
                                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                    revert with 'NH{q', 34
                                _1653 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                                mem[_1653] = uint255(stor1[idx + arg1].field_769)
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1653 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1653 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1653 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1653 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1653 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1653 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1653 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1653 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1653
                            else:
                                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1659 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                                mem[_1659] = stor1[idx + arg1].field_769 % 128
                                if bool(stor1[idx + arg1].field_768):
                                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_769):
                                        if 31 >= uint255(stor1[idx + arg1].field_769):
                                            mem[_1659 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1659 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1659 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1659 + uint255(stor1[idx + arg1].field_769) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_769 % 128:
                                        if 31 >= stor1[idx + arg1].field_769 % 128:
                                            mem[_1659 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 3
                                            mem[_1659 + 32] = stor1[idx + arg1][3].field_0
                                            s = _1659 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 3)
                                            while _1659 + stor1[idx + arg1].field_769 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1364 + 96] = _1659
            mem[_1364 + 128] = bool(uint8(stor1[idx + arg1].field_1024))
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _1364
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1358 = mem[64]
        mem[mem[64]] = 32
        _1359 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1359:
            mem[u] = t + -_1358 - 64
            _1613 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1613 + 32]
            _1677 = mem[_1613 + 64]
            mem[t + 64] = 160
            _1706 = mem[_1677]
            mem[t + 160] = mem[_1677]
            v = 0
            while v < _1706:
                mem[t + v + 192] = mem[_1677 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1706) <= _1706:
                _1755 = mem[_1613 + 96]
                mem[t + 96] = ceil32(_1706) + 192
                _1757 = mem[_1755]
                mem[t + ceil32(_1706) + 192] = mem[_1755]
                v = 0
                while v < _1757:
                    mem[t + ceil32(_1706) + v + 224] = mem[_1755 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1757) > _1757:
                    mem[t + ceil32(_1706) + _1757 + 224] = 0
                mem[t + 128] = bool(mem[_1613 + 128])
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1706) + ceil32(_1757) + 224
                u = u + 32
                continue 
            mem[t + _1706 + 192] = 0
            _1756 = mem[_1613 + 96]
            mem[t + 96] = ceil32(_1706) + 192
            _1758 = mem[_1756]
            mem[t + ceil32(_1706) + 192] = mem[_1756]
            v = 0
            while v < _1758:
                mem[t + ceil32(_1706) + v + 224] = mem[_1756 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1758) > _1758:
                mem[t + ceil32(_1706) + _1758 + 224] = 0
            mem[t + 128] = bool(mem[_1613 + 128])
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1706) + ceil32(_1758) + 224
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
