contract main {




// =====================  Runtime code  =====================


#
#  - recoverERC20(address arg1, uint256 arg2)
#
address owner;
address nominatedOwner;
uint256 stor2;
address sub_678a2226Address;
address timelock_address;
address curator_address;
uint8 distributionsOn; offset 160
uint32 stor6;
uint128 stor6; offset 160
address sub_012dca8bAddress;
uint256 stor6;

function sub_012dca8b(?) payable {
    return sub_012dca8bAddress
}

function distributionsOn() payable {
    return bool(distributionsOn)
}

function nominatedOwner() payable {
    return nominatedOwner
}

function sub_678a2226(?) payable {
    return sub_678a2226Address
}

function owner() payable {
    return owner
}

function curator_address() payable {
    return curator_address
}

function timelock_address() payable {
    return timelock_address
}

function _fallback() payable {
    revert
}

function setCurator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    curator_address = arg1
}

function setTimelock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    timelock_address = arg1
}

function setFarmAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    sub_012dca8bAddress = arg1
    emit 0x6711aa55: arg1
}

function nominateNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function acceptOwnership() payable {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function toggleDistributions() payable {
    if owner != msg.sender:
        if curator_address != msg.sender:
            if timelock_address != msg.sender:
                revert with 0, 'Not owner, curator, or timelock'
    Mask(96, 0, stor6.field_160) = Mask(96, 0, not distributionsOn)
    emit 0xa47e2363: bool(0 or uint8(not distributionsOn))
}

function distributeReward() payable {
    if bool(distributionsOn) != 1:
        revert with 0, 'Distributions are off'
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    mem[100] = this.address
    require ext_code.size(sub_678a2226Address)
    staticcall sub_678a2226Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor6.field_0)
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call sub_678a2226Address.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    emit RewardDistributed(ext_call.return_data[0], sub_012dca8bAddress);
    stor2 = 1
    return ext_call.return_data[0]
}



}
