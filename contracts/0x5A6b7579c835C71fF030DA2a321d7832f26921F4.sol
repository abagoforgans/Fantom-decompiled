contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 users;
uint256 userCount;
mapping of address user;

function userCount() payable {
    return userCount
}

function addressWhitelist(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return user[arg1]
}

function users(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < users.length
    return users[arg1]
}

function getUser(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return user[arg1]
}

function _fallback() payable {
    revert
}

function transferOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor0 = arg1
}

function addUserToWhitelist(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    if not user[arg1]:
        users.length++
        users[users.length] = arg1
        if userCount == -1:
            revert with 'NH{q', 17
        userCount++
    user[arg1] = arg2
}

function updateUserAddress(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == user[arg1]
    if not user[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Your address must already be whitelisted to change it'
    user[arg1] = arg2
}

function banUser(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    user[arg1] = 0
    if users.length <= 1:
        if 0 >= users.length:
            revert with 'NH{q', 50
        if arg1 == users:
            if 0 >= users.length:
                revert with 'NH{q', 50
            users = 0
            if not users.length:
                revert with 'NH{q', 49
            users[users.length] = 0
            users.length--
        if not userCount:
            revert with 'NH{q', 17
        userCount--
    if users.length < 1:
        revert with 'NH{q', 17
    if var57002 > users.length - 1:
        if not userCount:
            revert with 'NH{q', 17
        userCount--
    if var59001 >= users.length:
        revert with 'NH{q', 50
    if arg1 != users[var61001]:
        if var69001 == -1:
            revert with 'NH{q', 17
        # nil
    else:
        if var63001 >= users.length:
            revert with 'NH{q', 50
        users[var65001] = 0
        if users.length < 1:
            revert with 'NH{q', 17
        if users.length - 1 >= users.length:
            revert with 'NH{q', 50
        if var79003 >= users.length:
            revert with 'NH{q', 50
        users[var79003] = users[users.length]
        if not users.length:
            revert with 'NH{q', 49
        users[users.length] = 0
        users.length--
        # nil
}



}
