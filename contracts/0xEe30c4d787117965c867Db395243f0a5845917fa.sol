contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor1;
address helperAddress;
address assetAddress;

function asset() payable {
    return assetAddress
}

function helper() payable {
    return helperAddress
}

function _fallback() payable {
    revert
}

function updateAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor1 = arg1
}

function startProcess() payable {
    stor0 = 1
    require ext_code.size(helperAddress)
    call helperAddress.0x7c46499b with:
         gas gas_remaining wei
        args this.address, 1000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_23293328(?) payable {
    require calldata.size - 4 >= 32
    require stor0
    require ext_code.size(assetAddress)
    call assetAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor0 = 0
}



}
