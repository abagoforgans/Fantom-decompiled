contract main {




// =====================  Runtime code  =====================


#
#  - join()
#
address owner;
array of struct users;
uint256 currentlyPaying;
uint256 totalUsers;

function users(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < users.length
    return users[arg1].field_0, users[arg1].field_256
}

function currentlyPaying() {
    return currentlyPaying
}

function owner() {
    return owner
}

function totalUsers() {
    return totalUsers
}

function _fallback() payable {
    revert
}



}
