contract main {




// =====================  Runtime code  =====================


uint256 retrieve;
address stor1;

function retrieve() payable {
    return retrieve
}

function _fallback() payable {
    revert
}

function store(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    retrieve = arg1
    emit 0x380fd600: msg.sender, arg1
}

function sub_ccf704ea(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor1 != msg.sender:
        revert with 0, 'You are not the owner.'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit 0x2cdf4b1e: address(arg1), address(arg2), ext_call.return_data[0], ext_call.return_data[0]
}



}
