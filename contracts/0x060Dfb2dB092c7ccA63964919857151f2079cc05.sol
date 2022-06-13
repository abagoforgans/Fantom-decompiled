contract main {




// =====================  Runtime code  =====================


#
#  - raffle()
#
address masterChefAddress;
address lastWinnerAddress;
uint256 sub_8f645589;
uint256 sub_6986d1fd;
uint256 sub_9304253a;

function masterChef() {
    return masterChefAddress
}

function sub_6986d1fd(?) {
    return sub_6986d1fd
}

function sub_8f645589(?) {
    return sub_8f645589
}

function sub_9304253a(?) {
    return sub_9304253a
}

function getLastWinner() {
    if not lastWinnerAddress:
        revert with 0, 'No winner already'
    return lastWinnerAddress
}

function lastWinner() {
    return lastWinnerAddress
}

function _fallback() payable {
    revert
}

function checkRaffle() {
    return block.number >= sub_9304253a
}



}
