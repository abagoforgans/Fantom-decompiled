contract main {




// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
address comptrollerImplementationAddress;
address pendingComptrollerImplementationAddress;
address oracleAddress;
uint256 closeFactorMantissa;
uint256 liquidationIncentiveMantissa;
uint256 maxAssets;
array of address accountAssets;
mapping of struct markets;
uint8 _mintGuardianPaused; offset 160
uint8 _borrowGuardianPaused; offset 168
uint8 transferGuardianPaused; offset 176
uint8 seizeGuardianPaused; offset 184
address pauseGuardianAddress;
mapping of uint8 stor11;
mapping of uint8 stor12;
array of address allMarkets;
uint256 compRate;
mapping of uint256 compSpeeds;
mapping of struct compSupplyState;
mapping of struct compBorrowState;
mapping of uint256 compSupplierIndex;
mapping of uint256 compBorrowerIndex;
mapping of uint256 compAccrued;

function compSpeeds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return compSpeeds[arg1]
}

function pauseGuardian() payable {
    return pauseGuardianAddress
}

function pendingAdmin() payable {
    return pendingAdminAddress
}

function _mintGuardianPaused() payable {
    return bool(_mintGuardianPaused)
}

function liquidationIncentiveMantissa() payable {
    return liquidationIncentiveMantissa
}

function allMarkets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < allMarkets.length
    return allMarkets[arg1]
}

function compSupplyState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return compSupplyState[arg1].field_0, compSupplyState[arg1].field_224
}

function borrowGuardianPaused(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function mintGuardianPaused(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function oracle() payable {
    return oracleAddress
}

function transferGuardianPaused() payable {
    return bool(transferGuardianPaused)
}

function compBorrowState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return compBorrowState[arg1].field_0, compBorrowState[arg1].field_224
}

function markets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(markets[arg1].field_0), markets[arg1].field_256, bool(markets[arg1].field_768)
}

function maxAssets() payable {
    return maxAssets
}

function compRate() payable {
    return compRate
}

function seizeGuardianPaused() payable {
    return bool(seizeGuardianPaused)
}

function compSupplierIndex(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return compSupplierIndex[arg1][arg2]
}

function comptrollerImplementation() payable {
    return comptrollerImplementationAddress
}

function compBorrowerIndex(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return compBorrowerIndex[arg1][arg2]
}

function compAccrued(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return compAccrued[arg1]
}

function accountAssets(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < uint256(accountAssets[arg1])
    return address(accountAssets[arg1][arg2])
}

function pendingComptrollerImplementation() payable {
    return pendingComptrollerImplementationAddress
}

function _borrowGuardianPaused() payable {
    return bool(_borrowGuardianPaused)
}

function closeFactorMantissa() payable {
    return closeFactorMantissa
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}



}
