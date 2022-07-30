contract main {




// =====================  Runtime code  =====================


const getRequestFee = 0


uint32 lastRequestId; offset 160
address owner;
mapping of uint256 stor1;
mapping of uint32 stor2;

function getLastRequestId() payable {
    return lastRequestId
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isRequestComplete(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    return (block.number > uint32(stor2[arg1 << 224] + 1))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function randomNumber(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= uint32(stor2[arg1 << 224] + 1):
        revert with 0, 'RNGBlockhash/request-incomplete'
    if not stor1[arg1 << 224]:
        stor1[arg1 << 224] = block.hash(block.number - 1)
        emit RandomNumberCompleted(block.hash(block.number - 1), arg1);
    return stor1[arg1 << 224]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function requestRandomNumber() payable {
    if lastRequestId + 1 < lastRequestId:
        revert with 0, 'SafeMath: addition overflow'
    if lastRequestId + 1 >= 4294967296:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7353616665436173743a2076616c756520646f65736e27742066697420696e20333220626974,
                    mem[202 len 26]
    lastRequestId = uint32(lastRequestId + 1)
    stor2[stor0 + 1 << 224] = uint32(block.number)
    emit RandomNumberRequested(uint32(lastRequestId + 1), msg.sender);
    return lastRequestId + 1 << 224, uint32(block.number)
}



}
