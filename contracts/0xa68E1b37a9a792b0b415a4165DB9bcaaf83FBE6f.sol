contract main {




// =====================  Runtime code  =====================


address airnodeAddress;
mapping of uint8 stor1;
mapping of uint256 fulfilledData;

function fulfilledData(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return fulfilledData[arg1]
}

function airnode() payable {
    return airnodeAddress
}

function airnodeAddress() payable {
    return airnodeAddress
}

function incomingFulfillments(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function fulfill(bytes32 arg1, uint256 arg2, int256 arg3) payable {
    require calldata.size - 4 >= 96
    if airnodeAddress != msg.sender:
        revert with 0, 'Caller not the Airnode contract'
    if not stor1[arg1]:
        revert with 0, 'No such request made'
    stor1[arg1] = 0
    if not arg2:
        fulfilledData[arg1] = arg3
}

function makeRequest(bytes32 arg1, bytes32 arg2, uint256 arg3, address arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[356 len arg5.length] = arg5[all]
    mem[arg5.length + 356] = 0
    require ext_code.size(airnodeAddress)
    call airnodeAddress.makeFullRequest(bytes32 rg1, bytes32 rg2, uint256 rg3, address rg4, address rg5, bytes4 rg6, bytes rg7) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, arg4, address(this.address), 0xbd3b93a800000000000000000000000000000000000000000000000000000000, 224, arg5.length, arg5[all], mem[arg5.length + 356 len ceil32(arg5.length) - arg5.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1[ext_call.return_data[0]] = 1
}



}
