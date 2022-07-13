contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of uint256 stor2;
address stor3;
array of struct stor4;
address stor5;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function sub_81060015(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)].field_0 = 0
    if 31 < stor4[address(arg1)].length:
        idx = 0
        while stor4[address(arg1)].length + 31 / 32 > idx:
            stor4[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x8928ac01: address(arg1)
}

function sub_8f0db879(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(cd[4])].field_0 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor4[address(cd[4])][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor4[address(cd[4])].length + 31 / 32 > idx:
        stor4[address(cd[4])][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit 0xb3d38280: address(cd[4]), sha3(call.data[cd[36] + 36 len ('cd', 36).length])
}

function getBasePrice() payable {
    if not bool(stor2.length):
        require ext_code.size(stor1)
        staticcall stor1.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, stor2.length % 128, Mask(248, 8, stor2.length), 4, 0x5553445400000000000000000000000000000000000000000000000000000000
    else:
        if bool(stor2.length) != 1:
            require ext_code.size(stor1)
            staticcall stor1.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[196 len -132]
        else:
            idx = 0
            s = 0
            while idx < stor2.length.field_1:
                mem[idx + 292] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor2.length.field_1) + 292] = 4
            require ext_code.size(stor1)
            staticcall stor1.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(stor2.length.field_1) + 96, 2 * Mask(256, -1, stor2.length.field_1), mem[292 len ceil32(stor2.length.field_1) + 32], 0x5553445400000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 288 <= test266151307())
    return ext_call.return_data[0]
}

function getAssetPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 == arg1:
        return 10^18
    mem[128] = stor4[address(arg1)].field_0
    idx = 128
    s = 0
    while stor4[address(arg1)].length + 96 > idx:
        mem[idx + 32] = stor4[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == stor4[address(arg1)].length:
        require ext_code.size(stor3)
        staticcall stor3.0xb3596f07 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        mem[ceil32(stor4[address(arg1)].length) + 224] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor4[address(arg1)].length) + 228] = 64
        mem[ceil32(stor4[address(arg1)].length) + 292] = stor4[address(arg1)].length
        mem[ceil32(stor4[address(arg1)].length) + 324 len ceil32(stor4[address(arg1)].length)] = mem[128 len ceil32(stor4[address(arg1)].length)]
        if ceil32(stor4[address(arg1)].length) > stor4[address(arg1)].length:
            mem[ceil32(stor4[address(arg1)].length) + stor4[address(arg1)].length + 324] = 0
        mem[ceil32(stor4[address(arg1)].length) + 260] = ceil32(stor4[address(arg1)].length) + 96
        if not bool(stor2.length):
            require ext_code.size(stor1)
            staticcall stor1.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args Array(len=stor4[address(arg1)].length, data=mem[128 len ceil32(stor4[address(arg1)].length)], stor2.length % 128, Mask(248, 8, stor2.length)), ceil32(stor4[address(arg1)].length) + 96
        else:
            if bool(stor2.length) != 1:
                require ext_code.size(stor1)
                staticcall stor1.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(stor4[address(arg1)].length) + 228 len -ceil32(stor4[address(arg1)].length) - 228]
            else:
                mem[(2 * ceil32(stor4[address(arg1)].length)) + 324] = stor2.length.field_1
                idx = 0
                s = 0
                while idx < stor2.length.field_1:
                    mem[(2 * ceil32(stor4[address(arg1)].length)) + idx + 356] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.mem[ceil32(stor4[address(arg1)].length) + 224 len 4] with:
                        gas gas_remaining wei
                       args mem[ceil32(stor4[address(arg1)].length) + 228 len ceil32(stor4[address(arg1)].length) + ceil32(stor2.length.field_1) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require bool(ceil32(stor4[address(arg1)].length) + ceil32(return_data.size) + 320 <= test266151307())
    return ext_call.return_data[0]
}



}
