contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of uint256 data;
address tokenTransferProxyAddress;

function getData(bytes32 arg1) payable {
    return data[arg1][0 len data[arg1].length]
}

function getTokenTransferProxy() payable {
    return tokenTransferProxyAddress
}

function isInitialized(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}



}
