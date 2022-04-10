contract main {




// =====================  Runtime code  =====================


#
#  - allocateSeigniorage()
#
mapping of uint8 stor0;
uint8 isInitialized; offset 160
address operatorAddress;
uint256 stor1;
uint256 startTime;
uint256 lastEpochTime;
uint256 epoch;
uint256 epochSupplyContractionLeft;
address dollarAddress;
address shareAddress;
address bondAddress;
address boardroomAddress;
address dollarOracleAddress;
uint256 dollarPriceOne;
uint256 dollarPriceCeiling;
uint256 seigniorageSaved;
uint256 maxSupplyExpansionPercent;
uint256 maxSupplyExpansionPercentInDebtPhase;
uint256 bondDepletionFloorPercent;
uint256 seigniorageExpansionFloorPercent;
uint256 maxSupplyContractionPercent;
uint256 maxDeptRatioPercent;
uint256 bootstrapEpochs;
uint256 bootstrapSupplyExpansionPercent;
uint256 sub_73da4185;
uint256 sub_fc3c3d97;
uint256 previousEpochDollarPrice;
uint256 maxDiscountRate;
uint256 maxPremiumRate;
uint256 discountPercent;
uint256 premiumPercent;
uint256 mintingFactorForPayingDebt;
address daoFundAddress;
uint256 daoFundSharedPercent;

function maxDeptRatioPercent() payable {
    return maxDeptRatioPercent
}

function initialized() payable {
    return bool(isInitialized)
}

function seigniorageExpansionFloorPercent() payable {
    return seigniorageExpansionFloorPercent
}

function discountPercent() payable {
    return discountPercent
}

function maxPremiumRate() payable {
    return maxPremiumRate
}

function isInitialized() payable {
    return bool(isInitialized)
}

function mintingFactorForPayingDebt() payable {
    return mintingFactorForPayingDebt
}

function dollarOracle() payable {
    return dollarOracleAddress
}

function dollar() payable {
    return dollarAddress
}

function daoFundSharedPercent() payable {
    return daoFundSharedPercent
}

function operator() payable {
    return operatorAddress
}

function getReserve() payable {
    return seigniorageSaved
}

function seigniorageSaved() payable {
    return seigniorageSaved
}

function boardroom() payable {
    return boardroomAddress
}

function bond() payable {
    return bondAddress
}

function dollarPriceCeiling() payable {
    return dollarPriceCeiling
}

function sub_73da4185(?) payable {
    return sub_73da4185
}

function startTime() payable {
    return startTime
}

function bondDepletionFloorPercent() payable {
    return bondDepletionFloorPercent
}

function maxSupplyExpansionPercentInDebtPhase() payable {
    return maxSupplyExpansionPercentInDebtPhase
}

function bootstrapSupplyExpansionPercent() payable {
    return bootstrapSupplyExpansionPercent
}

function lastEpochTime() payable {
    return lastEpochTime
}

function daoFund() payable {
    return daoFundAddress
}

function epoch() payable {
    return epoch
}

function dollarPriceOne() payable {
    return dollarPriceOne
}

function share() payable {
    return shareAddress
}

function maxDiscountRate() payable {
    return maxDiscountRate
}

function premiumPercent() payable {
    return premiumPercent
}

function maxSupplyExpansionPercent() payable {
    return maxSupplyExpansionPercent
}

function maxSupplyContractionPercent() payable {
    return maxSupplyContractionPercent
}

function bootstrapEpochs() payable {
    return bootstrapEpochs
}

function previousEpochDollarPrice() payable {
    return previousEpochDollarPrice
}

function sub_fc3c3d97(?) payable {
    return sub_fc3c3d97
}

function epochSupplyContractionLeft() payable {
    return epochSupplyContractionLeft
}

function _fallback() payable {
    revert
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    operatorAddress = arg1
}

function setBoardroom(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    boardroomAddress = arg1
}

function setMaxPremiumRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    maxPremiumRate = arg1
}

function setMaxDiscountRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    maxDiscountRate = arg1
}

function setDollarOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    dollarOracleAddress = arg1
}

function setPremiumPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 20000:
        revert with 0, '_premiumPercent is over 200%'
    premiumPercent = arg1
}

function setDiscountPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 20000:
        revert with 0, '_discountPercent is over 200%'
    discountPercent = arg1
}

function sub_0fe5cc1c(?) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0, 'zero'
    if arg2 > 3000:
        revert with 0, 'out of range'
    daoFundAddress = arg1
    daoFundSharedPercent = arg2
}

function setMaxDeptRatioPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < 1000:
        revert with 0, 'out of range'
    if arg1 > 10000:
        revert with 0, 'out of range'
    maxDeptRatioPercent = arg1
}

function setBondDepletionFloorPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < 500:
        revert with 0, 'out of range'
    if arg1 > 10000:
        revert with 0, 'out of range'
    bondDepletionFloorPercent = arg1
}

function setMaxSupplyContractionPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < 100:
        revert with 0, 'out of range'
    if arg1 > 1500:
        revert with 0, 'out of range'
    maxSupplyContractionPercent = arg1
}

function resetStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if epoch:
        revert with 0, 'already started'
    startTime = arg1
    if 8 * 3600 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    lastEpochTime = arg1 - (8 * 3600)
}

function boardroomSetOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(boardroomAddress)
    call boardroomAddress.0xb3ab15fb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function boardroomAllocateSeigniorage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(boardroomAddress)
    call boardroomAddress.0x97ffe1d7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getDollarPrice() payable {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    return ext_call.return_data[14 len 18]
}

function getDollarUpdatedPrice() payable {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.twap(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    return ext_call.return_data[14 len 18]
}

function boardroomGovernanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(boardroomAddress)
    call boardroomAddress.0x54575af4 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function nextEpochLength() payable {
    if epoch <= bootstrapEpochs:
        return sub_73da4185
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] > dollarPriceCeiling:
        return sub_73da4185
    return sub_fc3c3d97
}

function setDollarPriceCeiling(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < dollarPriceOne:
        revert with 0, 'out of range'
    if not dollarPriceOne:
        if arg1 > 0:
            revert with 0, 'out of range'
    else:
        if 120 * dollarPriceOne / dollarPriceOne != 120:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 > 120 * dollarPriceOne / 100:
            revert with 0, 'out of range'
    dollarPriceCeiling = arg1
}

function setMintingFactorForPayingDebt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x745f6d696e74696e67466163746f72466f72506179696e67446562743a206f7574206f662072616e67,
                    mem[205 len 23]
    if arg1 > 20000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x745f6d696e74696e67466163746f72466f72506179696e67446562743a206f7574206f662072616e67,
                    mem[205 len 23]
    mintingFactorForPayingDebt = arg1
}

function nextEpochPoint() payable {
    if epoch <= bootstrapEpochs:
        if sub_73da4185 + lastEpochTime < lastEpochTime:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_73da4185 + lastEpochTime)
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] > dollarPriceCeiling:
        if sub_73da4185 + lastEpochTime < lastEpochTime:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_73da4185 + lastEpochTime)
    if sub_fc3c3d97 + lastEpochTime < lastEpochTime:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_fc3c3d97 + lastEpochTime)
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if isInitialized:
        revert with 0, 'Treasury: already initialized'
    dollarAddress = arg1
    bondAddress = arg2
    shareAddress = arg3
    boardroomAddress = arg4
    dollarOracleAddress = arg5
    startTime = arg6
    if sub_73da4185 > arg6:
        revert with 0, 'SafeMath: subtraction overflow'
    lastEpochTime = arg6 - sub_73da4185
    dollarPriceOne = 10^18
    dollarPriceCeiling = 101 * 10^16
    maxSupplyExpansionPercent = 400
    maxSupplyExpansionPercentInDebtPhase = 600
    bondDepletionFloorPercent = 10000
    seigniorageExpansionFloorPercent = 5000
    maxSupplyContractionPercent = 400
    maxDeptRatioPercent = 5000
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    seigniorageSaved = ext_call.return_data[0]
    maxDiscountRate = 13 * 10^17
    maxPremiumRate = 13 * 10^17
    discountPercent = 0
    premiumPercent = 6500
    mintingFactorForPayingDebt = 10000
    stor1 = msg.sender or 0x10000000000000000000000000000000000000000 or Mask(88, 168, stor1) or Mask(96, 160, operatorAddress)
    emit Initialized(block.number, msg.sender);
}

function setMaxSupplyExpansionPercents(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x655f6d6178537570706c79457870616e73696f6e50657263656e743a206f7574206f662072616e67,
                    mem[204 len 24]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x655f6d6178537570706c79457870616e73696f6e50657263656e743a206f7574206f662072616e67,
                    mem[204 len 24]
    if arg2 < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x655f6d6178537570706c79457870616e73696f6e50657263656e74496e4465627450686173653a206f7574206f662072616e67,
                    mem[215 len 13]
    if arg2 > 1500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x655f6d6178537570706c79457870616e73696f6e50657263656e74496e4465627450686173653a206f7574206f662072616e67,
                    mem[215 len 13]
    if arg1 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x655f6d6178537570706c79457870616e73696f6e50657263656e74206973206f766572205f6d6178537570706c79457870616e73696f6e50657263656e74496e4465627450686173,
                    mem[236 len 24]
    maxSupplyExpansionPercent = arg1
    maxSupplyExpansionPercentInDebtPhase = arg2
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if dollarAddress == arg1:
        revert with 0, 'dollar'
    if bondAddress == arg1:
        revert with 0, 'bond'
    if shareAddress == arg1:
        revert with 0, 'share'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, arg2
        if not transfer(address rg1, uint256 rg2), address(arg3) << 64:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function getBondPremiumRate() payable {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] <= dollarPriceCeiling:
        return 0
    if not premiumPercent:
        return dollarPriceOne
    if dollarPriceOne > ext_call.return_data[14 len 18]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[14 len 18] - dollarPriceOne:
        if dollarPriceOne < dollarPriceOne:
            revert with 0, 'SafeMath: addition overflow'
        if maxDiscountRate <= 0:
            return dollarPriceOne
        if dollarPriceOne <= maxDiscountRate:
            return dollarPriceOne
    else:
        if (ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / ext_call.return_data[14 len 18] - dollarPriceOne != premiumPercent:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne < dollarPriceOne:
            revert with 0, 'SafeMath: addition overflow'
        if maxDiscountRate <= 0:
            return (((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne)
        if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne <= maxDiscountRate:
            return (((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne)
    return maxDiscountRate
}

function getBurnableDollarLeft() payable {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] > dollarPriceOne:
        return 0
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(bondAddress)
        staticcall bondAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 <= ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -ext_call.return_data[0]:
            if epochSupplyContractionLeft < 0:
                return epochSupplyContractionLeft
            else:
                return 0
        if -1 * Mask(144, 0, ext_call.return_data[0]) * ext_call.return_data[0] / -ext_call.return_data[0] != Mask(144, 0, ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if epochSupplyContractionLeft < -1 * Mask(144, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^18:
            return epochSupplyContractionLeft
        return (-1 * Mask(144, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^18)
    if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(bondAddress)
    staticcall bondAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if maxDeptRatioPercent * ext_call.return_data[0] / 10000 <= ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (maxDeptRatioPercent * ext_call.return_data[0] / 10000) - ext_call.return_data[0]:
        if epochSupplyContractionLeft < 0:
            return epochSupplyContractionLeft
        else:
            return 0
    if (maxDeptRatioPercent * ext_call.return_data[0] / 10000 * Mask(144, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(144, 0, ext_call.return_data[0])) / (maxDeptRatioPercent * ext_call.return_data[0] / 10000) - ext_call.return_data[0] != Mask(144, 0, ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if epochSupplyContractionLeft < (maxDeptRatioPercent * ext_call.return_data[0] / 10000 * Mask(144, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(144, 0, ext_call.return_data[0])) / 10^18:
        return epochSupplyContractionLeft
    return ((maxDeptRatioPercent * ext_call.return_data[0] / 10000 * Mask(144, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(144, 0, ext_call.return_data[0])) / 10^18)
}

function getBondDiscountRate() payable {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] > dollarPriceOne:
        return 0
    if not discountPercent:
        return dollarPriceOne
    if not dollarPriceOne:
        if ext_call.return_data[14 len 18] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[14 len 18]
        if dollarPriceOne > 0 / ext_call.return_data[14 len 18]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / ext_call.return_data[14 len 18]) - dollarPriceOne:
            if dollarPriceOne < dollarPriceOne:
                revert with 0, 'SafeMath: addition overflow'
            if maxDiscountRate <= 0:
                return dollarPriceOne
            if dollarPriceOne <= maxDiscountRate:
                return dollarPriceOne
        else:
            if (0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / (0 / ext_call.return_data[14 len 18]) - dollarPriceOne != discountPercent:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne < dollarPriceOne:
                revert with 0, 'SafeMath: addition overflow'
            if maxDiscountRate <= 0:
                return (((0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne)
            if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne <= maxDiscountRate:
                return (((0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne)
    else:
        if 10^18 * dollarPriceOne / dollarPriceOne != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[14 len 18] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[14 len 18]
        if dollarPriceOne > 10^18 * dollarPriceOne / ext_call.return_data[14 len 18]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (10^18 * dollarPriceOne / ext_call.return_data[14 len 18]) - dollarPriceOne:
            if dollarPriceOne < dollarPriceOne:
                revert with 0, 'SafeMath: addition overflow'
            if maxDiscountRate <= 0:
                return dollarPriceOne
            if dollarPriceOne <= maxDiscountRate:
                return dollarPriceOne
        else:
            if (10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / (10^18 * dollarPriceOne / ext_call.return_data[14 len 18]) - dollarPriceOne != discountPercent:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne < dollarPriceOne:
                revert with 0, 'SafeMath: addition overflow'
            if maxDiscountRate <= 0:
                return (((10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne)
            if ((10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne <= maxDiscountRate:
                return (((10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne)
    return maxDiscountRate
}

function getRedeemableBonds() payable {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] <= dollarPriceCeiling:
        return 0
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] <= dollarPriceCeiling:
        return 0
    if not premiumPercent:
        if not dollarPriceOne:
            return 0
        if not ext_call.return_data[0]:
            if dollarPriceOne <= 0:
                revert with 0, 'SafeMath: division by zero'
            if dollarPriceOne:
                return (0 / dollarPriceOne)
        else:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if dollarPriceOne <= 0:
                revert with 0, 'SafeMath: division by zero'
            if dollarPriceOne:
                return (10^18 * ext_call.return_data[0] / dollarPriceOne)
        ('iszero', ('stor', ('name', 'dollarPriceOne', 11)))
    else:
        if dollarPriceOne > ext_call.return_data[14 len 18]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[14 len 18] - dollarPriceOne:
            if dollarPriceOne < dollarPriceOne:
                revert with 0, 'SafeMath: addition overflow'
            if maxDiscountRate <= 0:
                if not dollarPriceOne:
                    return 0
                if not ext_call.return_data[0]:
                    if dollarPriceOne <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if dollarPriceOne:
                        return (0 / dollarPriceOne)
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if dollarPriceOne <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if dollarPriceOne:
                        return (10^18 * ext_call.return_data[0] / dollarPriceOne)
                ('iszero', ('stor', ('name', 'dollarPriceOne', 11)))
            else:
                if dollarPriceOne <= maxDiscountRate:
                    if not dollarPriceOne:
                        return 0
                    if not ext_call.return_data[0]:
                        if dollarPriceOne <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if dollarPriceOne:
                            return (0 / dollarPriceOne)
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if dollarPriceOne <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if dollarPriceOne:
                            return (10^18 * ext_call.return_data[0] / dollarPriceOne)
                    ('iszero', ('stor', ('name', 'dollarPriceOne', 11)))
                else:
                    if not maxDiscountRate:
                        return 0
                    if not ext_call.return_data[0]:
                        if maxDiscountRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if maxDiscountRate:
                            return (0 / maxDiscountRate)
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if maxDiscountRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if maxDiscountRate:
                            return (10^18 * ext_call.return_data[0] / maxDiscountRate)
                    ('iszero', ('stor', ('name', 'maxDiscountRate', 25)))
        else:
            if (ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / ext_call.return_data[14 len 18] - dollarPriceOne != premiumPercent:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne < dollarPriceOne:
                revert with 0, 'SafeMath: addition overflow'
            if maxDiscountRate <= 0:
                if not ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne:
                    return 0
                if not ext_call.return_data[0]:
                    if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne:
                        return (0 / ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne)
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne:
                        return (10^18 * ext_call.return_data[0] / ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne)
                ('iszero', ('add', ('div', ('add', ('mul', ('ext_call.return_data', 14, 18), ('stor', ('name', 'premiumPercent', 28))), ('mul', -1, ('stor', ('name', 'dollarPriceOne', 11)), ('stor', ('name', 'premiumPercent', 28)))), 10000), ('stor', ('name', 'dollarPriceOne', 11))))
            else:
                if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne <= maxDiscountRate:
                    if not ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne:
                        return 0
                    if not ext_call.return_data[0]:
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne:
                            return (0 / ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne)
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne:
                            return (10^18 * ext_call.return_data[0] / ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne)
                    ('iszero', ('add', ('div', ('add', ('mul', ('ext_call.return_data', 14, 18), ('stor', ('name', 'premiumPercent', 28))), ('mul', -1, ('stor', ('name', 'dollarPriceOne', 11)), ('stor', ('name', 'premiumPercent', 28)))), 10000), ('stor', ('name', 'dollarPriceOne', 11))))
                else:
                    if not maxDiscountRate:
                        return 0
                    if not ext_call.return_data[0]:
                        if maxDiscountRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if maxDiscountRate:
                            return (0 / maxDiscountRate)
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if maxDiscountRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if maxDiscountRate:
                            return (10^18 * ext_call.return_data[0] / maxDiscountRate)
                    ('iszero', ('stor', ('name', 'maxDiscountRate', 25)))
    revert
}

function redeemBonds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor0[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if block.timestamp < startTime:
        revert with 0, 'Treasury: not started yet'
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(bondAddress)
    staticcall bondAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(shareAddress)
    staticcall shareAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(boardroomAddress)
    staticcall boardroomAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6554726561737572793a2063616e6e6f742072656465656d20626f6e64732077697468207a65726f20616d6f756e,
                    mem[210 len 18]
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] != arg2:
        revert with 0, 'Treasury: dollar price moved'
    if ext_call.return_data[14 len 18] <= dollarPriceCeiling:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe54726561737572793a20646f6c6c61725072696365206e6f7420656c696769626c6520666f7220626f6e642070757263686173,
                    mem[216 len 12]
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] <= dollarPriceCeiling:
        revert with 0, 'Treasury: invalid bond rate'
    if not premiumPercent:
        if dollarPriceOne <= 0:
            revert with 0, 'Treasury: invalid bond rate'
        if not arg1:
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                            mem[201 len 27]
            if seigniorageSaved >= 0:
                if 0 > seigniorageSaved:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if seigniorageSaved > seigniorageSaved:
                    revert with 0, 'SafeMath: subtraction overflow'
                seigniorageSaved = 0
            require ext_code.size(bondAddress)
            call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(dollarAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
            mem[324 len 0] = 0
            call dollarAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(dollarOracleAddress)
            call dollarOracleAddress.update() with:
                 gas gas_remaining wei
            emit RedeemedBonds(0, arg1, msg.sender);
        else:
            if dollarPriceOne * arg1 / arg1 != dollarPriceOne:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < dollarPriceOne * arg1 / 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                            mem[201 len 27]
            if seigniorageSaved < dollarPriceOne * arg1 / 10^18:
                if seigniorageSaved > seigniorageSaved:
                    revert with 0, 'SafeMath: subtraction overflow'
                seigniorageSaved = 0
            else:
                if dollarPriceOne * arg1 / 10^18 > seigniorageSaved:
                    revert with 0, 'SafeMath: subtraction overflow'
                seigniorageSaved -= dollarPriceOne * arg1 / 10^18
            require ext_code.size(bondAddress)
            call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(dollarAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, dollarPriceOne * arg1 / 10^18) >> 32
            mem[324 len 0] = 0
            call dollarAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, dollarPriceOne * arg1 / 10^18) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), msg.sender, dollarPriceOne * arg1 / 10^18
                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(dollarOracleAddress)
            call dollarOracleAddress.update() with:
                 gas gas_remaining wei
            emit RedeemedBonds(dollarPriceOne * arg1 / 10^18, arg1, msg.sender);
    else:
        if dollarPriceOne > ext_call.return_data[14 len 18]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[14 len 18] - dollarPriceOne:
            if dollarPriceOne < dollarPriceOne:
                revert with 0, 'SafeMath: addition overflow'
            if maxDiscountRate <= 0:
                if dollarPriceOne <= 0:
                    revert with 0, 'Treasury: invalid bond rate'
                if not arg1:
                    require ext_code.size(dollarAddress)
                    staticcall dollarAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                    mem[201 len 27]
                    if seigniorageSaved < 0:
                        if seigniorageSaved > seigniorageSaved:
                            revert with 0, 'SafeMath: subtraction overflow'
                        seigniorageSaved = 0
                        require ext_code.size(bondAddress)
                        call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[324 len 4]
                    else:
                        if 0 > seigniorageSaved:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(bondAddress)
                        call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        mem[324 len 0] = 0
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    require ext_code.size(dollarOracleAddress)
                    call dollarOracleAddress.update() with:
                         gas gas_remaining wei
                    emit RedeemedBonds(0, arg1, msg.sender);
                else:
                    if dollarPriceOne * arg1 / arg1 != dollarPriceOne:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(dollarAddress)
                    staticcall dollarAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < dollarPriceOne * arg1 / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                    mem[201 len 27]
                    if seigniorageSaved < dollarPriceOne * arg1 / 10^18:
                        if seigniorageSaved > seigniorageSaved:
                            revert with 0, 'SafeMath: subtraction overflow'
                        seigniorageSaved = 0
                    else:
                        if dollarPriceOne * arg1 / 10^18 > seigniorageSaved:
                            revert with 0, 'SafeMath: subtraction overflow'
                        seigniorageSaved -= dollarPriceOne * arg1 / 10^18
                    require ext_code.size(bondAddress)
                    call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(dollarAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, dollarPriceOne * arg1 / 10^18) >> 32
                    mem[324 len 0] = 0
                    call dollarAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, dollarPriceOne * arg1 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), msg.sender, dollarPriceOne * arg1 / 10^18
                        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    require ext_code.size(dollarOracleAddress)
                    call dollarOracleAddress.update() with:
                         gas gas_remaining wei
                    emit RedeemedBonds(dollarPriceOne * arg1 / 10^18, arg1, msg.sender);
            else:
                if dollarPriceOne > maxDiscountRate:
                    if maxDiscountRate <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if arg1:
                        if maxDiscountRate * arg1 / arg1 != maxDiscountRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < maxDiscountRate * arg1 / 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved < maxDiscountRate * arg1 / 10^18:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        else:
                            if maxDiscountRate * arg1 / 10^18 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved -= maxDiscountRate * arg1 / 10^18
                        require ext_code.size(bondAddress)
                        call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, maxDiscountRate * arg1 / 10^18) >> 32
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, maxDiscountRate * arg1 / 10^18) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, maxDiscountRate * arg1 / 10^18
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(maxDiscountRate * arg1 / 10^18, arg1, msg.sender);
                    else:
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved >= 0:
                            if 0 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        require ext_code.size(bondAddress)
                        call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        mem[324 len 0] = 0
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(0, arg1, msg.sender);
                else:
                    if dollarPriceOne <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved >= 0:
                            if 0 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        require ext_code.size(bondAddress)
                        call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        mem[324 len 0] = 0
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(0, arg1, msg.sender);
                    else:
                        if dollarPriceOne * arg1 / arg1 != dollarPriceOne:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < dollarPriceOne * arg1 / 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved < dollarPriceOne * arg1 / 10^18:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        else:
                            if dollarPriceOne * arg1 / 10^18 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved -= dollarPriceOne * arg1 / 10^18
                        require ext_code.size(bondAddress)
                        call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, dollarPriceOne * arg1 / 10^18) >> 32
                        mem[324 len 0] = 0
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, dollarPriceOne * arg1 / 10^18) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, dollarPriceOne * arg1 / 10^18
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(dollarPriceOne * arg1 / 10^18, arg1, msg.sender);
        else:
            if (ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / ext_call.return_data[14 len 18] - dollarPriceOne != premiumPercent:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne < dollarPriceOne:
                revert with 0, 'SafeMath: addition overflow'
            if maxDiscountRate <= 0:
                if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne <= 0:
                    revert with 0, 'Treasury: invalid bond rate'
                if not arg1:
                    require ext_code.size(dollarAddress)
                    staticcall dollarAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                    mem[201 len 27]
                    if seigniorageSaved >= 0:
                        if 0 > seigniorageSaved:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(bondAddress)
                        call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[324 len 4]
                    else:
                        if seigniorageSaved > seigniorageSaved:
                            revert with 0, 'SafeMath: subtraction overflow'
                        seigniorageSaved = 0
                        require ext_code.size(bondAddress)
                        call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        mem[324 len 0] = 0
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    require ext_code.size(dollarOracleAddress)
                    call dollarOracleAddress.update() with:
                         gas gas_remaining wei
                    emit RedeemedBonds(0, arg1, msg.sender);
                else:
                    if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / arg1 != ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(dollarAddress)
                    staticcall dollarAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                    mem[201 len 27]
                    if seigniorageSaved < ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18:
                        if seigniorageSaved > seigniorageSaved:
                            revert with 0, 'SafeMath: subtraction overflow'
                        seigniorageSaved = 0
                    else:
                        if ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18 > seigniorageSaved:
                            revert with 0, 'SafeMath: subtraction overflow'
                        seigniorageSaved -= ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18
                    require ext_code.size(bondAddress)
                    call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(dollarAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) >> 32
                    mem[324 len 0] = 0
                    call dollarAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), 
                                        msg.sender,
                                        ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18
                        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    require ext_code.size(dollarOracleAddress)
                    call dollarOracleAddress.update() with:
                         gas gas_remaining wei
                    emit RedeemedBonds(((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18, arg1, msg.sender);
            else:
                if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne <= maxDiscountRate:
                    if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved >= 0:
                            if 0 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        require ext_code.size(bondAddress)
                        call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        mem[324 len 0] = 0
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(0, arg1, msg.sender);
                    else:
                        if ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / arg1 != ((ext_call.return_data[14 len 18] * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000) + dollarPriceOne:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved < ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        else:
                            if ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved -= ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18
                        require ext_code.size(bondAddress)
                        call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) >> 32
                        mem[324 len 0] = 0
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), 
                                            msg.sender,
                                            ((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(((Mask(144, 0, ext_call.return_data[0]) * premiumPercent) - (dollarPriceOne * premiumPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18, arg1, msg.sender);
                else:
                    if maxDiscountRate <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved < 0:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                            require ext_code.size(bondAddress)
                            call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(dollarAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            call dollarAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                        else:
                            if 0 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(bondAddress)
                            call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(dollarAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            mem[324 len 0] = 0
                            call dollarAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(0, arg1, msg.sender);
                    else:
                        if maxDiscountRate * arg1 / arg1 != maxDiscountRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < maxDiscountRate * arg1 / 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6c54726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                                        mem[201 len 27]
                        if seigniorageSaved < maxDiscountRate * arg1 / 10^18:
                            if seigniorageSaved > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved = 0
                        else:
                            if maxDiscountRate * arg1 / 10^18 > seigniorageSaved:
                                revert with 0, 'SafeMath: subtraction overflow'
                            seigniorageSaved -= maxDiscountRate * arg1 / 10^18
                        require ext_code.size(bondAddress)
                        call bondAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, maxDiscountRate * arg1 / 10^18) >> 32
                        mem[324 len 0] = 0
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, maxDiscountRate * arg1 / 10^18) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, maxDiscountRate * arg1 / 10^18
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit RedeemedBonds(maxDiscountRate * arg1 / 10^18, arg1, msg.sender);
    stor0[block.number][tx.origin] = 1
    stor0[block.number][msg.sender] = 1
}

function buyBonds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor0[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if block.timestamp < startTime:
        revert with 0, 'Treasury: not started yet'
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(bondAddress)
    staticcall bondAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(shareAddress)
    staticcall shareAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(boardroomAddress)
    staticcall boardroomAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    if epoch < bootstrapEpochs:
        revert with 0, 'Treasury: still in boostrap'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7754726561737572793a2063616e6e6f7420707572636861736520626f6e64732077697468207a65726f20616d6f756e,
                    mem[212 len 16]
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] != arg2:
        revert with 0, 'Treasury: dollar price moved'
    if ext_call.return_data[14 len 18] >= dollarPriceOne:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe54726561737572793a20646f6c6c61725072696365206e6f7420656c696769626c6520666f7220626f6e642070757263686173,
                    mem[216 len 12]
    if arg1 > epochSupplyContractionLeft:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6554726561737572793a206e6f7420656e6f75676820626f6e64206c65667420746f2070757263686173,
                    mem[206 len 22]
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6554726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] > dollarPriceOne:
        revert with 0, 'Treasury: invalid bond rate'
    if not discountPercent:
        if dollarPriceOne <= 0:
            revert with 0, 'Treasury: invalid bond rate'
        if not arg1:
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(bondAddress)
            staticcall bondAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'over max debt ratio'
            else:
                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                    revert with 0, 'over max debt ratio'
            require ext_code.size(dollarAddress)
            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(bondAddress)
            call bondAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > epochSupplyContractionLeft:
                revert with 0, 'SafeMath: subtraction overflow'
            epochSupplyContractionLeft -= arg1
            require ext_code.size(dollarOracleAddress)
            call dollarOracleAddress.update() with:
                 gas gas_remaining wei
            emit BoughtBonds(arg1, 0, msg.sender);
        else:
            if dollarPriceOne * arg1 / arg1 != dollarPriceOne:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(bondAddress)
            staticcall bondAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] > 0:
                    revert with 0, 'over max debt ratio'
            else:
                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                    revert with 0, 'over max debt ratio'
            require ext_code.size(dollarAddress)
            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(bondAddress)
            call bondAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, dollarPriceOne * arg1 / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > epochSupplyContractionLeft:
                revert with 0, 'SafeMath: subtraction overflow'
            epochSupplyContractionLeft -= arg1
            require ext_code.size(dollarOracleAddress)
            call dollarOracleAddress.update() with:
                 gas gas_remaining wei
            emit BoughtBonds(arg1, dollarPriceOne * arg1 / 10^18, msg.sender);
    else:
        if not dollarPriceOne:
            if ext_call.return_data[14 len 18] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[14 len 18]
            if dollarPriceOne > 0 / ext_call.return_data[14 len 18]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / ext_call.return_data[14 len 18]) - dollarPriceOne:
                if dollarPriceOne < dollarPriceOne:
                    revert with 0, 'SafeMath: addition overflow'
                if maxDiscountRate <= 0:
                    if dollarPriceOne <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(bondAddress)
                        staticcall bondAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(dollarAddress)
                        call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bondAddress)
                        call bondAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, 0, msg.sender);
                    else:
                        if dollarPriceOne * arg1 / arg1 != dollarPriceOne:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(bondAddress)
                        staticcall bondAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(dollarAddress)
                        call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bondAddress)
                        call bondAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, dollarPriceOne * arg1 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, dollarPriceOne * arg1 / 10^18, msg.sender);
                else:
                    if dollarPriceOne <= maxDiscountRate:
                        if dollarPriceOne <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if dollarPriceOne * arg1 / arg1 != dollarPriceOne:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, dollarPriceOne * arg1 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, dollarPriceOne * arg1 / 10^18, msg.sender);
                    else:
                        if maxDiscountRate <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if maxDiscountRate * arg1 / arg1 != maxDiscountRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, maxDiscountRate * arg1 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, maxDiscountRate * arg1 / 10^18, msg.sender);
            else:
                if (0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / (0 / ext_call.return_data[14 len 18]) - dollarPriceOne != discountPercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne < dollarPriceOne:
                    revert with 0, 'SafeMath: addition overflow'
                if maxDiscountRate <= 0:
                    if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(bondAddress)
                        staticcall bondAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(dollarAddress)
                        call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bondAddress)
                        call bondAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, 0, msg.sender);
                    else:
                        if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / arg1 != ((0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(bondAddress)
                        staticcall bondAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if (((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) + ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(dollarAddress)
                        call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bondAddress)
                        call bondAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, ((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18, msg.sender);
                else:
                    if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne <= maxDiscountRate:
                        if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if ((0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / arg1 != ((0 / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if (((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, ((0 / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18, msg.sender);
                    else:
                        if maxDiscountRate <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if maxDiscountRate * arg1 / arg1 != maxDiscountRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, maxDiscountRate * arg1 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, maxDiscountRate * arg1 / 10^18, msg.sender);
        else:
            if 10^18 * dollarPriceOne / dollarPriceOne != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[14 len 18] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[14 len 18]
            if dollarPriceOne > 10^18 * dollarPriceOne / ext_call.return_data[14 len 18]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (10^18 * dollarPriceOne / ext_call.return_data[14 len 18]) - dollarPriceOne:
                if dollarPriceOne < dollarPriceOne:
                    revert with 0, 'SafeMath: addition overflow'
                if maxDiscountRate <= 0:
                    if dollarPriceOne <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(bondAddress)
                        staticcall bondAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(dollarAddress)
                        call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bondAddress)
                        call bondAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, 0, msg.sender);
                    else:
                        if dollarPriceOne * arg1 / arg1 != dollarPriceOne:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(bondAddress)
                        staticcall bondAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(dollarAddress)
                        call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bondAddress)
                        call bondAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, dollarPriceOne * arg1 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, dollarPriceOne * arg1 / 10^18, msg.sender);
                else:
                    if dollarPriceOne <= maxDiscountRate:
                        if dollarPriceOne <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if dollarPriceOne * arg1 / arg1 != dollarPriceOne:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, dollarPriceOne * arg1 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, dollarPriceOne * arg1 / 10^18, msg.sender);
                    else:
                        if maxDiscountRate <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if maxDiscountRate * arg1 / arg1 != maxDiscountRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, maxDiscountRate * arg1 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, maxDiscountRate * arg1 / 10^18, msg.sender);
            else:
                if (10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / (10^18 * dollarPriceOne / ext_call.return_data[14 len 18]) - dollarPriceOne != discountPercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne < dollarPriceOne:
                    revert with 0, 'SafeMath: addition overflow'
                if maxDiscountRate <= 0:
                    if ((10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne <= 0:
                        revert with 0, 'Treasury: invalid bond rate'
                    if not arg1:
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(bondAddress)
                        staticcall bondAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(dollarAddress)
                        call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bondAddress)
                        call bondAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, 0, msg.sender);
                    else:
                        if ((10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / arg1 != ((10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(bondAddress)
                        staticcall bondAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (((10^18 * dollarPriceOne / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if (((10^18 * dollarPriceOne / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) + ext_call.return_data[0] > 0:
                                revert with 0, 'over max debt ratio'
                        else:
                            if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (((10^18 * dollarPriceOne / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                revert with 0, 'over max debt ratio'
                        require ext_code.size(dollarAddress)
                        call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bondAddress)
                        call bondAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ((10^18 * dollarPriceOne / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > epochSupplyContractionLeft:
                            revert with 0, 'SafeMath: subtraction overflow'
                        epochSupplyContractionLeft -= arg1
                        require ext_code.size(dollarOracleAddress)
                        call dollarOracleAddress.update() with:
                             gas gas_remaining wei
                        emit BoughtBonds(arg1, ((10^18 * dollarPriceOne / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18, msg.sender);
                else:
                    if ((10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne <= maxDiscountRate:
                        if ((10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if ((10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / arg1 != ((10^18 * dollarPriceOne / ext_call.return_data[14 len 18] * discountPercent) - (dollarPriceOne * discountPercent) / 10000) + dollarPriceOne:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (((10^18 * dollarPriceOne / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if (((10^18 * dollarPriceOne / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (((10^18 * dollarPriceOne / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ((10^18 * dollarPriceOne / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, ((10^18 * dollarPriceOne / Mask(144, 0, ext_call.return_data[0]) * discountPercent) - (dollarPriceOne * discountPercent) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18, msg.sender);
                    else:
                        if maxDiscountRate <= 0:
                            revert with 0, 'Treasury: invalid bond rate'
                        if not arg1:
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, 0, msg.sender);
                        else:
                            if maxDiscountRate * arg1 / arg1 != maxDiscountRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(bondAddress)
                            staticcall bondAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0]:
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > 0:
                                    revert with 0, 'over max debt ratio'
                            else:
                                if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (maxDiscountRate * arg1 / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                                    revert with 0, 'over max debt ratio'
                            require ext_code.size(dollarAddress)
                            call dollarAddress.burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bondAddress)
                            call bondAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, maxDiscountRate * arg1 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > epochSupplyContractionLeft:
                                revert with 0, 'SafeMath: subtraction overflow'
                            epochSupplyContractionLeft -= arg1
                            require ext_code.size(dollarOracleAddress)
                            call dollarOracleAddress.update() with:
                                 gas gas_remaining wei
                            emit BoughtBonds(arg1, maxDiscountRate * arg1 / 10^18, msg.sender);
    stor0[block.number][tx.origin] = 1
    stor0[block.number][msg.sender] = 1
}



}
