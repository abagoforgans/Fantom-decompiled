contract main {




// =====================  Runtime code  =====================


address balanceKeeperAddress;
address lpKeeperAddress;
uint256 tokenId;

function tokenId() payable {
    return tokenId
}

function lpKeeper() payable {
    return lpKeeperAddress
}

function balanceKeeper() payable {
    return balanceKeeperAddress
}

function _fallback() payable {
    revert
}

function totalShares() payable {
    require ext_code.size(lpKeeperAddress)
    staticcall lpKeeperAddress.totalBalance(uint256 arg1) with:
            gas gas_remaining wei
           args tokenId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function shareById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(lpKeeperAddress)
    staticcall lpKeeperAddress.balance(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args tokenId, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
