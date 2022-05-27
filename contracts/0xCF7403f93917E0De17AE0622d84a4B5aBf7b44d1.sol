contract main {




// =====================  Runtime code  =====================


#
#  - vest()
#  - deleteVestingSchedule(address arg1, bool arg2)
#
address owner;
mapping of struct vesting;

function owner() payable {
    return owner
}

function vesting(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(vesting[arg1].field_0), 
           vesting[arg1].field_0,
           vesting[arg1].field_256,
           vesting[arg1].field_512,
           vesting[arg1].field_768,
           vesting[arg1].field_1024
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setPause(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(vesting[address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vesting: pause status must change'
    if not vesting[address(arg1)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vesting: user has no vesting schedule'
    vesting[address(arg1)].field_0 = uint8(arg2)
    emit PauseVesting(arg2, arg1);
}

function addVestingSchedule(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if vesting[address(arg1)].field_512 != vesting[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vesting: user already has a vesting schedule'
    if arg4 >= arg5:
        revert with 0, 'Vesting: _startTime >= _endTime'
    vesting[address(arg1)].field_0 = 0
    vesting[address(arg1)].field_8 = arg2
    vesting[address(arg1)].field_168 = 0
    vesting[address(arg1)].field_256 = 0
    vesting[address(arg1)].field_512 = arg3
    vesting[address(arg1)].field_768 = arg4
    vesting[address(arg1)].field_1024 = arg5
    emit AddVesting(arg3, arg4, arg5, arg1);
}

function releasableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp > vesting[address(arg1)].field_1024:
        if vesting[address(arg1)].field_512 < vesting[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (vesting[address(arg1)].field_512 - vesting[address(arg1)].field_256)
    if vesting[address(arg1)].field_1024 < vesting[address(arg1)].field_768:
        revert with 'NH{q', 17
    if block.timestamp < vesting[address(arg1)].field_768:
        revert with 'NH{q', 17
    if vesting[address(arg1)].field_512 and block.timestamp - vesting[address(arg1)].field_768 > -1 / vesting[address(arg1)].field_512:
        revert with 'NH{q', 17
    if not vesting[address(arg1)].field_1024 - vesting[address(arg1)].field_768:
        revert with 'NH{q', 18
    if (block.timestamp * vesting[address(arg1)].field_512) - (vesting[address(arg1)].field_768 * vesting[address(arg1)].field_512) / vesting[address(arg1)].field_1024 - vesting[address(arg1)].field_768 < vesting[address(arg1)].field_256:
        revert with 'NH{q', 17
    return (((block.timestamp * vesting[address(arg1)].field_512) - (vesting[address(arg1)].field_768 * vesting[address(arg1)].field_512) / vesting[address(arg1)].field_1024 - vesting[address(arg1)].field_768) - vesting[address(arg1)].field_256)
}



}
