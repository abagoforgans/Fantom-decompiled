contract main {




// =====================  Runtime code  =====================


#
#  - retire(address arg1, address arg2)
#  - withdraw(uint256 arg1, address arg2, address arg3)
#  - deposit(address arg1, address arg2)
#
address owner;
address sub_647aba30Address;
address masterChefAddress;
uint256 masterChefPid;
address tokenAddress;
address rewardTokenAddress;
uint256 sub_74f2da3a;

function masterChef() payable {
    return masterChefAddress
}

function sub_647aba30(?) payable {
    return sub_647aba30Address
}

function sub_74f2da3a(?) payable {
    return sub_74f2da3a
}

function sub_8648686a(?) payable {
    return tokenAddress
}

function owner() payable {
    return owner
}

function masterChefPid() payable {
    return masterChefPid
}

function rewardToken() payable {
    return rewardTokenAddress
}

function token() payable {
    return tokenAddress
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
