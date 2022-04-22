contract main {




// =====================  Runtime code  =====================


const sub_7fc4eda8(?) = 480


uint256 epochStart;
uint256 epochCounter;
uint256 EPOCH_DURATION;
mapping of uint8 stor5;
uint256 stor7;
uint256 lastWinner;
uint8 stor9;
uint256 sub_68eaf762;
uint256 entryFee;
address stor12;

function entryFee() {
    return entryFee
}

function epochCounter() {
    return epochCounter
}

function epochStart() {
    return epochStart
}

function sub_216beebd(?) {
    require calldata.size - 4 >= 64
    return bool(stor5[arg1][arg2])
}

function sub_68eaf762(?) {
    return sub_68eaf762
}

function EPOCH_DURATION() {
    return EPOCH_DURATION
}

function claimed() {
    return bool(stor9)
}

function getLastWinner() {
    return lastWinner
}

function claim() {
    # nil
}

function enter() payable {
    # nil
}

function _fallback() payable {
    revert
}

function getCurrentWinner() {
    return (stor7 % 64 * 3600)
}

function sub_c6e43b7d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor12
    sub_68eaf762 = arg1
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor12
    stor12 = arg1
}

function setEntryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor12
    entryFee = arg1
}



}
