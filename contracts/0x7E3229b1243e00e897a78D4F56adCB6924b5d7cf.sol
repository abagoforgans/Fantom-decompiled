contract main {




// =====================  Runtime code  =====================


#
#  - retire(address arg1, address arg2)
#  - withdraw(uint256 arg1, address arg2, address arg3)
#
address sub_647aba30Address;
address vaultAddress;
address tokenAddress;
uint256 sub_74f2da3a;

function sub_647aba30(?) payable {
    return sub_647aba30Address
}

function sub_74f2da3a(?) payable {
    return sub_74f2da3a
}

function sub_8648686a(?) payable {
    return tokenAddress
}

function vault() payable {
    return vaultAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function deposit(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if sub_647aba30Address != msg.sender:
        revert with 0, 'Only cartographer'
}



}
