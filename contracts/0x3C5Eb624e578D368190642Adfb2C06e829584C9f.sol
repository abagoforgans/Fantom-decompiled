contract main {




// =====================  Runtime code  =====================


#
#  - sub_55fbc3b0(?)
#
const version = 101


address owner;
address feeTokenAddress;
address feeWalletAddress;
uint256 feeAmount;
uint256 burnPercent;
uint256 divider;

function burnPercent() payable {
    return burnPercent
}

function divider() payable {
    return divider
}

function feeToken() payable {
    return feeTokenAddress
}

function feeAmount() payable {
    return feeAmount
}

function owner() payable {
    return owner
}

function feeWallet() payable {
    return feeWalletAddress
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

function setFeeAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAmount = arg1
    emit FeeAmountUpdated(arg1);
}

function setFeeWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeWalletAddress = arg1
    emit FeeWalletUpdated(arg1);
}

function setFeeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint32(ext_code.size(arg1)) <= 0:
        revert with 0, 'New address is not a token'
    feeTokenAddress = arg1
    emit TokenFeeUpdated(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[20467 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setBurnPercent(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[20576 len 38], mem[202 len 26]
    burnPercent = arg1
    divider = arg2
    emit BurnPercentUpdated(arg1, arg2);
}



}
