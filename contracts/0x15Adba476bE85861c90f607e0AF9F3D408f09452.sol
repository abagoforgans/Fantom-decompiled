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
    return user[arg1]
}

function users(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < users.length
    return users[arg1]
}

function getUser(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    require arg2 == arg2
    require msg.sender == stor0
    if not user[arg1]:
        users.length++
        users[users.length] = arg1
        if userCount == -1:
            revert with 0, 17
        userCount++
    user[arg1] = arg2
}

function updateUserAddress(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require msg.sender == user[arg1]
    if not user[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Your address must already be whitelisted to change it'
    user[arg1] = arg2
}

function banUser(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    user[arg1] = 0
    if users.length <= 1:
        if 0 >= users.length:
            revert with 0, 50
        if arg1 == users:
            if 0 >= users.length:
                revert with 0, 50
            users = 0
            if not users.length:
                revert with 0, 49
            users[users.length] = 0
            users.length--
        userCount = users.length
    if users.length < 1:
        revert with 0, 17
    if var32002 > users.length - 1:
        userCount = users.length
    if var34001 >= users.length:
        revert with 0, 50
    if arg1 != users[var36001]:
        if var40001 == -1:
            revert with 0, 17
        if users.length < 1:
            revert with 0, 17
        if var52002 > users.length - 1:
            userCount = users.length
        if var54001 >= users.length:
            revert with 0, 50
        if arg1 != users[var56001]:
            if var60001 == -1:
                revert with 0, 17
            # nil
        else:
            if var58001 >= users.length:
                revert with 0, 50
            users[var60001] = 0
            if users.length < 1:
                revert with 0, 17
            # nil
    else:
        if var38001 >= users.length:
            revert with 0, 50
        users[var40001] = 0
        if users.length < 1:
            revert with 0, 17
        if users.length - 1 >= users.length:
            revert with 0, 50
        if var46003 >= users.length:
            revert with 0, 50
        users[var46003] = users[users.length]
        if not users.length:
            revert with 0, 49
        users[users.length] = 0
        users.length--
        if var45001 == -1:
            revert with 0, 17
        if users.length < 1:
            revert with 0, 17
        if var57002 <= users.length - 1:
            # nil
        else:
            userCount = users.length
}



}
