contract main {




// =====================  Runtime code  =====================


uint8 isRepaid;
uint8 sub_167fca12; offset 8
uint8 sub_1247f4e2; offset 16
uint8 sub_8f60252f; offset 24
address stor0;
address stor0; offset 32
uint256 stor0; offset 8
address stor1;
address stor2;
address collateralTokenAddress;
address debtTokenAddress;
uint256 sub_62ee3235;
uint256 stor6;
uint256 sub_c2f99e75;
uint256 sub_5713dd52;
uint256 sub_875d94d2;
uint256 sub_e958feff;

function sub_1247f4e2(?) payable {
    return bool(sub_1247f4e2)
}

function sub_167fca12(?) payable {
    return bool(sub_167fca12)
}

function sub_5713dd52(?) payable {
    return sub_5713dd52
}

function isRepaid() payable {
    return bool(isRepaid)
}

function sub_62ee3235(?) payable {
    return sub_62ee3235
}

function sub_875d94d2(?) payable {
    return sub_875d94d2
}

function sub_8f60252f(?) payable {
    return bool(sub_8f60252f)
}

function collateralToken() payable {
    return collateralTokenAddress
}

function sub_c2f99e75(?) payable {
    return sub_c2f99e75
}

function sub_e958feff(?) payable {
    return sub_e958feff
}

function debtToken() payable {
    return debtTokenAddress
}

function _fallback() payable {
    revert
}

function sub_6a00908e(?) payable {
    require msg.sender == address(stor0.field_32)
    require 1 == bool(sub_1247f4e2)
    isRepaid = 0
    revert
}

function sub_ee71de51(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor1
    stor1 = address(arg1)
}

function sub_a6534470(?) payable {
    require msg.sender == address(stor0.field_32)
    require 1 == bool(sub_1247f4e2)
    require block.timestamp > stor6
    isRepaid = 0
    revert
}

function sub_85d5ec7c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == address(stor0.field_32)
    address(stor0.field_32) = address(arg1)
}

function sub_9b68e185(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require msg.sender == stor1
    require 1 == bool(sub_1247f4e2)
    isRepaid = 0
    revert
}

function depositCollateral() payable {
    require not sub_167fca12
    require msg.sender == stor1
    require ext_code.size(collateralTokenAddress)
    call collateralTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_c2f99e75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_167fca12 = 1
}

function sub_f16b77c0(?) payable {
    require msg.sender == address(stor0.field_32)
    require 1 == bool(sub_167fca12)
    require not sub_1247f4e2
    require ext_code.size(collateralTokenAddress)
    call collateralTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), stor1, sub_c2f99e75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_167fca12 = 0
    sub_875d94d2 = 0
}

function sub_1b99d9d6(?) payable {
    require 1 == bool(sub_1247f4e2)
    require block.timestamp <= stor6
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
    isRepaid = 1
}

function sub_5bfd088f(?) payable {
    require msg.sender == address(stor0.field_32)
    require 1 == bool(sub_167fca12)
    stor6 = block.timestamp + sub_62ee3235
    if not sub_5713dd52:
        require ext_code.size(debtTokenAddress)
        call debtTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 0 > sub_5713dd52:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(debtTokenAddress)
        call debtTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor1, sub_5713dd52
    else:
        if 10 * sub_5713dd52 / sub_5713dd52 != 10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require ext_code.size(debtTokenAddress)
        call debtTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor2, 10 * sub_5713dd52 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 10 * sub_5713dd52 / 10000 > sub_5713dd52:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(debtTokenAddress)
        call debtTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor1, sub_5713dd52 - (10 * sub_5713dd52 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    isRepaid = 0
    Mask(248, 0, stor0.field_8) = sub_167fca12
    sub_1247f4e2 = 1
}



}
