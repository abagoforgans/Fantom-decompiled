contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint8 stor0; offset 16
uint8 stor0; offset 24
address stor0;
address stor0; offset 32
uint256 stor0; offset 8
address stor1;
address stor2;
uint256 stor3;
address stor4;
address debtTokenAddress;
uint256 sub_62ee3235;
uint256 stor7;
uint256 sub_5713dd52;
uint256 sub_875d94d2;
uint256 sub_e958feff;
uint8 stor11;

function sub_1247f4e2(?) payable {
    return bool(uint8(stor0.field_16))
}

function sub_167fca12(?) payable {
    return bool(uint8(stor0.field_8))
}

function sub_5713dd52(?) payable {
    return sub_5713dd52
}

function isRepaid() payable {
    return bool(uint8(stor0.field_0))
}

function sub_62ee3235(?) payable {
    return sub_62ee3235
}

function sub_875d94d2(?) payable {
    return sub_875d94d2
}

function sub_8f60252f(?) payable {
    return bool(uint8(stor0.field_24))
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

function sub_ee71de51(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor1
    stor1 = address(arg1)
}

function sub_85d5ec7c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == address(stor0.field_32)
    address(stor0.field_32) = address(arg1)
}

function depositCollateral() payable {
    require not uint8(stor0.field_8)
    require msg.sender == stor1
    require ext_code.size(stor4)
    call stor4.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor0.field_8) = 1
}

function sub_f16b77c0(?) payable {
    require msg.sender == address(stor0.field_32)
    require 1 == bool(uint8(stor0.field_8))
    require not uint8(stor0.field_16)
    require ext_code.size(stor4)
    call stor4.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), stor1, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor0.field_8) = 0
    sub_875d94d2 = 0
}

function sub_a6534470(?) payable {
    require msg.sender == address(stor0.field_32)
    require 1 == bool(uint8(stor0.field_16))
    require block.timestamp > stor7
    require not uint8(stor0.field_0)
    sub_875d94d2 = 0
    require ext_code.size(stor4)
    call stor4.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), address(stor0.field_0), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1b99d9d6(?) payable {
    require 1 == bool(uint8(stor0.field_16))
    require block.timestamp <= stor7
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(stor0.field_0), sub_875d94d2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_875d94d2 = 0
    require ext_code.size(stor4)
    call stor4.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), stor1, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor0.field_0) = 1
}

function sub_6a00908e(?) payable {
    require msg.sender == address(stor0.field_32)
    require 1 == bool(uint8(stor0.field_16))
    require block.timestamp < stor7
    require not uint8(stor0.field_0)
    require 1 == bool(stor11)
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(stor0.field_0), stor1, sub_e958feff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), address(stor0.field_0), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_875d94d2 = 0
}

function sub_5bfd088f(?) payable {
    require msg.sender == address(stor0.field_32)
    require 1 == bool(uint8(stor0.field_8))
    stor7 = block.timestamp + sub_62ee3235
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
    uint8(stor0.field_0) = 0
    Mask(248, 0, stor0.field_8) = uint8(stor0.field_8)
    uint8(stor0.field_16) = 1
}



}
