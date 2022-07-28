contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
array of uint256 description;
uint256 version;
uint8 decimals;

function decimals() payable {
    return decimals
}

function version() payable {
    return version
}

function description() payable {
    return description[0 len description.length]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function latestRoundData() payable {
    return 101, stor1, 1597422127, block.timestamp, 101
}

function getRoundData(uint80 arg1) payable {
    require calldata.size - 4 >= 32
    return arg1 << 176, stor1, 1597422127, 1597695228, Mask(80, 0, arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setLatestPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 110033500
    require arg1 < 130033500
    stor1 = arg1
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



}
