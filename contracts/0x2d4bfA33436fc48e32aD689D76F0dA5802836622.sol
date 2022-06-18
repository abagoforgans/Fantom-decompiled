contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint8 stor0; offset 16
address stor0;
address stor0; offset 24
uint256 stor0; offset 8
address stor1;
address collateralTokenAddress;
address debtTokenAddress;
uint256 deadline;
uint256 sub_c2f99e75;
uint256 sub_5713dd52;
uint256 sub_875d94d2;

function sub_1247f4e2(?) payable {
    return bool(uint8(stor0.field_16))
}

function sub_167fca12(?) payable {
    return bool(uint8(stor0.field_8))
}

function deadline() payable {
    return deadline
}

function sub_5713dd52(?) payable {
    return sub_5713dd52
}

function isRepaid() payable {
    return bool(uint8(stor0.field_0))
}

function sub_875d94d2(?) payable {
    return sub_875d94d2
}

function collateralToken() payable {
    return collateralTokenAddress
}

function sub_c2f99e75(?) payable {
    return sub_c2f99e75
}

function debtToken() payable {
    return debtTokenAddress
}

function _fallback() payable {
    revert
}

function sub_a6534470(?) payable {
    require msg.sender == address(stor0.field_24)
    require 1 == bool(uint8(stor0.field_16))
    require block.timestamp > deadline
    uint8(stor0.field_0) = 0
    revert
}

function depositCollateral() payable {
    require msg.sender == stor1
    require block.timestamp < deadline
    require ext_code.size(collateralTokenAddress)
    call collateralTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_c2f99e75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint8(stor0.field_16) = 1
}

function sub_5bfd088f(?) payable {
    require msg.sender == address(stor0.field_24)
    require 1 == bool(uint8(stor0.field_8))
    require block.timestamp < deadline
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor1, sub_5713dd52
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint8(stor0.field_0) = 0
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
}

function repayDebt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require 1 == bool(uint8(stor0.field_16))
    require block.timestamp < deadline
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(stor0.field_0), sub_875d94d2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_875d94d2 = 0
    require ext_code.size(collateralTokenAddress)
    call collateralTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), stor1, sub_c2f99e75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint8(stor0.field_0) = 1
}



}
