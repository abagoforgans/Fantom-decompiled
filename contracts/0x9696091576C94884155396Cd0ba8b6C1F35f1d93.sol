contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
address masterChefAddress;
uint256 poolId;

function poolId() payable {
    return poolId
}

function masterChef() payable {
    return masterChefAddress
}

function owner() payable {
    return owner
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function setAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    masterChefAddress = arg1
}

function claimOwnership() payable {
    require msg.sender == pendingOwner
    owner = pendingOwner
    pendingOwner = 0
    emit LogOwnerShipTransferred(pendingOwner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    pendingOwner = arg1
    emit LogOwnerShipTransferInitiated(owner, arg1);
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}



}
