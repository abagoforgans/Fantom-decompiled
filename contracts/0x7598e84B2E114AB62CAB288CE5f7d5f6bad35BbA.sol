contract main {




// =====================  Runtime code  =====================


address gasPriceOracleAddress;
address storC8FC;

function getGasPriceOracle() payable {
    return gasPriceOracleAddress
}

function _fallback() payable {
    revert
}

function setGasPriceOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    gasPriceOracleAddress = arg1
    emit LogSetGasPriceOracle(arg1);
}



}
