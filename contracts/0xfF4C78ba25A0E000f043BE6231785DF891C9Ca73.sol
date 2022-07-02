contract main {




// =====================  Runtime code  =====================


#
#  - mappingIdCut(uint8 arg1, string arg2, string[] arg3)
#  - mappingIds()
#
function _fallback() payable {
    revert
}

function getId(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0x7715ba0461f1e092a1fd9c79b169e1751745950a77827f75c19c511a5645792e
    if ceil32(arg1.length) > arg1.length:
        _145 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5 < 32:
                revert with 'NH{q', 34
            mem[64] = ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5) + 129
            mem[ceil32(ceil32(arg1.length)) + 97] = uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5
            if bool(stor[_145].field_0):
                if bool(stor[_145].field_0) == uint255(uint256(stor[_145].field_0)) * 0.5 < 32:
                    revert with 'NH{q', 34
                if not Mask(256, -1, uint256(stor[_145].field_0)):
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(uint256(stor[_145].field_0)) * 0.5
                    mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]
                    if ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) > uint255(uint256(stor[_145].field_0)) * 0.5:
                        mem[(uint255(uint256(stor[_145].field_0)) * 0.5) + mem[64] + 64] = 0
                else:
                    if 31 >= uint255(uint256(stor[_145].field_0)) * 0.5:
                        mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_145].field_8)
                    else:
                        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_145)].field_0)
                        idx = ceil32(ceil32(arg1.length)) + 129
                        s = 0
                        while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor[_145].field_0)) * 0.5) + 97 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_145) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(uint256(stor[_145].field_0)) * 0.5
                    mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]
                    if ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) > uint255(uint256(stor[_145].field_0)) * 0.5:
                        mem[(uint255(uint256(stor[_145].field_0)) * 0.5) + mem[64] + 64] = 0
            else:
                if bool(stor[_145].field_0) == stor[_145].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor[_145].field_1 % 128:
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(uint256(stor[_145].field_0)) * 0.5
                    mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]
                    if ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) > uint255(uint256(stor[_145].field_0)) * 0.5:
                        mem[(uint255(uint256(stor[_145].field_0)) * 0.5) + mem[64] + 64] = 0
                else:
                    if 31 >= stor[_145].field_1 % 128:
                        mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_145].field_8)
                    else:
                        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_145)].field_0)
                        idx = ceil32(ceil32(arg1.length)) + 129
                        s = 0
                        while ceil32(ceil32(arg1.length)) + stor[_145].field_1 % 128 + 97 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_145) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(uint256(stor[_145].field_0)) * 0.5
                    mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]
                    if ceil32(uint255(uint256(stor[_145].field_0)) * 0.5) > uint255(uint256(stor[_145].field_0)) * 0.5:
                        mem[(uint255(uint256(stor[_145].field_0)) * 0.5) + mem[64] + 64] = 0
            return Array(len=2 * Mask(256, -1, uint256(stor[_145].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_145].field_0)) * 0.5)]), 
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128) + 129
        mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128
        if bool(stor[_145].field_0):
            if bool(stor[_145].field_0) == uint255(uint256(stor[_145].field_0)) * 0.5 < 32:
                revert with 'NH{q', 34
            if not Mask(256, -1, uint256(stor[_145].field_0)):
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_145].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
                if ceil32(stor[_145].field_1 % 128) > stor[_145].field_1 % 128:
                    mem[stor[_145].field_1 % 128 + mem[64] + 64] = 0
            else:
                if 31 >= uint255(uint256(stor[_145].field_0)) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_145].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_145)].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor[_145].field_0)) * 0.5) + 97 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_145) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_145].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
                if ceil32(stor[_145].field_1 % 128) > stor[_145].field_1 % 128:
                    mem[stor[_145].field_1 % 128 + mem[64] + 64] = 0
        else:
            if bool(stor[_145].field_0) == stor[_145].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor[_145].field_1 % 128:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_145].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
                if ceil32(stor[_145].field_1 % 128) > stor[_145].field_1 % 128:
                    mem[stor[_145].field_1 % 128 + mem[64] + 64] = 0
            else:
                if 31 >= stor[_145].field_1 % 128:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_145].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_145)].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor[_145].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_145) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_145].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
                if ceil32(stor[_145].field_1 % 128) > stor[_145].field_1 % 128:
                    mem[stor[_145].field_1 % 128 + mem[64] + 64] = 0
        return Array(len=stor[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)])
    _143 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    if not bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128) + 129
        mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128
        if bool(stor[_143].field_0):
            if bool(stor[_143].field_0) == uint255(uint256(stor[_143].field_0)) * 0.5 < 32:
                revert with 'NH{q', 34
            if not Mask(256, -1, uint256(stor[_143].field_0)):
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_143].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
                if ceil32(stor[_143].field_1 % 128) > stor[_143].field_1 % 128:
                    mem[stor[_143].field_1 % 128 + mem[64] + 64] = 0
            else:
                if 31 >= uint255(uint256(stor[_143].field_0)) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_143].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_143)].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor[_143].field_0)) * 0.5) + 97 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_143) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_143].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
                if ceil32(stor[_143].field_1 % 128) > stor[_143].field_1 % 128:
                    mem[stor[_143].field_1 % 128 + mem[64] + 64] = 0
        else:
            if bool(stor[_143].field_0) == stor[_143].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor[_143].field_1 % 128:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_143].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
                if ceil32(stor[_143].field_1 % 128) > stor[_143].field_1 % 128:
                    mem[stor[_143].field_1 % 128 + mem[64] + 64] = 0
            else:
                if 31 >= stor[_143].field_1 % 128:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_143].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_143)].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor[_143].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_143) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_143].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
                if ceil32(stor[_143].field_1 % 128) > stor[_143].field_1 % 128:
                    mem[stor[_143].field_1 % 128 + mem[64] + 64] = 0
        return Array(len=stor[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)])
    if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5 < 32:
        revert with 'NH{q', 34
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5) + 129
    mem[ceil32(ceil32(arg1.length)) + 97] = uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5
    if bool(stor[_143].field_0):
        if bool(stor[_143].field_0) == uint255(uint256(stor[_143].field_0)) * 0.5 < 32:
            revert with 'NH{q', 34
        if not Mask(256, -1, uint256(stor[_143].field_0)):
            _150 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(uint256(stor[_143].field_0)) * 0.5
            mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]
            if ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) <= uint255(uint256(stor[_143].field_0)) * 0.5:
                return Array(len=2 * Mask(256, -1, uint256(stor[_143].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]), 
            mem[(uint255(uint256(stor[_143].field_0)) * 0.5) + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) + _150 + -mem[64] + 64
        if 31 >= uint255(uint256(stor[_143].field_0)) * 0.5:
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_143].field_8)
            _163 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(uint256(stor[_143].field_0)) * 0.5
            mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]
            if ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) <= uint255(uint256(stor[_143].field_0)) * 0.5:
                return Array(len=2 * Mask(256, -1, uint256(stor[_143].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]), 
            mem[(uint255(uint256(stor[_143].field_0)) * 0.5) + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) + _163 + -mem[64] + 64
        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_143)].field_0)
        idx = ceil32(ceil32(arg1.length)) + 129
        s = 0
        while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor[_143].field_0)) * 0.5) + 97 > idx:
            mem[idx + 32] = uint256(stor[s + sha3(_143) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        _294 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(uint256(stor[_143].field_0)) * 0.5
        mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) <= uint255(uint256(stor[_143].field_0)) * 0.5:
            return Array(len=2 * Mask(256, -1, uint256(stor[_143].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]), 
        mem[(uint255(uint256(stor[_143].field_0)) * 0.5) + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) + _294 + -mem[64] + 64
    if bool(stor[_143].field_0) == stor[_143].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not stor[_143].field_1 % 128:
        _154 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(uint256(stor[_143].field_0)) * 0.5
        mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) <= uint255(uint256(stor[_143].field_0)) * 0.5:
            return Array(len=2 * Mask(256, -1, uint256(stor[_143].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]), 
        mem[(uint255(uint256(stor[_143].field_0)) * 0.5) + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) + _154 + -mem[64] + 64
    if 31 >= stor[_143].field_1 % 128:
        mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_143].field_8)
        _171 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(uint256(stor[_143].field_0)) * 0.5
        mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) <= uint255(uint256(stor[_143].field_0)) * 0.5:
            return Array(len=2 * Mask(256, -1, uint256(stor[_143].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]), 
        mem[(uint255(uint256(stor[_143].field_0)) * 0.5) + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) + _171 + -mem[64] + 64
    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_143)].field_0)
    idx = ceil32(ceil32(arg1.length)) + 129
    s = 0
    while ceil32(ceil32(arg1.length)) + stor[_143].field_1 % 128 + 97 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_143) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    _295 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = uint255(uint256(stor[_143].field_0)) * 0.5
    mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]
    if ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) <= uint255(uint256(stor[_143].field_0)) * 0.5:
        return Array(len=2 * Mask(256, -1, uint256(stor[_143].field_0)), data=mem[mem[64] + 64 len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5)]), 
    mem[(uint255(uint256(stor[_143].field_0)) * 0.5) + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(uint255(uint256(stor[_143].field_0)) * 0.5) + _295 + -mem[64] + 64
}



}
