contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function ledger(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1].field_0), 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280
}

function sub_b04f5c82(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[arg1].field_0:
        revert with 0, 'Invalid Key'
    if stor0[arg1].field_768 != msg.sender:
        revert with 0, 'Transaction Issuer and Buyer Address Mismatch'
    stor0[arg1].field_0 = 0
    stor0[arg1].field_256 = 0
    stor0[arg1].field_512 = 0
    stor0[arg1].field_768 = 0
    stor0[arg1].field_1024 = 0
    stor0[arg1].field_1280 = 0
    emit 0xfca8fcc6: arg1
}

function sub_2254da7d(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    if address(arg4) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transaction Issuer and Buyer Address Mismatch'
    if stor0[arg1].field_0:
        revert with 0, 'Key Already Assigned'
    require ext_code.size(address(arg3))
    staticcall address(arg3).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(arg4):
        revert with 0, 'Not Owner of NFT or Invalid NFT Address'
    if arg6 <= 0:
        revert with 0, 'Invalid Weth Provided'
    stor0[arg1].field_0 = 1
    stor0[arg1].field_256 = arg2
    stor0[arg1].field_512 = address(arg3)
    stor0[arg1].field_768 = address(arg4)
    stor0[arg1].field_1024 = address(arg5)
    stor0[arg1].field_1280 = arg6
    emit 0x4744c9f4: arg1, arg2, address(arg4), address(arg5), arg6
}

function sub_37200518(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[arg1].field_0:
        revert with 0, 'Invalid Key'
    if stor0[arg1].field_1024:
        if stor0[arg1].field_1024 != msg.sender:
            revert with 0, 'Wrong Buyer'
    if stor0[arg1].field_1280 != msg.value:
        revert with 0, 'Wrong Bid Amount'
    require ext_code.size(stor0[arg1].field_512)
    staticcall stor0[arg1].field_512.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args stor0[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != stor0[arg1].field_768:
        revert with 0, 'Nft seller is not owner of NFT'
    require ext_code.size(stor0[arg1].field_512)
    call stor0[arg1].field_512.0x23b872dd with:
         gas gas_remaining wei
        args stor0[arg1].field_768, msg.sender, stor0[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor0[arg1].field_768 with:
       value stor0[arg1].field_1280 wei
         gas 2300 * is_zero(value) wei
    stor0[arg1].field_0 = 0
    stor0[arg1].field_256 = 0
    stor0[arg1].field_512 = 0
    stor0[arg1].field_768 = 0
    stor0[arg1].field_1024 = 0
    stor0[arg1].field_1280 = 0
    emit 0xe74c3da0: arg1, stor0[arg1].field_768, stor0[arg1].field_1024, stor0[arg1].field_256, stor0[arg1].field_1280
}



}
