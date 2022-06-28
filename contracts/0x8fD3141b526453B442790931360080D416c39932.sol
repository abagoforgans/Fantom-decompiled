contract main {




// =====================  Runtime code  =====================


const sub_4b8c1698(?) = ' '


address stor0;
array of uint256 stor3;
array of struct stor5;
uint256 stor6;

function _fallback() payable {
    revert
}

function heal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
}

function attack(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x6c6eb9d100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor0)
    staticcall stor0.base(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[96 len 4], Mask(224, 32, arg1) >> 32 >= 160
    if not bool(ceil32(return_data.size) + 256 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + 256
    _6 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 127 < return_data.size + 96
    _7 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96])) + 257 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96])) + 161 < 160:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96])) + 257
    mem[ceil32(return_data.size) + 256] = _7
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288 len ceil32(_7)] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + _6 + 128 len ceil32(_7)]
    if ceil32(_7) > _7:
        mem[ceil32(return_data.size) + _7 + 288] = 0
    mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 256
    require mem[_4 + 128] == mem[_4 + 128]
    mem[ceil32(return_data.size) + 128] = mem[_4 + 128]
    require mem[_4 + 160] == mem[_4 + 160]
    mem[ceil32(return_data.size) + 160] = mem[_4 + 160]
    require mem[_4 + 192] == mem[_4 + 192]
    mem[ceil32(return_data.size) + 192] = mem[_4 + 192]
    require mem[_4 + 224] == mem[_4 + 224]
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] != mem[ceil32(return_data.size) + 192]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor6 >= stor5.length:
            revert with 'NH{q', 50
        if stor6 >= stor5.length:
            revert with 'NH{q', 50
        if 333 > uint256(stor5[stor6].field_0):
            uint256(stor5[stor6].field_0) = 0
        else:
            if uint256(stor5[stor6].field_0) < 333:
                revert with 'NH{q', 17
            uint256(stor5[stor6].field_0) -= 333
            if stor6 >= stor5.length:
                revert with 'NH{q', 50
        if not uint256(stor5[stor6].field_0):
            if stor6 > -2:
                revert with 'NH{q', 17
            if stor5.length > stor6 + 1:
                if stor6 > -2:
                    revert with 'NH{q', 17
                stor6++
    revert with 0, 'Wrong class'
}

function sub_85c09a79(?) payable {
    if stor6 >= stor5.length:
        revert with 'NH{q', 50
    if bool(stor5[stor6].field_256):
        if bool(stor5[stor6].field_256) == uint255(stor5[stor6].field_257) < 32:
            revert with 'NH{q', 34
        if bool(stor5[stor6].field_256):
            if bool(stor5[stor6].field_256) == uint255(stor5[stor6].field_257) < 32:
                revert with 'NH{q', 34
            if uint255(stor5[stor6].field_257):
                if 31 >= uint255(stor5[stor6].field_257):
                    mem[256] = 256 * Mask(248, 0, stor5[stor6].field_264)
                else:
                    mem[256] = uint256(stor[sha3((2 * stor6) + ('name', 'stor5', 5) + 1)].field_0)
                    idx = 256
                    s = 0
                    while uint255(stor5[stor6].field_257) + 224 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((2 * stor6) + ('name', 'stor5', 5) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor5[stor6].field_256) == stor5[stor6].field_257 % 128 < 32:
                revert with 'NH{q', 34
            if stor5[stor6].field_257 % 128:
                if 31 >= stor5[stor6].field_257 % 128:
                    mem[256] = 256 * Mask(248, 0, stor5[stor6].field_264)
                else:
                    mem[256] = uint256(stor[sha3((2 * stor6) + ('name', 'stor5', 5) + 1)].field_0)
                    idx = 256
                    s = 0
                    while stor5[stor6].field_257 % 128 + 224 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((2 * stor6) + ('name', 'stor5', 5) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, uint256(stor5[stor6].field_0), 
               64,
               2 * Mask(256, -1, uint255(stor5[stor6].field_257)),
               mem[256 len ceil32(uint255(stor5[stor6].field_257))]
    if bool(stor5[stor6].field_256) == stor5[stor6].field_257 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor5[stor6].field_256):
        if bool(stor5[stor6].field_256) == uint255(stor5[stor6].field_257) < 32:
            revert with 'NH{q', 34
        if uint255(stor5[stor6].field_257):
            if 31 >= uint255(stor5[stor6].field_257):
                mem[256] = 256 * Mask(248, 0, stor5[stor6].field_264)
            else:
                mem[256] = uint256(stor[sha3((2 * stor6) + ('name', 'stor5', 5) + 1)].field_0)
                idx = 256
                s = 0
                while uint255(stor5[stor6].field_257) + 224 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((2 * stor6) + ('name', 'stor5', 5) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor5[stor6].field_256) == stor5[stor6].field_257 % 128 < 32:
            revert with 'NH{q', 34
        if stor5[stor6].field_257 % 128:
            if 31 >= stor5[stor6].field_257 % 128:
                mem[256] = 256 * Mask(248, 0, stor5[stor6].field_264)
            else:
                mem[256] = uint256(stor[sha3((2 * stor6) + ('name', 'stor5', 5) + 1)].field_0)
                idx = 256
                s = 0
                while stor5[stor6].field_257 % 128 + 224 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((2 * stor6) + ('name', 'stor5', 5) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, uint256(stor5[stor6].field_0), 64, stor5[stor6].field_256 % 128, mem[256 len ceil32(stor5[stor6].field_257 % 128)]
}

function reset() payable {
    stor6 = 0
    stor5.length = 0
    mem[0] = 5
    idx = 0
    while sha3(5) + (2 * stor5.length) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])].field_0) = 0
        if bool(stor[idx + sha3(mem[0]) + 1].field_0):
            if bool(stor[idx + sha3(mem[0]) + 1].field_0) == uint255(stor[idx + sha3(mem[0]) + 1].field_1) < 32:
                revert with 'NH{q', 34
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            if 31 < uint255(stor[idx + sha3(mem[0]) + 1].field_1):
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (uint255(stor[idx + sha3(mem[0]) + 1].field_1) + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
        else:
            if bool(stor[idx + sha3(mem[0]) + 1].field_0) == stor[idx + sha3(mem[0]) + 1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].field_1 % 128:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].field_1 % 128 + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
        idx = idx + 2
        continue 
    stor5.length++
    uint256(stor5[stor5.length].field_0) = 1000
    if bool(stor5[stor5.length].field_256):
        if bool(stor5[stor5.length].field_256) == uint255(stor5[stor5.length].field_257) < 32:
            revert with 'NH{q', 34
        bool(stor5[stor5.length].field_256) = 0
        uint255(stor5[stor5.length].field_257) = 5
        Mask(248, 0, stor5[stor5.length].field_264) = 'Hoard' / 256
        idx = 0
        while uint255(stor5[stor5.length].field_257) + 31 / 32 > idx:
            uint256(stor[idx + sha3((2 * stor5.length) + ('name', 'stor5', 5) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor5[stor5.length].field_256) == stor5[stor5.length].field_257 % 128 < 32:
            revert with 'NH{q', 34
        bool(stor5[stor5.length].field_256) = 0
        uint255(stor5[stor5.length].field_257) = 5
        Mask(248, 0, stor5[stor5.length].field_264) = 'Hoard' / 256
        idx = 0
        while stor5[stor5.length].field_257 % 128 + 31 / 32 > idx:
            uint256(stor[idx + sha3((2 * stor5.length) + ('name', 'stor5', 5) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    stor5.length++
    uint256(stor5[stor5.length].field_0) = 300
    if bool(stor5[stor5.length].field_256):
        if bool(stor5[stor5.length].field_256) == uint255(stor5[stor5.length].field_257) < 32:
            revert with 'NH{q', 34
        bool(stor5[stor5.length].field_256) = 0
        uint255(stor5[stor5.length].field_257) = 7
        Mask(248, 0, stor5[stor5.length].field_264) = 'Warrior' / 256
        idx = 0
        while uint255(stor5[stor5.length].field_257) + 31 / 32 > idx:
            uint256(stor[idx + sha3((2 * stor5.length) + ('name', 'stor5', 5) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor5[stor5.length].field_256) == stor5[stor5.length].field_257 % 128 < 32:
            revert with 'NH{q', 34
        bool(stor5[stor5.length].field_256) = 0
        uint255(stor5[stor5.length].field_257) = 7
        Mask(248, 0, stor5[stor5.length].field_264) = 'Warrior' / 256
        idx = 0
        while stor5[stor5.length].field_257 % 128 + 31 / 32 > idx:
            uint256(stor[idx + sha3((2 * stor5.length) + ('name', 'stor5', 5) + 1)].field_0) = 0
            idx = idx + 1
            continue 
}



}
