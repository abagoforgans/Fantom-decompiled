contract main {




// =====================  Runtime code  =====================


#
#  - withdrawTokens(address arg1, uint256 arg2)
#
address owner;
address sub_960a0cb1Address;
uint256 keyHash;
uint256 latestRequestId;
uint32 viewRandomResult;
uint256 fee;
uint256 viewLatestLotteryId;

function latestRequestId() payable {
    return latestRequestId
}

function randomResult() payable {
    return viewRandomResult
}

function keyHash() payable {
    return keyHash
}

function owner() payable {
    return owner
}

function sub_960a0cb1(?) payable {
    return sub_960a0cb1Address
}

function viewRandomResult() payable {
    return viewRandomResult
}

function fee() payable {
    return fee
}

function latestLotteryId() payable {
    return viewLatestLotteryId
}

function viewLatestLotteryId() payable {
    return viewLatestLotteryId
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setLotteryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_960a0cb1Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getRandomNumber() payable {
    if sub_960a0cb1Address != msg.sender:
        revert with 0, 'Only HyperLottery'
    if block.number < 1:
        revert with 0, 17
    if 10000 > !(sha3(block.hash(block.number - 1), block.difficulty, block.timestamp) % 10000):
        revert with 0, 17
    viewRandomResult = uint32((sha3(block.hash(block.number - 1), block.difficulty, block.timestamp) % 10000) + 10000)
    require ext_code.size(sub_960a0cb1Address)
    call sub_960a0cb1Address.0x80a06160 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    viewLatestLotteryId = ext_call.return_data[0]
    return latestRequestId
}



}
