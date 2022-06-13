contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of address sub_898572a6;
uint256 creationTimestamp;
uint8 born;
address sub_200dfb1bAddress; offset 8
uint256 stor5;

function born() payable {
    return bool(born)
}

function sub_200dfb1b(?) payable {
    return sub_200dfb1bAddress
}

function sub_898572a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return sub_898572a6[arg1]
}

function creationTimestamp() payable {
    return creationTimestamp
}

function _fallback() payable {
    revert
}

function sub_3a55a52e(?) payable {
    return (stor5 / 100)
}

function sub_df39e6e1(?) payable {
    if creationTimestamp > -86401:
        revert with 0, 17
    if creationTimestamp + (24 * 3600) < stor5:
        revert with 0, 17
    return (block.timestamp > creationTimestamp + -stor5 + (24 * 3600))
}

function sub_b769a352(?) payable {
    if creationTimestamp > -86401:
        revert with 0, 17
    if creationTimestamp + (24 * 3600) < stor5:
        revert with 0, 17
    if block.timestamp > creationTimestamp + -stor5 + (24 * 3600):
        revert with 0, 'im already hatched'
    if 100 > !stor5:
        revert with 0, 17
    if stor5 + 100 <= 24 * 3600:
        if stor5 > -101:
            revert with 0, 17
        stor5 += 100
        emit 0x99015e2f: msg.sender
}

function sub_8826a4ce(?) payable {
    if creationTimestamp > -86401:
        revert with 0, 17
    if creationTimestamp + (24 * 3600) < stor5:
        revert with 0, 17
    if block.timestamp > creationTimestamp + -stor5 + (24 * 3600):
        return 0
    if block.timestamp < creationTimestamp:
        revert with 0, 17
    if block.timestamp - creationTimestamp > -86401:
        revert with 0, 17
    if block.timestamp + -creationTimestamp + (24 * 3600) < stor5:
        revert with 0, 17
    return (block.timestamp + -creationTimestamp + -stor5 + (24 * 3600))
}

function sub_988a4aeb(?) payable {
    if born:
        return 0
    if creationTimestamp > -86401:
        revert with 0, 17
    if creationTimestamp + (24 * 3600) < stor5:
        revert with 0, 17
    if block.timestamp <= creationTimestamp + -stor5 + (24 * 3600):
        return 0
    mem[96] = 0x3c1d98fc00000000000000000000000000000000000000000000000000000000
    idx = 0
    s = 1
    t = 100
    while idx < 2:
        mem[t] = stor[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor0.length):
            require ext_code.size(sub_200dfb1bAddress)
            call sub_200dfb1bAddress.mem[96 len 4] with:
                 gas gas_remaining wei
                args mem[100 len 64], 96, 2 * Mask(256, -1, stor0.length), Mask(248, 8, stor0.length)
        else:
            if bool(stor0.length) != 1:
                require ext_code.size(sub_200dfb1bAddress)
                call sub_200dfb1bAddress.mem[96 len 4] with:
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor0.length) * 0.5:
                    mem[idx + 228] = uint256(stor0[s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_200dfb1bAddress)
                call sub_200dfb1bAddress.mem[96 len 4] with:
                     gas gas_remaining wei
                    args mem[100 len 64], 96, 2 * Mask(256, -1, stor0.length), mem[228 len ceil32(uint255(stor0.length) * 0.5)]
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor0.length):
            require ext_code.size(sub_200dfb1bAddress)
            call sub_200dfb1bAddress.mem[96 len 4] with:
                 gas gas_remaining wei
                args mem[100 len 64], 96, stor0.length % 128, Mask(248, 8, stor0.length)
        else:
            if bool(stor0.length) != 1:
                require ext_code.size(sub_200dfb1bAddress)
                call sub_200dfb1bAddress.mem[96 len 4] with:
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < stor0.length.field_1 % 128:
                    mem[idx + 228] = uint256(stor0[s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_200dfb1bAddress)
                call sub_200dfb1bAddress.mem[96 len 4] with:
                     gas gas_remaining wei
                    args mem[100 len 64], 96, stor0.length % 128, mem[228 len ceil32(stor0.length.field_1 % 128)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    born = 1
    emit 0x84ea2751: msg.sender
    return ext_call.return_data[12 len 20]
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[ceil32(stor0.length.field_1 % 128) + stor0.length.field_1 % 128 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}



}
