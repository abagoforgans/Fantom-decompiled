contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
address sub_c78de709Address;

function sub_c78de709(?) {
    return sub_c78de709Address
}

function _fallback() payable {
    revert
}

function ledger(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1].field_0), stor0[arg1].field_256, stor0[arg1].field_512, stor0[arg1].field_768, stor0[arg1].field_1024
}

function sub_2837ae6b(?) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    if stor0[arg1].field_0:
        revert with 0, 'Key Already Assigned'
    require ext_code.size(sub_c78de709Address)
    staticcall sub_c78de709Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(arg3):
        revert with 0, 'Not Owner of NFT'
    if arg5 <= 0:
        revert with 0, 'Invalid Weth Provided'
    stor0[arg1].field_0 = 1
    stor0[arg1].field_256 = arg2
    stor0[arg1].field_512 = address(arg3)
    stor0[arg1].field_768 = address(arg4)
    stor0[arg1].field_1024 = arg5
    emit 0x4744c9f4: arg1, arg2, address(arg3), address(arg4), arg5
}

function sub_37200518(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[arg1].field_0:
        revert with 0, 'Invalid Key'
    if stor0[arg1].field_768 != msg.sender:
        revert with 0, 'Wrong Buyer'
    if stor0[arg1].field_1024 != msg.value:
        revert with 0, 'Wrong Bid Amount'
    require ext_code.size(sub_c78de709Address)
    staticcall sub_c78de709Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args stor0[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != stor0[arg1].field_512:
        revert with 0, 'Not Owner of NFT'
    require ext_code.size(sub_c78de709Address)
    call sub_c78de709Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor0[arg1].field_512, stor0[arg1].field_768, stor0[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor0[arg1].field_512 with:
       value stor0[arg1].field_1024 wei
         gas 2300 * is_zero(value) wei
    emit 0xe74c3da0: arg1, stor0[arg1].field_512, stor0[arg1].field_768, stor0[arg1].field_256, stor0[arg1].field_1024
    stor0[arg1].field_0 = 0
    stor0[arg1].field_256 = 0
    stor0[arg1].field_512 = 0
    stor0[arg1].field_768 = 0
    stor0[arg1].field_1024 = 0
}



}
