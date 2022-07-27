contract main {




// =====================  Runtime code  =====================


#
#  - sub_12c4b657(?)
#  - scores(uint256 arg1)
#
uint8 gameActive; offset 160
uint128 stor0; offset 160
address stor0;
mapping of struct stor1;
mapping of uint8 stor2;
mapping of struct stor3;
uint256 scoreCount;
uint256 sub_6ed7f4ce;
uint256 sub_64196be7;

function bannedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_64196be7(?) payable {
    return sub_64196be7
}

function sub_6ed7f4ce(?) payable {
    return sub_6ed7f4ce
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
    uint8(stor1[arg1].field_1280) = 1
}

function setGameActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function sub_3539b9ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < scoreCount:
        mem[0] = idx
        mem[32] = 1
        if arg1 == stor1[idx].field_512:
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_b6a05ed5(?) payable {
    require calldata.size - 4 >= 128
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
    require arg4 == arg4
    if bool(gameActive) != 1:
        revert with 0, 'Game Not Active!'
    if bool(stor2[address(msg.sender)]) == 1:
        revert with 0, 'You're banned, why'd you cheat huh?'
    idx = 0
    while idx < scoreCount:
        mem[0] = idx
        mem[32] = 1
        if arg4 == stor1[idx].field_512:
            revert with 0, 'You've already submitted a score for this sweetango'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    address(stor1[stor4].field_0) = msg.sender
    stor1[stor4].field_256 = arg1
    stor1[stor4].field_512 = arg4
    if bool(stor1[stor4].field_768):
        if bool(stor1[stor4].field_768) == uint255(stor1[stor4].field_769) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor1[stor4][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1[stor4].field_768 = 0
            idx = 0
            while uint255(stor1[stor4].field_769) + 31 / 32 > idx:
                stor1[stor4][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1[stor4].field_768) == stor1[stor4].field_769 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor1[stor4][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1[stor4].field_768 = 0
            idx = 0
            while stor1[stor4].field_769 % 128 + 31 / 32 > idx:
                stor1[stor4][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor1[stor4].field_1024):
        if bool(stor1[stor4].field_1024) == uint255(stor1[stor4].field_1025) < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor1[stor4][4][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor1[stor4].field_1024 = 0
            idx = 0
            while uint255(stor1[stor4].field_1025) + 31 / 32 > idx:
                stor1[stor4][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1[stor4].field_1024) == stor1[stor4].field_1025 % 128 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor1[stor4][4][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor1[stor4].field_1024 = 0
            idx = 0
            while stor1[stor4].field_1025 % 128 + 31 / 32 > idx:
                stor1[stor4][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    uint8(stor1[stor4].field_1280) = 1
    if scoreCount == -1:
        revert with 'NH{q', 17
    scoreCount++
}

function sub_5112711a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor3[arg1].field_768):
        if bool(stor3[arg1].field_768) == uint255(stor3[arg1].field_769) < 32:
            revert with 'NH{q', 34
        if bool(stor3[arg1].field_768):
            if bool(stor3[arg1].field_768) == uint255(stor3[arg1].field_769) < 32:
                revert with 'NH{q', 34
            if uint255(stor3[arg1].field_769):
                if 31 >= uint255(stor3[arg1].field_769):
                    mem[128] = 256 * Mask(248, 0, stor3[arg1].field_776)
                else:
                    mem[128] = stor3[arg1][3].field_0
                    idx = 128
                    s = 0
                    while uint255(stor3[arg1].field_769) + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor3[arg1].field_768) == stor3[arg1].field_769 % 128 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_769 % 128:
                if 31 >= stor3[arg1].field_769 % 128:
                    mem[128] = 256 * Mask(248, 0, stor3[arg1].field_776)
                else:
                    mem[128] = stor3[arg1][3].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1].field_769 % 128 + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor3[arg1].field_1024):
            if bool(stor3[arg1].field_1024) == uint255(stor3[arg1].field_1025) < 32:
                revert with 'NH{q', 34
            if bool(stor3[arg1].field_1024):
                if bool(stor3[arg1].field_1024) == uint255(stor3[arg1].field_1025) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor3[arg1].field_1025):
                    if ceil32(uint255(stor3[arg1].field_769)) > uint255(stor3[arg1].field_769):
                        mem[ceil32(uint255(stor3[arg1].field_769)) + ceil32(uint255(stor3[arg1].field_1025)) + uint255(stor3[arg1].field_769) + 384] = 0
                    mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(uint255(stor3[arg1].field_1025)) + 384] = uint255(stor3[arg1].field_1025)
                    mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(uint255(stor3[arg1].field_1025)) + 416 len ceil32(uint255(stor3[arg1].field_1025))] = mem[ceil32(uint255(stor3[arg1].field_769)) + 160 len ceil32(uint255(stor3[arg1].field_1025))]
                    if ceil32(uint255(stor3[arg1].field_1025)) > uint255(stor3[arg1].field_1025):
                        mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(uint255(stor3[arg1].field_1025)) + uint255(stor3[arg1].field_1025) + 416] = 0
                else:
                    if 31 >= uint255(stor3[arg1].field_1025):
                        mem[ceil32(uint255(stor3[arg1].field_769)) + 160] = 256 * Mask(248, 0, stor3[arg1].field_1032)
                    else:
                        mem[ceil32(uint255(stor3[arg1].field_769)) + 160] = stor3[arg1][4].field_0
                        idx = ceil32(uint255(stor3[arg1].field_769)) + 160
                        s = 0
                        while ceil32(uint255(stor3[arg1].field_769)) + uint255(stor3[arg1].field_1025) + 128 > idx:
                            mem[idx + 32] = stor3[arg1][s + 4].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor3[arg1].field_769)) > uint255(stor3[arg1].field_769):
                        mem[ceil32(uint255(stor3[arg1].field_769)) + ceil32(uint255(stor3[arg1].field_1025)) + uint255(stor3[arg1].field_769) + 384] = 0
                    mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(uint255(stor3[arg1].field_1025)) + 384] = uint255(stor3[arg1].field_1025)
                    mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(uint255(stor3[arg1].field_1025)) + 416 len ceil32(uint255(stor3[arg1].field_1025))] = mem[ceil32(uint255(stor3[arg1].field_769)) + 160 len ceil32(uint255(stor3[arg1].field_1025))]
                    if ceil32(uint255(stor3[arg1].field_1025)) > uint255(stor3[arg1].field_1025):
                        mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(uint255(stor3[arg1].field_1025)) + uint255(stor3[arg1].field_1025) + 416] = 0
            else:
                if bool(stor3[arg1].field_1024) == stor3[arg1].field_1025 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor3[arg1].field_1025 % 128:
                    if ceil32(uint255(stor3[arg1].field_769)) > uint255(stor3[arg1].field_769):
                        mem[ceil32(uint255(stor3[arg1].field_769)) + ceil32(uint255(stor3[arg1].field_1025)) + uint255(stor3[arg1].field_769) + 384] = 0
                    mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(uint255(stor3[arg1].field_1025)) + 384] = uint255(stor3[arg1].field_1025)
                    mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(uint255(stor3[arg1].field_1025)) + 416 len ceil32(uint255(stor3[arg1].field_1025))] = mem[ceil32(uint255(stor3[arg1].field_769)) + 160 len ceil32(uint255(stor3[arg1].field_1025))]
                    if ceil32(uint255(stor3[arg1].field_1025)) > uint255(stor3[arg1].field_1025):
                        mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(uint255(stor3[arg1].field_1025)) + uint255(stor3[arg1].field_1025) + 416] = 0
                else:
                    if 31 >= stor3[arg1].field_1025 % 128:
                        mem[ceil32(uint255(stor3[arg1].field_769)) + 160] = 256 * Mask(248, 0, stor3[arg1].field_1032)
                    else:
                        mem[ceil32(uint255(stor3[arg1].field_769)) + 160] = stor3[arg1][4].field_0
                        idx = ceil32(uint255(stor3[arg1].field_769)) + 160
                        s = 0
                        while ceil32(uint255(stor3[arg1].field_769)) + stor3[arg1].field_1025 % 128 + 128 > idx:
                            mem[idx + 32] = stor3[arg1][s + 4].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor3[arg1].field_769)) > uint255(stor3[arg1].field_769):
                        mem[ceil32(uint255(stor3[arg1].field_769)) + ceil32(uint255(stor3[arg1].field_1025)) + uint255(stor3[arg1].field_769) + 384] = 0
                    mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(uint255(stor3[arg1].field_1025)) + 384] = uint255(stor3[arg1].field_1025)
                    mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(uint255(stor3[arg1].field_1025)) + 416 len ceil32(uint255(stor3[arg1].field_1025))] = mem[ceil32(uint255(stor3[arg1].field_769)) + 160 len ceil32(uint255(stor3[arg1].field_1025))]
                    if ceil32(uint255(stor3[arg1].field_1025)) > uint255(stor3[arg1].field_1025):
                        mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(uint255(stor3[arg1].field_1025)) + uint255(stor3[arg1].field_1025) + 416] = 0
            return address(stor3[arg1].field_0), 
                   stor3[arg1].field_256,
                   stor3[arg1].field_512,
                   Array(len=2 * Mask(256, -1, uint255(stor3[arg1].field_769)), data=mem[128 len ceil32(uint255(stor3[arg1].field_769))], 2 * Mask(256, -1, uint255(stor3[arg1].field_1025)), mem[ceil32(uint255(stor3[arg1].field_769)) + 160 len ceil32(uint255(stor3[arg1].field_1025))]),
                   ceil32(uint255(stor3[arg1].field_769)) + 224,
                   bool(uint8(stor3[arg1].field_1280))
        if bool(stor3[arg1].field_1024) == stor3[arg1].field_1025 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor3[arg1].field_1024):
            if bool(stor3[arg1].field_1024) == uint255(stor3[arg1].field_1025) < 32:
                revert with 'NH{q', 34
            if not uint255(stor3[arg1].field_1025):
                if ceil32(uint255(stor3[arg1].field_769)) > uint255(stor3[arg1].field_769):
                    mem[ceil32(uint255(stor3[arg1].field_769)) + ceil32(stor3[arg1].field_1025 % 128) + uint255(stor3[arg1].field_769) + 384] = 0
                mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(stor3[arg1].field_1025 % 128) + 384] = stor3[arg1].field_1025 % 128
                mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(stor3[arg1].field_1025 % 128) + 416 len ceil32(stor3[arg1].field_1025 % 128)] = mem[ceil32(uint255(stor3[arg1].field_769)) + 160 len ceil32(stor3[arg1].field_1025 % 128)]
                if ceil32(stor3[arg1].field_1025 % 128) > stor3[arg1].field_1025 % 128:
                    mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(stor3[arg1].field_1025 % 128) + stor3[arg1].field_1025 % 128 + 416] = 0
            else:
                if 31 >= uint255(stor3[arg1].field_1025):
                    mem[ceil32(uint255(stor3[arg1].field_769)) + 160] = 256 * Mask(248, 0, stor3[arg1].field_1032)
                else:
                    mem[ceil32(uint255(stor3[arg1].field_769)) + 160] = stor3[arg1][4].field_0
                    idx = ceil32(uint255(stor3[arg1].field_769)) + 160
                    s = 0
                    while ceil32(uint255(stor3[arg1].field_769)) + uint255(stor3[arg1].field_1025) + 128 > idx:
                        mem[idx + 32] = stor3[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor3[arg1].field_769)) > uint255(stor3[arg1].field_769):
                    mem[ceil32(uint255(stor3[arg1].field_769)) + ceil32(stor3[arg1].field_1025 % 128) + uint255(stor3[arg1].field_769) + 384] = 0
                mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(stor3[arg1].field_1025 % 128) + 384] = stor3[arg1].field_1025 % 128
                mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(stor3[arg1].field_1025 % 128) + 416 len ceil32(stor3[arg1].field_1025 % 128)] = mem[ceil32(uint255(stor3[arg1].field_769)) + 160 len ceil32(stor3[arg1].field_1025 % 128)]
                if ceil32(stor3[arg1].field_1025 % 128) > stor3[arg1].field_1025 % 128:
                    mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(stor3[arg1].field_1025 % 128) + stor3[arg1].field_1025 % 128 + 416] = 0
        else:
            if bool(stor3[arg1].field_1024) == stor3[arg1].field_1025 % 128 < 32:
                revert with 'NH{q', 34
            if not stor3[arg1].field_1025 % 128:
                if ceil32(uint255(stor3[arg1].field_769)) > uint255(stor3[arg1].field_769):
                    mem[ceil32(uint255(stor3[arg1].field_769)) + ceil32(stor3[arg1].field_1025 % 128) + uint255(stor3[arg1].field_769) + 384] = 0
                mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(stor3[arg1].field_1025 % 128) + 384] = stor3[arg1].field_1025 % 128
                mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(stor3[arg1].field_1025 % 128) + 416 len ceil32(stor3[arg1].field_1025 % 128)] = mem[ceil32(uint255(stor3[arg1].field_769)) + 160 len ceil32(stor3[arg1].field_1025 % 128)]
                if ceil32(stor3[arg1].field_1025 % 128) > stor3[arg1].field_1025 % 128:
                    mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(stor3[arg1].field_1025 % 128) + stor3[arg1].field_1025 % 128 + 416] = 0
            else:
                if 31 >= stor3[arg1].field_1025 % 128:
                    mem[ceil32(uint255(stor3[arg1].field_769)) + 160] = 256 * Mask(248, 0, stor3[arg1].field_1032)
                else:
                    mem[ceil32(uint255(stor3[arg1].field_769)) + 160] = stor3[arg1][4].field_0
                    idx = ceil32(uint255(stor3[arg1].field_769)) + 160
                    s = 0
                    while ceil32(uint255(stor3[arg1].field_769)) + stor3[arg1].field_1025 % 128 + 128 > idx:
                        mem[idx + 32] = stor3[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor3[arg1].field_769)) > uint255(stor3[arg1].field_769):
                    mem[ceil32(uint255(stor3[arg1].field_769)) + ceil32(stor3[arg1].field_1025 % 128) + uint255(stor3[arg1].field_769) + 384] = 0
                mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(stor3[arg1].field_1025 % 128) + 384] = stor3[arg1].field_1025 % 128
                mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(stor3[arg1].field_1025 % 128) + 416 len ceil32(stor3[arg1].field_1025 % 128)] = mem[ceil32(uint255(stor3[arg1].field_769)) + 160 len ceil32(stor3[arg1].field_1025 % 128)]
                if ceil32(stor3[arg1].field_1025 % 128) > stor3[arg1].field_1025 % 128:
                    mem[(2 * ceil32(uint255(stor3[arg1].field_769))) + ceil32(stor3[arg1].field_1025 % 128) + stor3[arg1].field_1025 % 128 + 416] = 0
        return address(stor3[arg1].field_0), 
               stor3[arg1].field_256,
               stor3[arg1].field_512,
               Array(len=2 * Mask(256, -1, uint255(stor3[arg1].field_769)), data=mem[128 len ceil32(uint255(stor3[arg1].field_769))], stor3[arg1].field_1024 % 128, mem[ceil32(uint255(stor3[arg1].field_769)) + 160 len ceil32(stor3[arg1].field_1025 % 128)]),
               ceil32(uint255(stor3[arg1].field_769)) + 224,
               bool(uint8(stor3[arg1].field_1280))
    if bool(stor3[arg1].field_768) == stor3[arg1].field_769 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor3[arg1].field_768):
        if bool(stor3[arg1].field_768) == uint255(stor3[arg1].field_769) < 32:
            revert with 'NH{q', 34
        if uint255(stor3[arg1].field_769):
            if 31 >= uint255(stor3[arg1].field_769):
                mem[128] = 256 * Mask(248, 0, stor3[arg1].field_776)
            else:
                mem[128] = stor3[arg1][3].field_0
                idx = 128
                s = 0
                while uint255(stor3[arg1].field_769) + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor3[arg1].field_768) == stor3[arg1].field_769 % 128 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_769 % 128:
            if 31 >= stor3[arg1].field_769 % 128:
                mem[128] = 256 * Mask(248, 0, stor3[arg1].field_776)
            else:
                mem[128] = stor3[arg1][3].field_0
                idx = 128
                s = 0
                while stor3[arg1].field_769 % 128 + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor3[arg1].field_1024):
        if bool(stor3[arg1].field_1024) == uint255(stor3[arg1].field_1025) < 32:
            revert with 'NH{q', 34
        if bool(stor3[arg1].field_1024):
            if bool(stor3[arg1].field_1024) == uint255(stor3[arg1].field_1025) < 32:
                revert with 'NH{q', 34
            if not uint255(stor3[arg1].field_1025):
                if ceil32(stor3[arg1].field_769 % 128) > stor3[arg1].field_769 % 128:
                    mem[ceil32(stor3[arg1].field_769 % 128) + ceil32(uint255(stor3[arg1].field_1025)) + stor3[arg1].field_769 % 128 + 384] = 0
                mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(uint255(stor3[arg1].field_1025)) + 384] = uint255(stor3[arg1].field_1025)
                mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(uint255(stor3[arg1].field_1025)) + 416 len ceil32(uint255(stor3[arg1].field_1025))] = mem[ceil32(stor3[arg1].field_769 % 128) + 160 len ceil32(uint255(stor3[arg1].field_1025))]
                if ceil32(uint255(stor3[arg1].field_1025)) > uint255(stor3[arg1].field_1025):
                    mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(uint255(stor3[arg1].field_1025)) + uint255(stor3[arg1].field_1025) + 416] = 0
            else:
                if 31 >= uint255(stor3[arg1].field_1025):
                    mem[ceil32(stor3[arg1].field_769 % 128) + 160] = 256 * Mask(248, 0, stor3[arg1].field_1032)
                else:
                    mem[ceil32(stor3[arg1].field_769 % 128) + 160] = stor3[arg1][4].field_0
                    idx = ceil32(stor3[arg1].field_769 % 128) + 160
                    s = 0
                    while ceil32(stor3[arg1].field_769 % 128) + uint255(stor3[arg1].field_1025) + 128 > idx:
                        mem[idx + 32] = stor3[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor3[arg1].field_769 % 128) > stor3[arg1].field_769 % 128:
                    mem[ceil32(stor3[arg1].field_769 % 128) + ceil32(uint255(stor3[arg1].field_1025)) + stor3[arg1].field_769 % 128 + 384] = 0
                mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(uint255(stor3[arg1].field_1025)) + 384] = uint255(stor3[arg1].field_1025)
                mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(uint255(stor3[arg1].field_1025)) + 416 len ceil32(uint255(stor3[arg1].field_1025))] = mem[ceil32(stor3[arg1].field_769 % 128) + 160 len ceil32(uint255(stor3[arg1].field_1025))]
                if ceil32(uint255(stor3[arg1].field_1025)) > uint255(stor3[arg1].field_1025):
                    mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(uint255(stor3[arg1].field_1025)) + uint255(stor3[arg1].field_1025) + 416] = 0
        else:
            if bool(stor3[arg1].field_1024) == stor3[arg1].field_1025 % 128 < 32:
                revert with 'NH{q', 34
            if not stor3[arg1].field_1025 % 128:
                if ceil32(stor3[arg1].field_769 % 128) > stor3[arg1].field_769 % 128:
                    mem[ceil32(stor3[arg1].field_769 % 128) + ceil32(uint255(stor3[arg1].field_1025)) + stor3[arg1].field_769 % 128 + 384] = 0
                mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(uint255(stor3[arg1].field_1025)) + 384] = uint255(stor3[arg1].field_1025)
                mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(uint255(stor3[arg1].field_1025)) + 416 len ceil32(uint255(stor3[arg1].field_1025))] = mem[ceil32(stor3[arg1].field_769 % 128) + 160 len ceil32(uint255(stor3[arg1].field_1025))]
                if ceil32(uint255(stor3[arg1].field_1025)) > uint255(stor3[arg1].field_1025):
                    mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(uint255(stor3[arg1].field_1025)) + uint255(stor3[arg1].field_1025) + 416] = 0
            else:
                if 31 >= stor3[arg1].field_1025 % 128:
                    mem[ceil32(stor3[arg1].field_769 % 128) + 160] = 256 * Mask(248, 0, stor3[arg1].field_1032)
                else:
                    mem[ceil32(stor3[arg1].field_769 % 128) + 160] = stor3[arg1][4].field_0
                    idx = ceil32(stor3[arg1].field_769 % 128) + 160
                    s = 0
                    while ceil32(stor3[arg1].field_769 % 128) + stor3[arg1].field_1025 % 128 + 128 > idx:
                        mem[idx + 32] = stor3[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor3[arg1].field_769 % 128) > stor3[arg1].field_769 % 128:
                    mem[ceil32(stor3[arg1].field_769 % 128) + ceil32(uint255(stor3[arg1].field_1025)) + stor3[arg1].field_769 % 128 + 384] = 0
                mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(uint255(stor3[arg1].field_1025)) + 384] = uint255(stor3[arg1].field_1025)
                mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(uint255(stor3[arg1].field_1025)) + 416 len ceil32(uint255(stor3[arg1].field_1025))] = mem[ceil32(stor3[arg1].field_769 % 128) + 160 len ceil32(uint255(stor3[arg1].field_1025))]
                if ceil32(uint255(stor3[arg1].field_1025)) > uint255(stor3[arg1].field_1025):
                    mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(uint255(stor3[arg1].field_1025)) + uint255(stor3[arg1].field_1025) + 416] = 0
        return address(stor3[arg1].field_0), 
               stor3[arg1].field_256,
               stor3[arg1].field_512,
               Array(len=stor3[arg1].field_768 % 128, data=mem[128 len ceil32(stor3[arg1].field_769 % 128)], 2 * Mask(256, -1, uint255(stor3[arg1].field_1025)), mem[ceil32(stor3[arg1].field_769 % 128) + 160 len ceil32(uint255(stor3[arg1].field_1025))]),
               ceil32(stor3[arg1].field_769 % 128) + 224,
               bool(uint8(stor3[arg1].field_1280))
    if bool(stor3[arg1].field_1024) == stor3[arg1].field_1025 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor3[arg1].field_1024):
        if bool(stor3[arg1].field_1024) == uint255(stor3[arg1].field_1025) < 32:
            revert with 'NH{q', 34
        if not uint255(stor3[arg1].field_1025):
            if ceil32(stor3[arg1].field_769 % 128) > stor3[arg1].field_769 % 128:
                mem[ceil32(stor3[arg1].field_769 % 128) + ceil32(stor3[arg1].field_1025 % 128) + stor3[arg1].field_769 % 128 + 384] = 0
            mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(stor3[arg1].field_1025 % 128) + 384] = stor3[arg1].field_1025 % 128
            mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(stor3[arg1].field_1025 % 128) + 416 len ceil32(stor3[arg1].field_1025 % 128)] = mem[ceil32(stor3[arg1].field_769 % 128) + 160 len ceil32(stor3[arg1].field_1025 % 128)]
            if ceil32(stor3[arg1].field_1025 % 128) > stor3[arg1].field_1025 % 128:
                mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(stor3[arg1].field_1025 % 128) + stor3[arg1].field_1025 % 128 + 416] = 0
        else:
            if 31 >= uint255(stor3[arg1].field_1025):
                mem[ceil32(stor3[arg1].field_769 % 128) + 160] = 256 * Mask(248, 0, stor3[arg1].field_1032)
            else:
                mem[ceil32(stor3[arg1].field_769 % 128) + 160] = stor3[arg1][4].field_0
                idx = ceil32(stor3[arg1].field_769 % 128) + 160
                s = 0
                while ceil32(stor3[arg1].field_769 % 128) + uint255(stor3[arg1].field_1025) + 128 > idx:
                    mem[idx + 32] = stor3[arg1][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor3[arg1].field_769 % 128) > stor3[arg1].field_769 % 128:
                mem[ceil32(stor3[arg1].field_769 % 128) + ceil32(stor3[arg1].field_1025 % 128) + stor3[arg1].field_769 % 128 + 384] = 0
            mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(stor3[arg1].field_1025 % 128) + 384] = stor3[arg1].field_1025 % 128
            mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(stor3[arg1].field_1025 % 128) + 416 len ceil32(stor3[arg1].field_1025 % 128)] = mem[ceil32(stor3[arg1].field_769 % 128) + 160 len ceil32(stor3[arg1].field_1025 % 128)]
            if ceil32(stor3[arg1].field_1025 % 128) > stor3[arg1].field_1025 % 128:
                mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(stor3[arg1].field_1025 % 128) + stor3[arg1].field_1025 % 128 + 416] = 0
    else:
        if bool(stor3[arg1].field_1024) == stor3[arg1].field_1025 % 128 < 32:
            revert with 'NH{q', 34
        if not stor3[arg1].field_1025 % 128:
            if ceil32(stor3[arg1].field_769 % 128) > stor3[arg1].field_769 % 128:
                mem[ceil32(stor3[arg1].field_769 % 128) + ceil32(stor3[arg1].field_1025 % 128) + stor3[arg1].field_769 % 128 + 384] = 0
            mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(stor3[arg1].field_1025 % 128) + 384] = stor3[arg1].field_1025 % 128
            mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(stor3[arg1].field_1025 % 128) + 416 len ceil32(stor3[arg1].field_1025 % 128)] = mem[ceil32(stor3[arg1].field_769 % 128) + 160 len ceil32(stor3[arg1].field_1025 % 128)]
            if ceil32(stor3[arg1].field_1025 % 128) > stor3[arg1].field_1025 % 128:
                mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(stor3[arg1].field_1025 % 128) + stor3[arg1].field_1025 % 128 + 416] = 0
        else:
            if 31 >= stor3[arg1].field_1025 % 128:
                mem[ceil32(stor3[arg1].field_769 % 128) + 160] = 256 * Mask(248, 0, stor3[arg1].field_1032)
            else:
                mem[ceil32(stor3[arg1].field_769 % 128) + 160] = stor3[arg1][4].field_0
                idx = ceil32(stor3[arg1].field_769 % 128) + 160
                s = 0
                while ceil32(stor3[arg1].field_769 % 128) + stor3[arg1].field_1025 % 128 + 128 > idx:
                    mem[idx + 32] = stor3[arg1][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor3[arg1].field_769 % 128) > stor3[arg1].field_769 % 128:
                mem[ceil32(stor3[arg1].field_769 % 128) + ceil32(stor3[arg1].field_1025 % 128) + stor3[arg1].field_769 % 128 + 384] = 0
            mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(stor3[arg1].field_1025 % 128) + 384] = stor3[arg1].field_1025 % 128
            mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(stor3[arg1].field_1025 % 128) + 416 len ceil32(stor3[arg1].field_1025 % 128)] = mem[ceil32(stor3[arg1].field_769 % 128) + 160 len ceil32(stor3[arg1].field_1025 % 128)]
            if ceil32(stor3[arg1].field_1025 % 128) > stor3[arg1].field_1025 % 128:
                mem[(2 * ceil32(stor3[arg1].field_769 % 128)) + ceil32(stor3[arg1].field_1025 % 128) + stor3[arg1].field_1025 % 128 + 416] = 0
    return address(stor3[arg1].field_0), 
           stor3[arg1].field_256,
           stor3[arg1].field_512,
           Array(len=stor3[arg1].field_768 % 128, data=mem[128 len ceil32(stor3[arg1].field_769 % 128)], stor3[arg1].field_1024 % 128, mem[ceil32(stor3[arg1].field_769 % 128) + 160 len ceil32(stor3[arg1].field_1025 % 128)]),
           ceil32(stor3[arg1].field_769 % 128) + 224,
           bool(uint8(stor3[arg1].field_1280))
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
            if bool(stor1[idx].field_768):
                if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                    revert with 'NH{q', 34
                if bool(stor1[idx].field_768):
                    if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx].field_769):
                        stor1[idx].field_768 = 0
                        s = sha3(sha3(idx, 1) + 3)
                        while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if bool(stor1[idx].field_1024):
                            if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                revert with 'NH{q', 34
                            if bool(stor1[idx].field_1024):
                                if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 4
                                if not uint255(stor1[idx].field_1025):
                                    stor1[idx].field_1024 = 0
                                    s = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                                    mem[0] = sha3(idx, 1) + 4
                                    s = sha3(sha3(idx, 1) + 4)
                                    t = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 4
                                if not uint255(stor1[idx].field_1025):
                                    stor1[idx].field_1024 = 0
                                    s = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                                    mem[0] = sha3(idx, 1) + 4
                                    s = sha3(sha3(idx, 1) + 4)
                                    t = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                                    while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            if bool(stor1[idx].field_1024):
                                if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 4
                                if not stor1[idx].field_1025 % 128:
                                    stor1[idx].field_1024 = 0
                                    s = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                                    mem[0] = sha3(idx, 1) + 4
                                    s = sha3(sha3(idx, 1) + 4)
                                    t = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 4
                                if not stor1[idx].field_1025 % 128:
                                    stor1[idx].field_1024 = 0
                                    s = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                                    mem[0] = sha3(idx, 1) + 4
                                    s = sha3(sha3(idx, 1) + 4)
                                    t = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                                    while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
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
                        if bool(stor1[idx].field_1024):
                            if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                revert with 'NH{q', 34
                            if bool(stor1[idx].field_1024):
                                if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 4
                                if not uint255(stor1[idx].field_1025):
                                    stor1[idx].field_1024 = 0
                                    s = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    uint8(stor1[idx].field_1280) = uint8(bool(uint8(stor1[idx].field_1280)))
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                                stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(s, 1) + 4) + (uint255(stor1[s].field_1025) + 31 / 32)
                                while sha3(sha3(s, 1) + 4) + (uint255(stor1[s].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                uint8(stor1[s].field_1280) = uint8(bool(uint8(stor1[s].field_1280)))
                                if sha3(sha3(s, 1) + 4) + (uint255(stor1[s].field_1025) + 31 / 32) == -1:
                                    revert with 'NH{q', 17
                                s = sha3(sha3(s, 1) + 4) + (uint255(stor1[s].field_1025) + 31 / 32) + 1
                                continue 
                            if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not uint255(stor1[idx].field_1025):
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            if bool(stor1[idx].field_1024):
                                if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 4
                                if not stor1[idx].field_1025 % 128:
                                    stor1[idx].field_1024 = 0
                                    s = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                                    mem[0] = sha3(idx, 1) + 4
                                    s = sha3(sha3(idx, 1) + 4)
                                    t = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 4
                                if not stor1[idx].field_1025 % 128:
                                    stor1[idx].field_1024 = 0
                                    s = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                                    mem[0] = sha3(idx, 1) + 4
                                    s = sha3(sha3(idx, 1) + 4)
                                    t = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                                    while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                else:
                    if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx].field_769):
                        stor1[idx].field_768 = 0
                        s = sha3(sha3(idx, 1) + 3)
                        while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
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
                    if bool(stor1[idx].field_1024):
                        if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_1024):
                            if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not uint255(stor1[idx].field_1025):
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not uint255(stor1[idx].field_1025):
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_1024):
                            if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not stor1[idx].field_1025 % 128:
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not stor1[idx].field_1025 % 128:
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
            else:
                if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor1[idx].field_768):
                    if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx].field_769 % 128:
                        stor1[idx].field_768 = 0
                        s = sha3(sha3(idx, 1) + 3)
                        while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
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
                    if not stor1[idx].field_769 % 128:
                        stor1[idx].field_768 = 0
                        s = sha3(sha3(idx, 1) + 3)
                        while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
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
                if bool(stor1[idx].field_1024):
                    if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                        revert with 'NH{q', 34
                    if bool(stor1[idx].field_1024):
                        if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 4
                        if not uint255(stor1[idx].field_1025):
                            stor1[idx].field_1024 = 0
                            s = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                            mem[0] = sha3(idx, 1) + 4
                            s = sha3(sha3(idx, 1) + 4)
                            t = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                            while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 4
                        if not uint255(stor1[idx].field_1025):
                            stor1[idx].field_1024 = 0
                            s = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                            mem[0] = sha3(idx, 1) + 4
                            s = sha3(sha3(idx, 1) + 4)
                            t = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                        revert with 'NH{q', 34
                    if bool(stor1[idx].field_1024):
                        if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 4
                        if not stor1[idx].field_1025 % 128:
                            stor1[idx].field_1024 = 0
                            s = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                            mem[0] = sha3(idx, 1) + 4
                            s = sha3(sha3(idx, 1) + 4)
                            t = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                            while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 4
                        if not stor1[idx].field_1025 % 128:
                            stor1[idx].field_1024 = 0
                            s = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                            mem[0] = sha3(idx, 1) + 4
                            s = sha3(sha3(idx, 1) + 4)
                            t = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
        else:
            uint8(stor1[idx].field_1280) = 0
            mem[32] = 1
            address(stor1[idx].field_0) = address(stor1[idx].field_0)
            if bool(stor1[idx].field_768):
                if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                    revert with 'NH{q', 34
                if bool(stor1[idx].field_768):
                    if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx].field_769):
                        stor1[idx].field_768 = 0
                        s = sha3(sha3(idx, 1) + 3)
                        while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
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
                    if not uint255(stor1[idx].field_769):
                        stor1[idx].field_768 = 0
                        s = sha3(sha3(idx, 1) + 3)
                        while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor1[idx].field_768 = (2 * uint255(stor1[idx].field_769)) + 1
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
                if bool(stor1[idx].field_1024):
                    if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                        revert with 'NH{q', 34
                    if bool(stor1[idx].field_1024):
                        if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 4
                        if not uint255(stor1[idx].field_1025):
                            stor1[idx].field_1024 = 0
                            s = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                            mem[0] = sha3(idx, 1) + 4
                            s = sha3(sha3(idx, 1) + 4)
                            t = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                            while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 4
                        if not uint255(stor1[idx].field_1025):
                            stor1[idx].field_1024 = 0
                            s = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                            mem[0] = sha3(idx, 1) + 4
                            s = sha3(sha3(idx, 1) + 4)
                            t = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                        revert with 'NH{q', 34
                    if bool(stor1[idx].field_1024):
                        if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 4
                        if not stor1[idx].field_1025 % 128:
                            stor1[idx].field_1024 = 0
                            s = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                            mem[0] = sha3(idx, 1) + 4
                            s = sha3(sha3(idx, 1) + 4)
                            t = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                            while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 4
                        if not stor1[idx].field_1025 % 128:
                            stor1[idx].field_1024 = 0
                            s = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                            mem[0] = sha3(idx, 1) + 4
                            s = sha3(sha3(idx, 1) + 4)
                            t = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
            else:
                if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor1[idx].field_768):
                    if bool(stor1[idx].field_768) == uint255(stor1[idx].field_769) < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx].field_769 % 128:
                        stor1[idx].field_768 = 0
                        s = sha3(sha3(idx, 1) + 3)
                        while sha3(sha3(idx, 1) + 3) + (uint255(stor1[idx].field_769) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
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
                    if bool(stor1[idx].field_1024):
                        if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_1024):
                            if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not uint255(stor1[idx].field_1025):
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not uint255(stor1[idx].field_1025):
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_1024):
                            if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not stor1[idx].field_1025 % 128:
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not stor1[idx].field_1025 % 128:
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor1[idx].field_768) == stor1[idx].field_769 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx].field_769 % 128:
                        stor1[idx].field_768 = 0
                        s = sha3(sha3(idx, 1) + 3)
                        while sha3(sha3(idx, 1) + 3) + (stor1[idx].field_769 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if bool(stor1[idx].field_1024):
                            if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                revert with 'NH{q', 34
                            if bool(stor1[idx].field_1024):
                                if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 4
                                if not uint255(stor1[idx].field_1025):
                                    stor1[idx].field_1024 = 0
                                    s = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                                    mem[0] = sha3(idx, 1) + 4
                                    s = sha3(sha3(idx, 1) + 4)
                                    t = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(idx, 1) + 4
                                if not uint255(stor1[idx].field_1025):
                                    stor1[idx].field_1024 = 0
                                    s = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                                    mem[0] = sha3(idx, 1) + 4
                                    s = sha3(sha3(idx, 1) + 4)
                                    t = sha3(sha3(idx, 1) + 4)
                                    while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                        stor[s] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                                    while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            uint8(stor1[idx].field_1280) = uint8(bool(uint8(stor1[idx].field_1280)))
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_1024):
                            if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not stor1[idx].field_1025 % 128:
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            uint8(stor1[idx].field_1280) = uint8(bool(uint8(stor1[idx].field_1280)))
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(idx, 1) + 4
                        if not stor1[idx].field_1025 % 128:
                            stor1[idx].field_1024 = 0
                            s = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            uint8(stor1[idx].field_1280) = uint8(bool(uint8(stor1[idx].field_1280)))
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                        mem[0] = sha3(idx, 1) + 4
                        s = sha3(sha3(idx, 1) + 4)
                        t = sha3(sha3(idx, 1) + 4)
                        while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                            stor[s] = stor[t]
                            s = s + 1
                            t = t + 1
                            continue 
                        s = sha3(sha3(s, 1) + 4) + (stor1[s].field_1025 % 128 + 31 / 32)
                        while sha3(sha3(s, 1) + 4) + (stor1[s].field_1025 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        uint8(stor1[s].field_1280) = uint8(bool(uint8(stor1[s].field_1280)))
                        if sha3(sha3(s, 1) + 4) + (stor1[s].field_1025 % 128 + 31 / 32) == -1:
                            revert with 'NH{q', 17
                        s = sha3(sha3(s, 1) + 4) + (stor1[s].field_1025 % 128 + 31 / 32) + 1
                        continue 
                    stor1[idx].field_768 = (2 * stor1[idx].field_769 % 128) + 1
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
                    if bool(stor1[idx].field_1024):
                        if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_1024):
                            if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not uint255(stor1[idx].field_1025):
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not uint255(stor1[idx].field_1025):
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * uint255(stor1[idx].field_1025)) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                            revert with 'NH{q', 34
                        if bool(stor1[idx].field_1024):
                            if bool(stor1[idx].field_1024) == uint255(stor1[idx].field_1025) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not stor1[idx].field_1025 % 128:
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                                mem[0] = sha3(idx, 1) + 4
                                s = sha3(sha3(idx, 1) + 4)
                                t = sha3(sha3(idx, 1) + 4)
                                while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                    stor[s] = stor[t]
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                                while sha3(sha3(idx, 1) + 4) + (uint255(stor1[idx].field_1025) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_1024) == stor1[idx].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx, 1) + 4
                            if not stor1[idx].field_1025 % 128:
                                stor1[idx].field_1024 = 0
                                s = sha3(sha3(s, 1) + 4)
                                while sha3(sha3(s, 1) + 4) + (stor1[s].field_1025 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                uint8(stor1[s].field_1280) = uint8(bool(uint8(stor1[s].field_1280)))
                                if sha3(sha3(s, 1) + 4) + (stor1[s].field_1025 % 128 + 31 / 32) == -1:
                                    revert with 'NH{q', 17
                                s = sha3(sha3(s, 1) + 4) + (stor1[s].field_1025 % 128 + 31 / 32) + 1
                                continue 
                            stor1[idx].field_1024 = (2 * stor1[idx].field_1025 % 128) + 1
                            mem[0] = sha3(idx, 1) + 4
                            s = sha3(sha3(idx, 1) + 4)
                            t = sha3(sha3(idx, 1) + 4)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > t:
                                stor[s] = stor[t]
                                s = s + 1
                                t = t + 1
                                continue 
                            s = sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32)
                            while sha3(sha3(idx, 1) + 4) + (stor1[idx].field_1025 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
        uint8(stor1[idx].field_1280) = uint8(bool(uint8(stor1[idx].field_1280)))
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
            _496 = mem[64]
            mem[64] = mem[64] + 192
            mem[_496] = address(stor1[idx + arg1].field_0)
            mem[_496 + 32] = stor1[idx + arg1].field_256
            mem[_496 + 64] = stor1[idx + arg1].field_512
            if bool(stor1[idx + arg1].field_768):
                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                    revert with 'NH{q', 34
                _499 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                mem[_499] = uint255(stor1[idx + arg1].field_769)
                if bool(stor1[idx + arg1].field_768):
                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx + arg1].field_769):
                        mem[_496 + 96] = _499
                        if bool(stor1[idx + arg1].field_1024):
                            if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                revert with 'NH{q', 34
                            _515 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                            mem[_515] = uint255(stor1[idx + arg1].field_1025)
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_515 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_515 + 32] = stor1[idx + arg1][4].field_0
                                        s = _515 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _515 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_515 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_515 + 32] = stor1[idx + arg1][4].field_0
                                        s = _515 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _515 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_496 + 128] = _515
                        else:
                            if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            _516 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                            mem[_516] = stor1[idx + arg1].field_1025 % 128
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_516 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_516 + 32] = stor1[idx + arg1][4].field_0
                                        s = _516 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _516 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_516 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_516 + 32] = stor1[idx + arg1][4].field_0
                                        s = _516 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _516 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_496 + 128] = _516
                    else:
                        if 31 >= uint255(stor1[idx + arg1].field_769):
                            mem[_499 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                            mem[_496 + 96] = _499
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _519 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_519] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_519 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_519 + 32] = stor1[idx + arg1][4].field_0
                                            s = _519 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _519 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_519 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_519 + 32] = stor1[idx + arg1][4].field_0
                                            s = _519 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _519 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _519
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _525 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_525] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_525 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_525 + 32] = stor1[idx + arg1][4].field_0
                                            s = _525 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _525 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_525 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_525 + 32] = stor1[idx + arg1][4].field_0
                                            s = _525 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _525 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _525
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 3
                            mem[_499 + 32] = stor1[idx + arg1][3].field_0
                            s = _499 + 32
                            t = sha3(sha3(idx + arg1, 1) + 3)
                            while _499 + uint255(stor1[idx + arg1].field_769) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_496 + 96] = _499
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _1016 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_1016] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1016 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1016 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1016 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1016 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1016 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1016 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1016 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1016 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _1016
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1021 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_1021] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1021 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1021 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1021 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1021 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1021 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1021 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1021 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1021 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _1021
                else:
                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx + arg1].field_769 % 128:
                        mem[_496 + 96] = _499
                        if bool(stor1[idx + arg1].field_1024):
                            if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                revert with 'NH{q', 34
                            _517 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                            mem[_517] = uint255(stor1[idx + arg1].field_1025)
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_517 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_517 + 32] = stor1[idx + arg1][4].field_0
                                        s = _517 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _517 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_517 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_517 + 32] = stor1[idx + arg1][4].field_0
                                        s = _517 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _517 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_496 + 128] = _517
                        else:
                            if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            _520 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                            mem[_520] = stor1[idx + arg1].field_1025 % 128
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_520 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_520 + 32] = stor1[idx + arg1][4].field_0
                                        s = _520 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _520 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_520 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_520 + 32] = stor1[idx + arg1][4].field_0
                                        s = _520 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _520 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_496 + 128] = _520
                    else:
                        if 31 >= stor1[idx + arg1].field_769 % 128:
                            mem[_499 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                            mem[_496 + 96] = _499
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _526 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_526] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_526 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_526 + 32] = stor1[idx + arg1][4].field_0
                                            s = _526 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _526 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_526 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_526 + 32] = stor1[idx + arg1][4].field_0
                                            s = _526 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _526 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _526
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _532 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_532] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_532 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_532 + 32] = stor1[idx + arg1][4].field_0
                                            s = _532 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _532 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_532 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_532 + 32] = stor1[idx + arg1][4].field_0
                                            s = _532 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _532 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _532
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 3
                            mem[_499 + 32] = stor1[idx + arg1][3].field_0
                            s = _499 + 32
                            t = sha3(sha3(idx + arg1, 1) + 3)
                            while _499 + stor1[idx + arg1].field_769 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_496 + 96] = _499
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _1017 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_1017] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1017 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1017 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1017 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1017 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1017 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1017 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1017 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1017 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _1017
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1022 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_1022] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1022 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1022 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1022 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1022 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1022 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1022 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1022 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1022 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _1022
            else:
                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                    revert with 'NH{q', 34
                _500 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                mem[_500] = stor1[idx + arg1].field_769 % 128
                if bool(stor1[idx + arg1].field_768):
                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx + arg1].field_769):
                        mem[_496 + 96] = _500
                        if bool(stor1[idx + arg1].field_1024):
                            if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                revert with 'NH{q', 34
                            _518 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                            mem[_518] = uint255(stor1[idx + arg1].field_1025)
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_518 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_518 + 32] = stor1[idx + arg1][4].field_0
                                        s = _518 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _518 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_518 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_518 + 32] = stor1[idx + arg1][4].field_0
                                        s = _518 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _518 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_496 + 128] = _518
                        else:
                            if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            _521 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                            mem[_521] = stor1[idx + arg1].field_1025 % 128
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_521 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_521 + 32] = stor1[idx + arg1][4].field_0
                                        s = _521 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _521 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_521 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_521 + 32] = stor1[idx + arg1][4].field_0
                                        s = _521 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _521 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_496 + 128] = _521
                    else:
                        if 31 >= uint255(stor1[idx + arg1].field_769):
                            mem[_500 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                            mem[_496 + 96] = _500
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _527 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_527] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_527 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_527 + 32] = stor1[idx + arg1][4].field_0
                                            s = _527 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _527 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_527 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_527 + 32] = stor1[idx + arg1][4].field_0
                                            s = _527 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _527 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _527
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _533 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_533] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_533 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_533 + 32] = stor1[idx + arg1][4].field_0
                                            s = _533 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _533 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_533 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_533 + 32] = stor1[idx + arg1][4].field_0
                                            s = _533 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _533 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _533
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 3
                            mem[_500 + 32] = stor1[idx + arg1][3].field_0
                            s = _500 + 32
                            t = sha3(sha3(idx + arg1, 1) + 3)
                            while _500 + uint255(stor1[idx + arg1].field_769) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_496 + 96] = _500
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _1018 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_1018] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1018 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1018 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1018 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1018 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1018 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1018 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1018 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1018 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _1018
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1023 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_1023] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1023 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1023 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1023 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1023 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1023 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1023 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1023 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1023 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _1023
                else:
                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx + arg1].field_769 % 128:
                        mem[_496 + 96] = _500
                        if bool(stor1[idx + arg1].field_1024):
                            if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                revert with 'NH{q', 34
                            _522 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                            mem[_522] = uint255(stor1[idx + arg1].field_1025)
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_522 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_522 + 32] = stor1[idx + arg1][4].field_0
                                        s = _522 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _522 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_522 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_522 + 32] = stor1[idx + arg1][4].field_0
                                        s = _522 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _522 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_496 + 128] = _522
                        else:
                            if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            _528 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                            mem[_528] = stor1[idx + arg1].field_1025 % 128
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_528 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_528 + 32] = stor1[idx + arg1][4].field_0
                                        s = _528 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _528 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_528 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_528 + 32] = stor1[idx + arg1][4].field_0
                                        s = _528 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _528 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_496 + 128] = _528
                    else:
                        if 31 >= stor1[idx + arg1].field_769 % 128:
                            mem[_500 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                            mem[_496 + 96] = _500
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _534 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_534] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_534 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_534 + 32] = stor1[idx + arg1][4].field_0
                                            s = _534 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _534 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_534 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_534 + 32] = stor1[idx + arg1][4].field_0
                                            s = _534 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _534 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _534
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _541 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_541] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_541 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_541 + 32] = stor1[idx + arg1][4].field_0
                                            s = _541 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _541 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_541 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_541 + 32] = stor1[idx + arg1][4].field_0
                                            s = _541 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _541 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _541
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 3
                            mem[_500 + 32] = stor1[idx + arg1][3].field_0
                            s = _500 + 32
                            t = sha3(sha3(idx + arg1, 1) + 3)
                            while _500 + stor1[idx + arg1].field_769 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_496 + 96] = _500
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _1019 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_1019] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1019 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1019 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1019 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1019 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1019 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1019 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1019 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1019 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _1019
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1024 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_1024] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1024 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1024 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1024 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1024 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1024 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1024 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1024 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1024 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_496 + 128] = _1024
            mem[_496 + 160] = bool(uint8(stor1[idx + arg1].field_1280))
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _496
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _492 = mem[64]
        mem[mem[64]] = 32
        _493 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _493:
            mem[u] = t + -_492 - 64
            _981 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_981 + 32]
            mem[t + 64] = mem[_981 + 64]
            _1092 = mem[_981 + 96]
            mem[t + 96] = 192
            _1100 = mem[_1092]
            mem[t + 192] = mem[_1092]
            v = 0
            while v < _1100:
                mem[t + v + 224] = mem[_1092 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1100) <= _1100:
                _1366 = mem[_981 + 128]
                mem[t + 128] = ceil32(_1100) + 224
                _1368 = mem[_1366]
                mem[t + ceil32(_1100) + 224] = mem[_1366]
                v = 0
                while v < _1368:
                    mem[t + ceil32(_1100) + v + 256] = mem[_1366 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1368) > _1368:
                    mem[t + ceil32(_1100) + _1368 + 256] = 0
                mem[t + 160] = bool(mem[_981 + 160])
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1100) + ceil32(_1368) + 256
                u = u + 32
                continue 
            mem[t + _1100 + 224] = 0
            _1367 = mem[_981 + 128]
            mem[t + 128] = ceil32(_1100) + 224
            _1371 = mem[_1367]
            mem[t + ceil32(_1100) + 224] = mem[_1367]
            v = 0
            while v < _1371:
                mem[t + ceil32(_1100) + v + 256] = mem[_1367 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1371) > _1371:
                mem[t + ceil32(_1100) + _1371 + 256] = 0
            mem[t + 160] = bool(mem[_981 + 160])
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1100) + ceil32(_1371) + 256
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg2) + 320
        mem[(32 * arg2) + 128] = 0
        mem[(32 * arg2) + 160] = 0
        mem[(32 * arg2) + 192] = 0
        mem[(32 * arg2) + 224] = 96
        mem[(32 * arg2) + 256] = 96
        mem[(32 * arg2) + 288] = 0
        mem[var25001] = (32 * arg2) + 128
        s = var25001
        idx = var25002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[(32 * arg2) + 128] = 0
            mem[(32 * arg2) + 160] = 0
            mem[(32 * arg2) + 192] = 0
            mem[(32 * arg2) + 224] = 96
            mem[(32 * arg2) + 256] = 96
            mem[(32 * arg2) + 288] = 0
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
            _1370 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1370] = address(stor1[idx + arg1].field_0)
            mem[_1370 + 32] = stor1[idx + arg1].field_256
            mem[_1370 + 64] = stor1[idx + arg1].field_512
            if bool(stor1[idx + arg1].field_768):
                if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                    revert with 'NH{q', 34
                _1373 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_769)) + 32
                mem[_1373] = uint255(stor1[idx + arg1].field_769)
                if bool(stor1[idx + arg1].field_768):
                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx + arg1].field_769):
                        mem[_1370 + 96] = _1373
                        if bool(stor1[idx + arg1].field_1024):
                            if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                revert with 'NH{q', 34
                            _1388 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                            mem[_1388] = uint255(stor1[idx + arg1].field_1025)
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_1388 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1388 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1388 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1388 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_1388 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1388 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1388 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1388 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1370 + 128] = _1388
                        else:
                            if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            _1389 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                            mem[_1389] = stor1[idx + arg1].field_1025 % 128
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_1389 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1389 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1389 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1389 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_1389 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1389 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1389 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1389 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1370 + 128] = _1389
                    else:
                        if 31 >= uint255(stor1[idx + arg1].field_769):
                            mem[_1373 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                            mem[_1370 + 96] = _1373
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _1392 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_1392] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1392 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1392 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1392 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1392 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1392 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1392 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1392 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1392 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1392
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1397 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_1397] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1397 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1397 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1397 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1397 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1397 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1397 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1397 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1397 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1397
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 3
                            mem[_1373 + 32] = stor1[idx + arg1][3].field_0
                            s = _1373 + 32
                            t = sha3(sha3(idx + arg1, 1) + 3)
                            while _1373 + uint255(stor1[idx + arg1].field_769) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1370 + 96] = _1373
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _1657 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_1657] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1657 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1657 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1657 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1657 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1657 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1657 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1657 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1657 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1657
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1663 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_1663] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1663 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1663 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1663 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1663 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1663 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1663 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1663 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1663 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1663
                else:
                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx + arg1].field_769 % 128:
                        mem[_1370 + 96] = _1373
                        if bool(stor1[idx + arg1].field_1024):
                            if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                revert with 'NH{q', 34
                            _1390 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                            mem[_1390] = uint255(stor1[idx + arg1].field_1025)
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_1390 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1390 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1390 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1390 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_1390 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1390 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1390 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1390 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1370 + 128] = _1390
                        else:
                            if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            _1393 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                            mem[_1393] = stor1[idx + arg1].field_1025 % 128
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_1393 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1393 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1393 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1393 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_1393 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1393 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1393 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1393 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1370 + 128] = _1393
                    else:
                        if 31 >= stor1[idx + arg1].field_769 % 128:
                            mem[_1373 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                            mem[_1370 + 96] = _1373
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _1398 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_1398] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1398 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1398 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1398 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1398 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1398 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1398 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1398 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1398 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1398
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1402 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_1402] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1402 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1402 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1402 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1402 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1402 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1402 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1402 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1402 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1402
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 3
                            mem[_1373 + 32] = stor1[idx + arg1][3].field_0
                            s = _1373 + 32
                            t = sha3(sha3(idx + arg1, 1) + 3)
                            while _1373 + stor1[idx + arg1].field_769 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1370 + 96] = _1373
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _1658 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_1658] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1658 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1658 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1658 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1658 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1658 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1658 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1658 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1658 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1658
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1664 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_1664] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1664 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1664 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1664 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1664 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1664 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1664 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1664 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1664 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1664
            else:
                if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                    revert with 'NH{q', 34
                _1374 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_769 % 128) + 32
                mem[_1374] = stor1[idx + arg1].field_769 % 128
                if bool(stor1[idx + arg1].field_768):
                    if bool(stor1[idx + arg1].field_768) == uint255(stor1[idx + arg1].field_769) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor1[idx + arg1].field_769):
                        mem[_1370 + 96] = _1374
                        if bool(stor1[idx + arg1].field_1024):
                            if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                revert with 'NH{q', 34
                            _1391 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                            mem[_1391] = uint255(stor1[idx + arg1].field_1025)
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_1391 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1391 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1391 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1391 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_1391 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1391 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1391 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1391 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1370 + 128] = _1391
                        else:
                            if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            _1394 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                            mem[_1394] = stor1[idx + arg1].field_1025 % 128
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_1394 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1394 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1394 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1394 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_1394 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1394 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1394 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1394 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1370 + 128] = _1394
                    else:
                        if 31 >= uint255(stor1[idx + arg1].field_769):
                            mem[_1374 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                            mem[_1370 + 96] = _1374
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _1399 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_1399] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1399 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1399 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1399 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1399 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1399 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1399 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1399 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1399 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1399
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1403 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_1403] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1403 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1403 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1403 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1403 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1403 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1403 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1403 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1403 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1403
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 3
                            mem[_1374 + 32] = stor1[idx + arg1][3].field_0
                            s = _1374 + 32
                            t = sha3(sha3(idx + arg1, 1) + 3)
                            while _1374 + uint255(stor1[idx + arg1].field_769) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1370 + 96] = _1374
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _1659 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_1659] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1659 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1659 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1659 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1659 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1659 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1659 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1659 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1659 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1659
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1665 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_1665] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1665 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1665 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1665 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1665 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1665 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1665 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1665 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1665 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1665
                else:
                    if bool(stor1[idx + arg1].field_768) == stor1[idx + arg1].field_769 % 128 < 32:
                        revert with 'NH{q', 34
                    if not stor1[idx + arg1].field_769 % 128:
                        mem[_1370 + 96] = _1374
                        if bool(stor1[idx + arg1].field_1024):
                            if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                revert with 'NH{q', 34
                            _1395 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                            mem[_1395] = uint255(stor1[idx + arg1].field_1025)
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_1395 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1395 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1395 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1395 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_1395 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1395 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1395 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1395 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1370 + 128] = _1395
                        else:
                            if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                revert with 'NH{q', 34
                            _1400 = mem[64]
                            mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                            mem[_1400] = stor1[idx + arg1].field_1025 % 128
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                if uint255(stor1[idx + arg1].field_1025):
                                    if 31 >= uint255(stor1[idx + arg1].field_1025):
                                        mem[_1400 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1400 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1400 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1400 + uint255(stor1[idx + arg1].field_1025) > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                if stor1[idx + arg1].field_1025 % 128:
                                    if 31 >= stor1[idx + arg1].field_1025 % 128:
                                        mem[_1400 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                    else:
                                        mem[0] = sha3(idx + arg1, 1) + 4
                                        mem[_1400 + 32] = stor1[idx + arg1][4].field_0
                                        s = _1400 + 32
                                        t = sha3(sha3(idx + arg1, 1) + 4)
                                        while _1400 + stor1[idx + arg1].field_1025 % 128 > s:
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                            mem[_1370 + 128] = _1400
                    else:
                        if 31 >= stor1[idx + arg1].field_769 % 128:
                            mem[_1374 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_776)
                            mem[_1370 + 96] = _1374
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _1404 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_1404] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1404 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1404 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1404 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1404 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1404 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1404 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1404 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1404 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1404
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1409 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_1409] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1409 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1409 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1409 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1409 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1409 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1409 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1409 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1409 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1409
                        else:
                            mem[0] = sha3(idx + arg1, 1) + 3
                            mem[_1374 + 32] = stor1[idx + arg1][3].field_0
                            s = _1374 + 32
                            t = sha3(sha3(idx + arg1, 1) + 3)
                            while _1374 + stor1[idx + arg1].field_769 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1370 + 96] = _1374
                            if bool(stor1[idx + arg1].field_1024):
                                if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                    revert with 'NH{q', 34
                                _1660 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor1[idx + arg1].field_1025)) + 32
                                mem[_1660] = uint255(stor1[idx + arg1].field_1025)
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1660 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1660 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1660 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1660 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1660 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1660 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1660 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1660 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1660
                            else:
                                if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                    revert with 'NH{q', 34
                                _1666 = mem[64]
                                mem[64] = mem[64] + ceil32(stor1[idx + arg1].field_1025 % 128) + 32
                                mem[_1666] = stor1[idx + arg1].field_1025 % 128
                                if bool(stor1[idx + arg1].field_1024):
                                    if bool(stor1[idx + arg1].field_1024) == uint255(stor1[idx + arg1].field_1025) < 32:
                                        revert with 'NH{q', 34
                                    if uint255(stor1[idx + arg1].field_1025):
                                        if 31 >= uint255(stor1[idx + arg1].field_1025):
                                            mem[_1666 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1666 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1666 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1666 + uint255(stor1[idx + arg1].field_1025) > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                else:
                                    if bool(stor1[idx + arg1].field_1024) == stor1[idx + arg1].field_1025 % 128 < 32:
                                        revert with 'NH{q', 34
                                    if stor1[idx + arg1].field_1025 % 128:
                                        if 31 >= stor1[idx + arg1].field_1025 % 128:
                                            mem[_1666 + 32] = 256 * Mask(248, 0, stor1[idx + arg1].field_1032)
                                        else:
                                            mem[0] = sha3(idx + arg1, 1) + 4
                                            mem[_1666 + 32] = stor1[idx + arg1][4].field_0
                                            s = _1666 + 32
                                            t = sha3(sha3(idx + arg1, 1) + 4)
                                            while _1666 + stor1[idx + arg1].field_1025 % 128 > s:
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                mem[_1370 + 128] = _1666
            mem[_1370 + 160] = bool(uint8(stor1[idx + arg1].field_1280))
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _1370
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1364 = mem[64]
        mem[mem[64]] = 32
        _1365 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1365:
            mem[u] = t + -_1364 - 64
            _1620 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1620 + 32]
            mem[t + 64] = mem[_1620 + 64]
            _1729 = mem[_1620 + 96]
            mem[t + 96] = 192
            _1734 = mem[_1729]
            mem[t + 192] = mem[_1729]
            v = 0
            while v < _1734:
                mem[t + v + 224] = mem[_1729 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1734) <= _1734:
                _1763 = mem[_1620 + 128]
                mem[t + 128] = ceil32(_1734) + 224
                _1765 = mem[_1763]
                mem[t + ceil32(_1734) + 224] = mem[_1763]
                v = 0
                while v < _1765:
                    mem[t + ceil32(_1734) + v + 256] = mem[_1763 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1765) > _1765:
                    mem[t + ceil32(_1734) + _1765 + 256] = 0
                mem[t + 160] = bool(mem[_1620 + 160])
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1734) + ceil32(_1765) + 256
                u = u + 32
                continue 
            mem[t + _1734 + 224] = 0
            _1764 = mem[_1620 + 128]
            mem[t + 128] = ceil32(_1734) + 224
            _1766 = mem[_1764]
            mem[t + ceil32(_1734) + 224] = mem[_1764]
            v = 0
            while v < _1766:
                mem[t + ceil32(_1734) + v + 256] = mem[_1764 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1766) > _1766:
                mem[t + ceil32(_1734) + _1766 + 256] = 0
            mem[t + 160] = bool(mem[_1620 + 160])
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1734) + ceil32(_1766) + 256
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
