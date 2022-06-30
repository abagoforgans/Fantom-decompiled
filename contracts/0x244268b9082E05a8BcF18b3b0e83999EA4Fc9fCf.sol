contract main {




// =====================  Runtime code  =====================


#
#  - deploy(address[] arg1, uint8[] arg2, string arg3, string arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9)
#
address owner;
array of struct metaSwapPoolInfo;
address metaSwapAddress;
address metaSwapDepositAddress;

function metaSwapPoolLength() payable {
    return metaSwapPoolInfo.length
}

function metaSwapAddress() payable {
    return metaSwapAddress
}

function owner() payable {
    return owner
}

function metaSwapDepositAddress() payable {
    return metaSwapDepositAddress
}

function metaSwapPoolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < metaSwapPoolInfo.length
    return metaSwapPoolInfo[arg1].field_0, metaSwapPoolInfo[arg1].field_256
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
