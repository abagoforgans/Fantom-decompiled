contract main {




// =====================  Runtime code  =====================


address owner;
uint256 startDate;
uint256 endDate;
uint256 sub_1ded36aa;
uint8 stor4;

function startDate() payable {
    return startDate
}

function sub_1ded36aa(?) payable {
    return sub_1ded36aa
}

function sub_6dec8ccc(?) payable {
    return bool(stor4)
}

function owner() payable {
    return owner
}

function endDate() payable {
    return endDate
}

function _fallback() payable {
    revert
}

function activateAntiWhale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor4
    stor4 = 1
}

function deActivateAntiWhale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require 1 == bool(stor4)
    stor4 = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAntiWhale(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startDate = arg1
    endDate = arg2
    sub_1ded36aa = arg3
    stor4 = 1
}

function isWhale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == owner:
        return 0
    if not stor4:
        return 0
    if arg1 <= sub_1ded36aa:
        return 0
    if block.timestamp < startDate:
        return 0
    if block.timestamp > endDate:
        return 0
    return 1
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



}
