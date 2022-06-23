contract main {




// =====================  Runtime code  =====================


uint256 sub_d5dcd2fb;
uint256 sub_36707aa2;
uint8 stor3;
uint8 stor3; offset 8
uint8 stor3; offset 16
uint8 stor3; offset 24
uint256 deadline;
uint256 sub_c2f99e75;
uint256 sub_875d94d2;
uint256 sub_baef0c08;
uint256 sub_d4e78086;
address collateralTokenAddress;
address debtTokenAddress;
address buyerAddress;
uint256 stor11;
address sellerAddress;
uint256 stor12;
address owner;

function seller() payable {
    return address(sellerAddress)
}

function deadline() payable {
    return deadline
}

function sub_36707aa2(?) payable {
    return sub_36707aa2
}

function buyer() payable {
    return address(buyerAddress)
}

function sub_875d94d2(?) payable {
    return sub_875d94d2
}

function owner() payable {
    return owner
}

function collateralToken() payable {
    return collateralTokenAddress
}

function sub_baef0c08(?) payable {
    return sub_baef0c08
}

function sub_c2f99e75(?) payable {
    return sub_c2f99e75
}

function sub_d4e78086(?) payable {
    return sub_d4e78086
}

function sub_d5dcd2fb(?) payable {
    return sub_d5dcd2fb
}

function debtToken() payable {
    return debtTokenAddress
}

function _fallback() payable {
    revert
}

function sub_3b01f985(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(buyerAddress)
    uint8(stor3.field_16) = 1
    sub_d5dcd2fb = arg1
}

function sub_2e78b10d(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(sellerAddress)
    uint8(stor3.field_24) = 1
    sub_36707aa2 = arg1
}

function sub_6fc678a6(?) payable {
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(buyerAddress), sub_36707aa2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint256(stor12) = msg.sender or Mask(96, 160, uint256(stor12))
}

function sub_eaf02c10(?) payable {
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(buyerAddress), sub_d5dcd2fb
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint256(stor11) = msg.sender or Mask(96, 160, uint256(stor11))
}

function depositCollateral() payable {
    require not uint8(stor3.field_0)
    require msg.sender == owner
    require ext_code.size(collateralTokenAddress)
    call collateralTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_c2f99e75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint8(stor3.field_0) = 1
    address(buyerAddress) = owner
    address(sellerAddress) = owner
    deadline = block.timestamp + sub_baef0c08
}

function sub_d25183f8(?) payable {
    require msg.sender == address(sellerAddress)
    require 1 == bool(uint8(stor3.field_0))
    require not uint8(stor3.field_8)
    require block.timestamp > deadline
    sub_875d94d2 = 0
    require ext_code.size(collateralTokenAddress)
    call collateralTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(sellerAddress), sub_c2f99e75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint8(stor3.field_8) = 1
}

function sub_10209887(?) payable {
    require msg.sender == address(buyerAddress)
    require 1 == bool(uint8(stor3.field_0))
    require block.timestamp <= deadline
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(sellerAddress), sub_875d94d2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(collateralTokenAddress)
    call collateralTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(buyerAddress), sub_c2f99e75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint8(stor3.field_8) = 1
}



}
