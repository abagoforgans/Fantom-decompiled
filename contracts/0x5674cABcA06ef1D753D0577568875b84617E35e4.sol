contract main {




// =====================  Runtime code  =====================


address ROUTERAddress;
address FACTORYAddress;
address WETHAddress;

function FACTORY() {
    return FACTORYAddress
}

function ROUTER() {
    return ROUTERAddress
}

function WETH() {
    return WETHAddress
}

function _fallback() payable {
    revert
}

function swap(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This Pool Does Not Exists'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, uint32(arg3), arg4, msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
