contract main {




// =====================  Runtime code  =====================


address sub_18b04c8aAddress;

function sub_18b04c8a(?) payable {
    return sub_18b04c8aAddress
}

function _fallback() payable {
    revert
}

function setAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    sub_18b04c8aAddress = arg1
}

function sub_6284e396(?) payable {
    require ext_code.size(sub_18b04c8aAddress)
    call sub_18b04c8aAddress.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
