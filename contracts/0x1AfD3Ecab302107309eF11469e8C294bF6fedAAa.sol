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

function updateUserAddress(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require msg.sender == user[arg1]
    user[arg1] = arg2
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

function banUser(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    user[arg1] = 0
    if users.length < 1:
        revert with 0, 17
    if var34002 > users.length - 1:
    if var36001 >= users.length:
        revert with 0, 50
    if arg1 != users[var38001]:
        if var42001 == -1:
            revert with 0, 17
        if users.length < 1:
            revert with 0, 17
        if var54002 > users.length - 1:
        if var56001 >= users.length:
            revert with 0, 50
        if arg1 != users[var58001]:
            if var62001 == -1:
                revert with 0, 17
            # nil
        else:
            if var60001 >= users.length:
                revert with 0, 50
            users[var62001] = 0
            if users.length < 1:
                revert with 0, 17
            # nil
    else:
        if var40001 >= users.length:
            revert with 0, 50
        users[var42001] = 0
        if users.length < 1:
            revert with 0, 17
        if users.length - 1 >= users.length:
            revert with 0, 50
        if var48003 >= users.length:
            revert with 0, 50
        users[var48003] = users[users.length]
        if not users.length:
            revert with 0, 49
        users[users.length] = 0
        users.length--
        if not userCount:
            revert with 0, 17
        userCount--
        if var47001 == -1:
            revert with 0, 17
        if users.length < 1:
            revert with 0, 17
        if var59002 > users.length - 1:
        # nil
}



}
