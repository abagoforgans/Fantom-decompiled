contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint256 totalUsers;
mapping of uint8 stor4;
mapping of address user;
mapping of uint256 userBalance;
uint256 totalBalance;

function userBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userBalance[arg1]
}

function allowedSubtractors(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor2[arg1]))
}

function userAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return user[arg1]
}

function owner() payable {
    return owner
}

function totalBalance() payable {
    return totalBalance
}

function allowedAdders(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[arg1]))
}

function totalUsers() payable {
    return totalUsers
}

function knownUsers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function toggleAdder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor1[address(arg1)]) = not bool(uint8(stor1[address(arg1)])) or Mask(248, 8, uint256(stor1[address(arg1)]))
}

function toggleSubtractor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor2[address(arg1)]) = not bool(uint8(stor2[address(arg1)])) or Mask(248, 8, uint256(stor2[address(arg1)]))
}

function subtractValue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor2[address(msg.sender)]):
        revert with 0, 'not allowed to subtract'
    if userBalance[address(arg1)] < arg2:
        revert with 'NH{q', 17
    userBalance[address(arg1)] -= arg2
    if totalBalance < arg2:
        revert with 'NH{q', 17
    totalBalance -= arg2
    emit SubtractValueEvent(msg.sender, address(arg1), arg2);
}

function addValue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor1[address(msg.sender)]):
        revert with 0, 'not allowed to add value'
    if not stor4[address(arg1)]:
        stor4[address(arg1)] = 1
        user[stor3] = arg1
        if totalUsers == -1:
            revert with 'NH{q', 17
        totalUsers++
    if userBalance[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    userBalance[address(arg1)] += arg2
    if totalBalance > -arg2 - 1:
        revert with 'NH{q', 17
    totalBalance += arg2
    emit AddValueEvent(msg.sender, address(arg1), arg2);
}



}
