contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of address sub_1b824129;
mapping of struct sub_1658e9aa;

function sub_1658e9aa(?) payable {
    require calldata.size - 4 >= 64
    return sub_1658e9aa[arg1][arg2].field_0, sub_1658e9aa[arg1][arg2].field_256, bool(sub_1658e9aa[arg1][arg2].field_512)
}

function sub_1b824129(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return address(sub_1b824129[arg1][arg2])
}

function _fallback() payable {
    revert
}

function sub_749a4021(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require ext_code.size(stor0)
    staticcall stor0.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'remove: only the owner of the summoner can remove items.'
    if address(sub_1b824129[address(arg2)][arg3]) != msg.sender:
        revert with 0, 'remove: only owner of the item can remove it.'
    require ext_code.size(address(arg2))
    call address(arg2).0xb574f283 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'remove: item is not equipped'
    require ext_code.size(address(arg2))
    call address(arg2).0x4cc82215 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    call address(arg2).0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    address(sub_1b824129[address(arg2)][arg3]) = 0
    require ext_code.size(address(arg2))
    call address(arg2).0xfc895991 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_1658e9aa[arg1][ext_call.return_data[0]].field_0 = 0
    sub_1658e9aa[arg1][ext_call.return_data[0]].field_256 = 0
    sub_1658e9aa[arg1][ext_call.return_data[0]].field_512 = 0
    emit 0xf8dd3f7e: arg1, address(arg2), arg3
}

function equip(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require ext_code.size(stor0)
    staticcall stor0.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'equip: only the owner of the summoner can equip items.'
    require ext_code.size(stor0)
    staticcall stor0.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(arg2)
    call arg2.0x6730d593 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[96] < ext_call.return_data[0]:
        revert with 0, 'equip: summoner does not meet the level requirements of the item'
    require ext_code.size(arg2)
    call arg2.0xb574f283 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'equip: item is already equipped'
    require ext_code.size(arg2)
    call arg2.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(sub_1b824129[address(arg2)][arg3]) = msg.sender or Mask(96, 160, uint256(sub_1b824129[address(arg2)][arg3]))
    require ext_code.size(arg2)
    call arg2.0xfc895991 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_1658e9aa[arg1][ext_call.return_data[0]].field_512:
        require ext_code.size(stor0)
        staticcall stor0.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'remove: only the owner of the summoner can remove items.'
        if address(sub_1b824129[stor2[arg1][ext_call.return_data[0]].field_0][stor2[arg1][ext_call.return_data[0]].field_256]) != msg.sender:
            revert with 0, 'remove: only owner of the item can remove it.'
        require ext_code.size(sub_1658e9aa[arg1][ext_call.return_data[0]].field_0)
        call sub_1658e9aa[arg1][ext_call.return_data[0]].field_0.0xb574f283 with:
             gas gas_remaining wei
            args sub_1658e9aa[arg1][ext_call.return_data[0]].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'remove: item is not equipped'
        require ext_code.size(sub_1658e9aa[arg1][ext_call.return_data[0]].field_0)
        call sub_1658e9aa[arg1][ext_call.return_data[0]].field_0.0x4cc82215 with:
             gas gas_remaining wei
            args sub_1658e9aa[arg1][ext_call.return_data[0]].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_1658e9aa[arg1][ext_call.return_data[0]].field_0)
        call sub_1658e9aa[arg1][ext_call.return_data[0]].field_0.0x42842e0e with:
             gas gas_remaining wei
            args this.address, msg.sender, sub_1658e9aa[arg1][ext_call.return_data[0]].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        address(sub_1b824129[stor2[arg1][ext_call.return_data[0]].field_0][stor2[arg1][ext_call.return_data[0]].field_256]) = 0
        require ext_code.size(sub_1658e9aa[arg1][ext_call.return_data[0]].field_0)
        call sub_1658e9aa[arg1][ext_call.return_data[0]].field_0.0xfc895991 with:
             gas gas_remaining wei
            args sub_1658e9aa[arg1][ext_call.return_data[0]].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_1658e9aa[arg1][ext_call.return_data[0]].field_0 = 0
        sub_1658e9aa[arg1][ext_call.return_data[0]].field_256 = 0
        sub_1658e9aa[arg1][ext_call.return_data[0]].field_512 = 0
        emit 0xf8dd3f7e: arg1, sub_1658e9aa[arg1][ext_call.return_data[0]].field_0, sub_1658e9aa[arg1][ext_call.return_data[0]].field_256
    require ext_code.size(arg2)
    call arg2.0xfc895991 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_1658e9aa[arg1][ext_call.return_data[0]].field_0 = arg2
    sub_1658e9aa[arg1][ext_call.return_data[0]].field_256 = arg3
    sub_1658e9aa[arg1][ext_call.return_data[0]].field_512 = 1
    require ext_code.size(arg2)
    call arg2.0xb85f8027 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x97698958: arg1, address(arg2), arg3
}



}
