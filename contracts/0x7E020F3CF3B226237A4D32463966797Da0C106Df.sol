contract main {




// =====================  Runtime code  =====================


address owner;
uint8 canLock; offset 160
uint128 stor1; offset 160
address governanceTokenAddress;

function canLock() payable {
    return bool(canLock)
}

function owner() payable {
    return owner
}

function governanceToken() payable {
    return governanceTokenAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setCanLock(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor1 = Mask(96, 0, arg1)
    emit SetCanLock(owner, arg1);
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not canLock:
        revert with 0, 'LG1'
    require ext_code.size(governanceTokenAddress)
    call governanceTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit LockGTON(arg1, governanceTokenAddress, msg.sender, msg.sender);
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    require ext_code.size(governanceTokenAddress)
    staticcall governanceTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(governanceTokenAddress)
    call governanceTokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Migrate(ext_call.return_data[0], arg1);
}



}
