contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
mapping of struct stor3;
address stor4;

function _fallback() payable {
    revert
}

function sub_cdf93397(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = address(arg1)
}

function getHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(stor4)
    staticcall stor4.tokenExists(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token Doesn't Exists'
    if bool(stor3[arg1].field_0):
        if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor3[arg1].field_0):
            if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor3[arg1].field_1):
                if 31 < uint255(stor3[arg1].field_1):
                    mem[ceil32(return_data.size) + 128] = stor3[arg1].field_0
                    idx = ceil32(return_data.size) + 128
                    s = 0
                    while ceil32(return_data.size) + uint255(stor3[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor3[arg1].field_1)), data=mem[ceil32(return_data.size) + 128 len ceil32(uint255(stor3[arg1].field_1))]), 
                mem[ceil32(return_data.size) + 128] = 256 * Mask(248, 0, stor3[arg1].field_8)
        else:
            if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1 % 128:
                if 31 < stor3[arg1].field_1 % 128:
                    mem[ceil32(return_data.size) + 128] = stor3[arg1].field_0
                    idx = ceil32(return_data.size) + 128
                    s = 0
                    while ceil32(return_data.size) + stor3[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor3[arg1].field_1)), data=mem[ceil32(return_data.size) + 128 len ceil32(uint255(stor3[arg1].field_1))]), 
                mem[ceil32(return_data.size) + 128] = 256 * Mask(248, 0, stor3[arg1].field_8)
        mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + 192 len ceil32(uint255(stor3[arg1].field_1))] = mem[ceil32(return_data.size) + 128 len ceil32(uint255(stor3[arg1].field_1))]
        if ceil32(uint255(stor3[arg1].field_1)) > uint255(stor3[arg1].field_1):
            mem[ceil32(return_data.size) + ceil32(uint255(stor3[arg1].field_1)) + uint255(stor3[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor3[arg1].field_1)), data=mem[ceil32(return_data.size) + 128 len ceil32(uint255(stor3[arg1].field_1))], mem[ceil32(return_data.size) + (2 * ceil32(uint255(stor3[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor3[arg1].field_1))]), 
    if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor3[arg1].field_0):
        if bool(stor3[arg1].field_0) == uint255(stor3[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor3[arg1].field_1):
            if 31 < uint255(stor3[arg1].field_1):
                mem[ceil32(return_data.size) + 128] = stor3[arg1].field_0
                idx = ceil32(return_data.size) + 128
                s = 0
                while ceil32(return_data.size) + uint255(stor3[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[arg1].field_0 % 128, data=mem[ceil32(return_data.size) + 128 len ceil32(stor3[arg1].field_1 % 128)])
            mem[ceil32(return_data.size) + 128] = 256 * Mask(248, 0, stor3[arg1].field_8)
    else:
        if bool(stor3[arg1].field_0) == stor3[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_1 % 128:
            if 31 < stor3[arg1].field_1 % 128:
                mem[ceil32(return_data.size) + 128] = stor3[arg1].field_0
                idx = ceil32(return_data.size) + 128
                s = 0
                while ceil32(return_data.size) + stor3[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[arg1].field_0 % 128, data=mem[ceil32(return_data.size) + 128 len ceil32(stor3[arg1].field_1 % 128)])
            mem[ceil32(return_data.size) + 128] = 256 * Mask(248, 0, stor3[arg1].field_8)
    mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + 192 len ceil32(stor3[arg1].field_1 % 128)] = mem[ceil32(return_data.size) + 128 len ceil32(stor3[arg1].field_1 % 128)]
    if ceil32(stor3[arg1].field_1 % 128) > stor3[arg1].field_1 % 128:
        mem[ceil32(return_data.size) + ceil32(stor3[arg1].field_1 % 128) + stor3[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor3[arg1].field_0 % 128, data=mem[ceil32(return_data.size) + 128 len ceil32(stor3[arg1].field_1 % 128)], mem[ceil32(return_data.size) + (2 * ceil32(stor3[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor3[arg1].field_1 % 128)]), 
}

function sub_08129e0b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _34 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_34] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_34 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_34 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _34
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 == msg.sender:
        idx = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if stor2 == -1:
                revert with 'NH{q', 17
            stor2++
            mem[0] = stor2
            mem[32] = 3
            _59 = mem[mem[(32 * idx) + 128]]
            if bool(stor3[stor2].field_0):
                if bool(stor3[stor2].field_0) == uint255(stor3[stor2].field_1) < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(stor2, 3)
                if not _59:
                    stor3[stor2].field_0 = 0
                    s = sha3(sha3(stor2, 3))
                    while sha3(sha3(stor2, 3)) + (uint255(stor3[stor2].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor3[stor2].field_0 = (2 * _59) + 1
                    s = sha3(sha3(stor2, 3))
                    t = mem[(32 * idx) + 128] + 32
                    while mem[(32 * idx) + 128] + _59 + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(stor2, 3)) + (Mask(251, 0, _59 + 31) >> 5)
                    while sha3(sha3(stor2, 3)) + (uint255(stor3[stor2].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor3[stor2].field_0) == stor3[stor2].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(stor2, 3)
                if not _59:
                    stor3[stor2].field_0 = 0
                    s = sha3(sha3(stor2, 3))
                    while sha3(sha3(stor2, 3)) + (stor3[stor2].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor3[stor2].field_0 = (2 * _59) + 1
                    s = sha3(sha3(stor2, 3))
                    t = mem[(32 * idx) + 128] + 32
                    while mem[(32 * idx) + 128] + _59 + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(stor2, 3)) + (Mask(251, 0, _59 + 31) >> 5)
                    while sha3(sha3(stor2, 3)) + (stor3[stor2].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if stor2 == -1:
                revert with 'NH{q', 17
            stor2++
            mem[0] = stor2
            mem[32] = 3
            _61 = mem[mem[(32 * idx) + 128]]
            if bool(stor3[stor2].field_0):
                if bool(stor3[stor2].field_0) == uint255(stor3[stor2].field_1) < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(stor2, 3)
                if not _61:
                    stor3[stor2].field_0 = 0
                    s = sha3(sha3(stor2, 3))
                    while sha3(sha3(stor2, 3)) + (uint255(stor3[stor2].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor3[stor2].field_0 = (2 * _61) + 1
                    s = sha3(sha3(stor2, 3))
                    t = mem[(32 * idx) + 128] + 32
                    while mem[(32 * idx) + 128] + _61 + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(stor2, 3)) + (Mask(251, 0, _61 + 31) >> 5)
                    while sha3(sha3(stor2, 3)) + (uint255(stor3[stor2].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor3[stor2].field_0) == stor3[stor2].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(stor2, 3)
                if not _61:
                    stor3[stor2].field_0 = 0
                    s = sha3(sha3(stor2, 3))
                    while sha3(sha3(stor2, 3)) + (stor3[stor2].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor3[stor2].field_0 = (2 * _61) + 1
                    s = sha3(sha3(stor2, 3))
                    t = mem[(32 * idx) + 128] + 32
                    while mem[(32 * idx) + 128] + _61 + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(stor2, 3)) + (Mask(251, 0, _61 + 31) >> 5)
                    while sha3(sha3(stor2, 3)) + (stor3[stor2].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
