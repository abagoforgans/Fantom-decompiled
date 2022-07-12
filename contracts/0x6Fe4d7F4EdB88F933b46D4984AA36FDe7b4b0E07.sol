contract main {




// =====================  Runtime code  =====================


address owner;
address oracleAddress;
uint256 nonce;
mapping of uint256 sub_0091348e;
uint256 lastRandom;

function sub_0091348e(?) payable {
    require calldata.size - 4 >= 32
    return sub_0091348e[arg1]
}

function oracle() payable {
    return oracleAddress
}

function owner() payable {
    return owner
}

function lastRandom() payable {
    return lastRandom
}

function nonce() payable {
    return nonce
}

function _fallback() payable {
    revert
}

function sub_a3f03687(?) payable {
    require calldata.size - 4 >= 64
    if oracleAddress != msg.sender:
        revert with 0, 'oracle only'
    if not sub_0091348e[arg1]:
        revert with 0, 'unknown seed'
    lastRandom = arg2
}

function request() payable {
    if owner != msg.sender:
        revert with 0, 'owner only'
    nonce++
    sub_0091348e[Mask(160, 96, msg.sender) >> 96][stor2 + 1] = nonce + 1
    require ext_code.size(oracleAddress)
    call oracleAddress.0xbd313d78 with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, msg.sender) >> 96, nonce + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
