contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address owner; offset 8
address sub_0c923d83Address;
array of struct stor2;
mapping of uint8 stor3;
mapping of struct sub_df0e52a9;

function sub_0c923d83(?) payable {
    return sub_0c923d83Address
}

function paused() payable {
    return bool(stor0)
}

function pausers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function owner() payable {
    return owner
}

function sub_df0e52a9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_df0e52a9[arg1].field_0, sub_df0e52a9[arg1].field_160
}

function _fallback() payable {
    revert
}

function pause() payable {
    if owner != msg.sender:
        if not stor3[address(msg.sender)]:
            revert with 0, 'Must be owner'
    stor0 = 1
}

function unpause() payable {
    if owner != msg.sender:
        if not stor3[address(msg.sender)]:
            revert with 0, 'Must be owner'
    stor0 = 0
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    owner = arg1
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    stor3[address(arg1)] = 1
}

function removePauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    stor3[address(arg1)] = 0
}

function sub_6240f0f4(?) payable {
    if owner != msg.sender:
        if sub_0c923d83Address != msg.sender:
            revert with 0, 'Must be owner or disaster'
    stor3[address(msg.sender)] = 0
    sub_0c923d83Address = 0
    stor0 = 0
}

function sub_4d34f855(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    stor3[address(arg1)] = 1
    sub_0c923d83Address = address(arg1)
    stor0 = 1
}

function sub_98cd03ce(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    sub_df0e52a9[0].field_160 = uint8(arg1)
    sub_df0e52a9[1].field_160 = uint8(arg2)
    sub_df0e52a9[2].field_160 = uint8(arg3)
    sub_df0e52a9[3].field_160 = uint8(arg4)
}

function sub_bad6a14e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint8(arg2)
    if uint8(arg2) >= 4:
        revert with 0, 'Invalid Id'
    if stor0:
        revert with 0, 'Farm not available'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_df0e52a9[arg2 << 248].field_160 and 10^18 > test266151307() / sub_df0e52a9[arg2 << 248].field_160:
        revert with 'NH{q', 17
    require ext_code.size(sub_df0e52a9[arg2 << 248].field_0)
    call sub_df0e52a9[arg2 << 248].field_0.0x1b2ef1ca with:
         gas gas_remaining wei
        args arg1, uint64(10^18 * sub_df0e52a9[arg2 << 248].field_160)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x80a9397e: sub_df0e52a9[arg2 << 248].field_0, uint64(10^18 * sub_df0e52a9[arg2 << 248].field_160), arg1
}

function name() payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}



}
