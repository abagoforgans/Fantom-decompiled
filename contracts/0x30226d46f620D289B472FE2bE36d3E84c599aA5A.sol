contract main {




// =====================  Runtime code  =====================


#
#  - recoverToken(address arg1, uint256 arg2)
#
const MAX_TREASURY_FEE = 1000


uint8 stor0; offset 160
address owner;
uint256 stor1;
uint8 stor2; offset 160
uint8 stor2; offset 168
uint16 stor2; offset 160
address oracleAddress;
address adminAddress;
address operatorAddress;
uint256 bufferSeconds;
uint256 intervalSeconds;
uint256 minBetAmount;
uint256 treasuryFee;
uint256 treasuryAmount;
uint256 currentEpoch;
uint128 stor11;
uint256 stor11; offset 80
uint256 oracleLatestRoundId;
uint256 oracleUpdateAllowance;
mapping of struct ledger;
mapping of struct rounds;

function genesisLockOnce() {
    return bool(uint8(stor2.field_160))
}

function operatorAddress() {
    return operatorAddress
}

function getUserRoundsLength(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRoundsLength[address(arg1)]
}

function treasuryAmount() {
    return treasuryAmount
}

function paused() {
    return bool(stor0)
}

function oracleUpdateAllowance() {
    return oracleUpdateAllowance
}

function ledger(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if ledger[arg1][arg2].field_0 >= 2:
        revert with 'NH{q', 33
    return ledger[arg1][arg2].field_0, ledger[arg1][arg2].field_256, bool(ledger[arg1][arg2].field_512)
}

function currentEpoch() {
    return currentEpoch
}

function intervalSeconds() {
    return intervalSeconds
}

function oracle() {
    return oracleAddress
}

function rounds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return rounds[arg1].field_0, 
           rounds[arg1].field_256,
           rounds[arg1].field_512,
           rounds[arg1].field_768,
           rounds[arg1].field_1024,
           rounds[arg1].field_1280,
           rounds[arg1].field_1536,
           rounds[arg1].field_1792,
           rounds[arg1].field_2048,
           rounds[arg1].field_2304,
           rounds[arg1].field_2560,
           rounds[arg1].field_2816,
           rounds[arg1].field_3072,
           bool(rounds[arg1].field_3328)
}

function owner() {
    return owner
}

function treasuryFee() {
    return treasuryFee
}

function userRounds(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < userRoundsLength[arg1]
    return userRoundsLength[arg1][arg2]
}

function bufferSeconds() {
    return bufferSeconds
}

function oracleLatestRoundId() {
    return oracleLatestRoundId
}

function genesisStartOnce() {
    return bool(uint8(stor2.field_168))
}

function minBetAmount() {
    return minBetAmount
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setOracleUpdateAllowance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 'Pausable: not paused'
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    oracleUpdateAllowance = arg1
    emit NewOracleUpdateAllowance(arg1);
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    operatorAddress = arg1
    emit NewOperatorAddress(arg1);
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    adminAddress = arg1
    emit NewAdminAddress(arg1);
}

function unpause() {
    if not stor0:
        revert with 0, 'Pausable: not paused'
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    uint16(stor2.field_160) = 0
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    emit Unpause(currentEpoch);
}

function pause() {
    if stor0:
        revert with 0, 'Pausable: paused'
    if adminAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0, 'Not operator/admin'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    emit Pause(currentEpoch);
}

function setMinBetAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 'Pausable: not paused'
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    if not arg1:
        revert with 0, 'Must be superior to 0'
    minBetAmount = arg1
    emit NewMinBetAmount(arg1, currentEpoch);
}

function setTreasuryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 'Pausable: not paused'
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    if arg1 > 1000:
        revert with 0, 'Treasury fee too high'
    treasuryFee = arg1
    emit NewTreasuryFee(arg1, currentEpoch);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setBufferAndIntervalSeconds(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor0:
        revert with 0, 'Pausable: not paused'
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'bufferSeconds must be inferior to intervalSeconds'
    bufferSeconds = arg1
    intervalSeconds = arg2
    emit NewBufferAndIntervalSeconds(arg1, arg2);
}

function refundable(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if ledger[arg1][address(arg2)].field_0 > 1:
        revert with 'NH{q', 33
    if rounds[arg1].field_3328:
        return not bool(rounds[arg1].field_3328)
    if ledger[arg1][address(arg2)].field_512:
        return not bool(ledger[arg1][address(arg2)].field_512)
    if rounds[arg1].field_768 > !bufferSeconds:
        revert with 'NH{q', 17
    if block.timestamp <= rounds[arg1].field_768 + bufferSeconds:
        return (block.timestamp > rounds[arg1].field_768 + bufferSeconds)
    return bool(ledger[arg1][address(arg2)].field_256)
}

function claimTreasury() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    treasuryAmount = 0
    call adminAddress with:
       value treasuryAmount wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TransferHelper: FTM_TRANSFER_FAILED'
    else:
        if not ext_call.success:
            revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
    ('bool', 'ext_call.success')
    emit TreasuryClaim(treasuryAmount);
    stor1 = 1
}

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0:
        revert with 0, 'Pausable: not paused'
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    oracleLatestRoundId = 0
    oracleAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    emit NewOracle(arg1);
}

function genesisStartRound() {
    if stor0:
        revert with 0, 'Pausable: paused'
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    if uint8(stor2.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only run genesisStartRound once'
    if 1 > !currentEpoch:
        revert with 'NH{q', 17
    currentEpoch++
    rounds[stor10 + 1].field_256 = block.timestamp
    if block.timestamp > !intervalSeconds:
        revert with 'NH{q', 17
    rounds[stor10 + 1].field_512 = block.timestamp + intervalSeconds
    if intervalSeconds > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if block.timestamp > !(2 * intervalSeconds):
        revert with 'NH{q', 17
    rounds[stor10 + 1].field_768 = block.timestamp + (2 * intervalSeconds)
    rounds[stor10 + 1].field_0 = currentEpoch + 1
    rounds[stor10 + 1].field_2048 = 0
    emit StartRound(currentEpoch + 1);
    uint8(stor2.field_168) = 1
}

function claimable(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if ledger[arg1][address(arg2)].field_0 > 1:
        revert with 'NH{q', 33
    if rounds[arg1].field_1280 == rounds[arg1].field_1024:
        return 0
    if not rounds[arg1].field_3328:
        return bool(rounds[arg1].field_3328)
    if not ledger[arg1][address(arg2)].field_256:
        return bool(ledger[arg1][address(arg2)].field_256)
    if ledger[arg1][address(arg2)].field_512:
        return not bool(ledger[arg1][address(arg2)].field_512)
    if rounds[arg1].field_1280 > rounds[arg1].field_1024:
        if ledger[arg1][address(arg2)].field_0 > 1:
            revert with 'NH{q', 33
        if not ledger[arg1][address(arg2)].field_0:
            return not ledger[arg1][address(arg2)].field_0
    if rounds[arg1].field_1280 >= rounds[arg1].field_1024:
        return (rounds[arg1].field_1280 < rounds[arg1].field_1024)
    if ledger[arg1][address(arg2)].field_0 > 1:
        revert with 'NH{q', 33
    return (ledger[arg1][address(arg2)].field_0 == 1)
}

function betUp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    if arg1 != currentEpoch:
        revert with 0, 'Bet is too early/late'
    if not rounds[arg1].field_256:
        revert with 0, 'Round not bettable'
    if not rounds[arg1].field_512:
        revert with 0, 'Round not bettable'
    if block.timestamp <= rounds[arg1].field_256:
        revert with 0, 'Round not bettable'
    if block.timestamp >= rounds[arg1].field_512:
        revert with 0, 'Round not bettable'
    if msg.value < minBetAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet amount must be greater than minBetAmount'
    if ledger[arg1][msg.sender].field_256:
        revert with 0, 'Can only bet once per round'
    if rounds[arg1].field_2048 > !msg.value:
        revert with 'NH{q', 17
    rounds[arg1].field_2048 += msg.value
    if rounds[arg1].field_2304 > !msg.value:
        revert with 'NH{q', 17
    rounds[arg1].field_2304 += msg.value
    ledger[arg1][msg.sender].field_0 = 0
    ledger[arg1][msg.sender].field_256 = msg.value
    userRoundsLength[msg.sender]++
    userRoundsLength[msg.sender][userRoundsLength[msg.sender]] = arg1
    emit BetUp(msg.value, msg.sender, arg1);
    stor1 = 1
}

function betDown(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    if arg1 != currentEpoch:
        revert with 0, 'Bet is too early/late'
    if not rounds[arg1].field_256:
        revert with 0, 'Round not bettable'
    if not rounds[arg1].field_512:
        revert with 0, 'Round not bettable'
    if block.timestamp <= rounds[arg1].field_256:
        revert with 0, 'Round not bettable'
    if block.timestamp >= rounds[arg1].field_512:
        revert with 0, 'Round not bettable'
    if msg.value < minBetAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet amount must be greater than minBetAmount'
    if ledger[arg1][msg.sender].field_256:
        revert with 0, 'Can only bet once per round'
    if rounds[arg1].field_2048 > !msg.value:
        revert with 'NH{q', 17
    rounds[arg1].field_2048 += msg.value
    if rounds[arg1].field_2560 > !msg.value:
        revert with 'NH{q', 17
    rounds[arg1].field_2560 += msg.value
    ledger[arg1][msg.sender].field_0 = 1
    ledger[arg1][msg.sender].field_256 = msg.value
    userRoundsLength[msg.sender]++
    userRoundsLength[msg.sender][userRoundsLength[msg.sender]] = arg1
    emit BetDown(msg.value, msg.sender, arg1);
    stor1 = 1
}

function genesisLockRound() {
    if stor0:
        revert with 0, 'Pausable: paused'
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    if not uint8(stor2.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only run after genesisStartRound is triggered'
    if uint8(stor2.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only run genesisLockRound once'
    if block.timestamp > !oracleUpdateAllowance:
        revert with 'NH{q', 17
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[96] > block.timestamp + oracleUpdateAllowance:
        revert with 0, 'Oracle update exceeded max timestamp allowance'
    if ext_call.return_data[22 len 10] <= oracleLatestRoundId:
        revert with 0, 'Oracle update roundId must be larger than oracleLatestRoundId'
    Mask(80, 0, stor11.field_0) = ext_call.return_data[22 len 10]
    Mask(176, 0, stor11.field_80) = 0
    if not rounds[stor10].field_256:
        revert with 0, 'Can only lock round after round has started'
    if block.timestamp < rounds[stor10].field_512:
        revert with 0, 'Can only lock round after lockTimestamp'
    if rounds[stor10].field_512 > !bufferSeconds:
        revert with 'NH{q', 17
    if block.timestamp > rounds[stor10].field_512 + bufferSeconds:
        revert with 0, 'Can only lock round within bufferSeconds'
    if block.timestamp > !intervalSeconds:
        revert with 'NH{q', 17
    rounds[stor10].field_768 = block.timestamp + intervalSeconds
    rounds[stor10].field_1024 = ext_call.return_data[32]
    rounds[stor10].field_1536 = ext_call.return_data[22 len 10]
    rounds[stor10].field_1616 = 0
    emit LockRound(ext_call.return_data[32], currentEpoch, Mask(80, 0, ext_call.return_data[0]));
    if 1 > !currentEpoch:
        revert with 'NH{q', 17
    currentEpoch++
    rounds[stor10 + 1].field_256 = block.timestamp
    if block.timestamp > !intervalSeconds:
        revert with 'NH{q', 17
    rounds[stor10 + 1].field_512 = block.timestamp + intervalSeconds
    if intervalSeconds > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if block.timestamp > !(2 * intervalSeconds):
        revert with 'NH{q', 17
    rounds[stor10 + 1].field_768 = block.timestamp + (2 * intervalSeconds)
    rounds[stor10 + 1].field_0 = currentEpoch + 1
    rounds[stor10 + 1].field_2048 = 0
    emit StartRound(currentEpoch + 1);
    uint8(stor2.field_160) = 1
}

function executeRound() {
    if stor0:
        revert with 0, 'Pausable: paused'
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    if not uint8(stor2.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only run after genesisStartRound and genesisLockRound is triggered'
    if not uint8(stor2.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only run after genesisStartRound and genesisLockRound is triggered'
    if block.timestamp > !oracleUpdateAllowance:
        revert with 'NH{q', 17
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[96] > block.timestamp + oracleUpdateAllowance:
        revert with 0, 'Oracle update exceeded max timestamp allowance'
    if ext_call.return_data[22 len 10] <= oracleLatestRoundId:
        revert with 0, 'Oracle update roundId must be larger than oracleLatestRoundId'
    Mask(80, 0, stor11.field_0) = ext_call.return_data[22 len 10]
    Mask(176, 0, stor11.field_80) = 0
    if not rounds[stor10].field_256:
        revert with 0, 'Can only lock round after round has started'
    if block.timestamp < rounds[stor10].field_512:
        revert with 0, 'Can only lock round after lockTimestamp'
    if rounds[stor10].field_512 > !bufferSeconds:
        revert with 'NH{q', 17
    if block.timestamp > rounds[stor10].field_512 + bufferSeconds:
        revert with 0, 'Can only lock round within bufferSeconds'
    if block.timestamp > !intervalSeconds:
        revert with 'NH{q', 17
    rounds[stor10].field_768 = block.timestamp + intervalSeconds
    rounds[stor10].field_1024 = ext_call.return_data[32]
    rounds[stor10].field_1536 = ext_call.return_data[22 len 10]
    rounds[stor10].field_1616 = 0
    emit LockRound(ext_call.return_data[32], currentEpoch, Mask(80, 0, ext_call.return_data[0]));
    if currentEpoch < 1:
        revert with 'NH{q', 17
    if not rounds[stor10 - 1].field_512:
        revert with 0, 'Can only end round after round has locked'
    if block.timestamp < rounds[stor10 - 1].field_768:
        revert with 0, 'Can only end round after closeTimestamp'
    if rounds[stor10 - 1].field_768 > !bufferSeconds:
        revert with 'NH{q', 17
    if block.timestamp > rounds[stor10 - 1].field_768 + bufferSeconds:
        revert with 0, 'Can only end round within bufferSeconds'
    rounds[stor10 - 1].field_1280 = ext_call.return_data[32]
    rounds[stor10 - 1].field_1792 = Mask(80, 0, ext_call.return_data[0])
    rounds[stor10 - 1].field_1872 = 0
    rounds[stor10 - 1].field_3328 = 1
    emit EndRound(ext_call.return_data[32], currentEpoch - 1, Mask(80, 0, ext_call.return_data[0]));
    if currentEpoch < 1:
        revert with 'NH{q', 17
    if rounds[stor10 - 1].field_2816:
        revert with 0, 'Rewards calculated'
    if rounds[stor10 - 1].field_3072:
        revert with 0, 'Rewards calculated'
    if rounds[stor10 - 1].field_1280 > rounds[stor10 - 1].field_1024:
        if rounds[stor10 - 1].field_2048 and treasuryFee > -1 / rounds[stor10 - 1].field_2048:
            revert with 'NH{q', 17
        if rounds[stor10 - 1].field_2048 < rounds[stor10 - 1].field_2048 * treasuryFee / 10000:
            revert with 'NH{q', 17
        rounds[stor10 - 1].field_2816 = rounds[stor10 - 1].field_2304
        rounds[stor10 - 1].field_3072 = rounds[stor10 - 1].field_2048 - (rounds[stor10 - 1].field_2048 * treasuryFee / 10000)
        if treasuryAmount > !(rounds[stor10 - 1].field_2048 * treasuryFee / 10000):
            revert with 'NH{q', 17
        treasuryAmount += rounds[stor10 - 1].field_2048 * treasuryFee / 10000
        emit RewardsCalculated(rounds[stor10 - 1].field_2304, rounds[stor10 - 1].field_2048 - (rounds[stor10 - 1].field_2048 * treasuryFee / 10000), rounds[stor10 - 1].field_2048 * treasuryFee / 10000, currentEpoch - 1);
    else:
        if rounds[stor10 - 1].field_1280 >= rounds[stor10 - 1].field_1024:
            rounds[stor10 - 1].field_2816 = 0
            rounds[stor10 - 1].field_3072 = 0
            if treasuryAmount > !rounds[stor10 - 1].field_2048:
                revert with 'NH{q', 17
            treasuryAmount += rounds[stor10 - 1].field_2048
            emit RewardsCalculated(0, 0, rounds[stor10 - 1].field_2048, currentEpoch - 1);
        else:
            if rounds[stor10 - 1].field_2048 and treasuryFee > -1 / rounds[stor10 - 1].field_2048:
                revert with 'NH{q', 17
            if rounds[stor10 - 1].field_2048 < rounds[stor10 - 1].field_2048 * treasuryFee / 10000:
                revert with 'NH{q', 17
            rounds[stor10 - 1].field_2816 = rounds[stor10 - 1].field_2560
            rounds[stor10 - 1].field_3072 = rounds[stor10 - 1].field_2048 - (rounds[stor10 - 1].field_2048 * treasuryFee / 10000)
            if treasuryAmount > !(rounds[stor10 - 1].field_2048 * treasuryFee / 10000):
                revert with 'NH{q', 17
            treasuryAmount += rounds[stor10 - 1].field_2048 * treasuryFee / 10000
            emit RewardsCalculated(rounds[stor10 - 1].field_2560, rounds[stor10 - 1].field_2048 - (rounds[stor10 - 1].field_2048 * treasuryFee / 10000), rounds[stor10 - 1].field_2048 * treasuryFee / 10000, currentEpoch - 1);
    if 1 > !currentEpoch:
        revert with 'NH{q', 17
    currentEpoch++
    if not uint8(stor2.field_168):
        revert with 0, 'Can only run after genesisStartRound is triggered'
    if currentEpoch + 1 < 2:
        revert with 'NH{q', 17
    if 0 == rounds[stor10 - 1].field_768:
        revert with 0, 'Can only start round after round n-2 has ended'
    if currentEpoch + 1 < 2:
        revert with 'NH{q', 17
    if block.timestamp < rounds[stor10 - 1].field_768:
        revert with 0, 'Can only start new round after round n-2 closeTimestamp'
    rounds[stor10 + 1].field_256 = block.timestamp
    if block.timestamp > !intervalSeconds:
        revert with 'NH{q', 17
    rounds[stor10 + 1].field_512 = block.timestamp + intervalSeconds
    if intervalSeconds > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if block.timestamp > !(2 * intervalSeconds):
        revert with 'NH{q', 17
    rounds[stor10 + 1].field_768 = block.timestamp + (2 * intervalSeconds)
    rounds[stor10 + 1].field_0 = currentEpoch + 1
    rounds[stor10 + 1].field_2048 = 0
    emit StartRound(currentEpoch + 1);
}

function claim(uint256[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    idx = 0
    s = 0
    while idx < arg1.length:
        if 0 == rounds[cd[((32 * idx) + arg1 + 36)]].field_256:
            revert with 0, 'Round has not started'
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if block.timestamp <= rounds[cd[((32 * idx) + arg1 + 36)]].field_768:
            revert with 0, 'Round has not ended'
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = msg.sender
        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 13)
        if not rounds[cd[((32 * idx) + arg1 + 36)]].field_3328:
            _115 = mem[64]
            mem[64] = mem[64] + 96
            if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 > 1:
                revert with 'NH{q', 33
            mem[_115] = ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0
            mem[_115 + 32] = ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256
            mem[_115 + 64] = bool(ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_512)
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 14
            _120 = mem[64]
            mem[64] = mem[64] + 448
            mem[_120] = rounds[cd[((32 * idx) + arg1 + 36)]].field_0
            mem[_120 + 32] = rounds[cd[((32 * idx) + arg1 + 36)]].field_256
            mem[_120 + 64] = rounds[cd[((32 * idx) + arg1 + 36)]].field_512
            mem[_120 + 96] = rounds[cd[((32 * idx) + arg1 + 36)]].field_768
            mem[_120 + 128] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1024
            mem[_120 + 160] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1280
            mem[_120 + 192] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1536
            mem[_120 + 224] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1792
            mem[_120 + 256] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2048
            mem[_120 + 288] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2304
            mem[_120 + 320] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2560
            mem[_120 + 352] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2816
            mem[_120 + 384] = rounds[cd[((32 * idx) + arg1 + 36)]].field_3072
            mem[_120 + 416] = bool(rounds[cd[((32 * idx) + arg1 + 36)]].field_3328)
            if rounds[cd[((32 * idx) + arg1 + 36)]].field_3328:
                revert with 0, 'Not eligible for refund'
            if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_512:
                revert with 0, 'Not eligible for refund'
            if rounds[cd[((32 * idx) + arg1 + 36)]].field_768 > !bufferSeconds:
                revert with 'NH{q', 17
            if block.timestamp <= rounds[cd[((32 * idx) + arg1 + 36)]].field_768 + bufferSeconds:
                revert with 0, 'Not eligible for refund'
            if not ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256:
                revert with 0, 'Not eligible for refund'
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = msg.sender
            mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 13)
            ledger[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_512 = 1
            if s > !ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[mem[64]] = ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256
            emit Claim(ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256, msg.sender, cd[((32 * idx) + arg1 + 36)]);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256
            continue 
        _118 = mem[64]
        mem[64] = mem[64] + 96
        if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 > 1:
            revert with 'NH{q', 33
        mem[_118] = ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0
        mem[_118 + 32] = ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256
        mem[_118 + 64] = bool(ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_512)
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 14
        _122 = mem[64]
        mem[64] = mem[64] + 448
        mem[_122] = rounds[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_122 + 32] = rounds[cd[((32 * idx) + arg1 + 36)]].field_256
        mem[_122 + 64] = rounds[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[_122 + 96] = rounds[cd[((32 * idx) + arg1 + 36)]].field_768
        mem[_122 + 128] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1024
        mem[_122 + 160] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1280
        mem[_122 + 192] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1536
        mem[_122 + 224] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1792
        mem[_122 + 256] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2048
        mem[_122 + 288] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2304
        mem[_122 + 320] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2560
        mem[_122 + 352] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2816
        mem[_122 + 384] = rounds[cd[((32 * idx) + arg1 + 36)]].field_3072
        mem[_122 + 416] = bool(rounds[cd[((32 * idx) + arg1 + 36)]].field_3328)
        if rounds[cd[((32 * idx) + arg1 + 36)]].field_1280 == rounds[cd[((32 * idx) + arg1 + 36)]].field_1024:
            revert with 0, 'Not eligible for claim'
        if not rounds[cd[((32 * idx) + arg1 + 36)]].field_3328:
            revert with 0, 'Not eligible for claim'
        if not ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256:
            revert with 0, 'Not eligible for claim'
        if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_512:
            revert with 0, 'Not eligible for claim'
        if rounds[cd[((32 * idx) + arg1 + 36)]].field_1280 <= rounds[cd[((32 * idx) + arg1 + 36)]].field_1024:
            if rounds[cd[((32 * idx) + arg1 + 36)]].field_1280 >= rounds[cd[((32 * idx) + arg1 + 36)]].field_1024:
                revert with 0, 'Not eligible for claim'
            if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 > 1:
                revert with 'NH{q', 33
            if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != 1:
                revert with 0, 'Not eligible for claim'
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 14
            _160 = mem[64]
            mem[64] = mem[64] + 448
            mem[_160] = rounds[cd[((32 * idx) + arg1 + 36)]].field_0
            mem[_160 + 32] = rounds[cd[((32 * idx) + arg1 + 36)]].field_256
            mem[_160 + 64] = rounds[cd[((32 * idx) + arg1 + 36)]].field_512
            mem[_160 + 96] = rounds[cd[((32 * idx) + arg1 + 36)]].field_768
            mem[_160 + 128] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1024
            mem[_160 + 160] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1280
            mem[_160 + 192] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1536
            mem[_160 + 224] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1792
            mem[_160 + 256] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2048
            mem[_160 + 288] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2304
            mem[_160 + 320] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2560
            mem[_160 + 352] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2816
            mem[_160 + 384] = rounds[cd[((32 * idx) + arg1 + 36)]].field_3072
            mem[_160 + 416] = bool(rounds[cd[((32 * idx) + arg1 + 36)]].field_3328)
        else:
            if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 > 1:
                revert with 'NH{q', 33
            if not ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0:
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 14
                _167 = mem[64]
                mem[64] = mem[64] + 448
                mem[_167] = rounds[cd[((32 * idx) + arg1 + 36)]].field_0
                mem[_167 + 32] = rounds[cd[((32 * idx) + arg1 + 36)]].field_256
                mem[_167 + 64] = rounds[cd[((32 * idx) + arg1 + 36)]].field_512
                mem[_167 + 96] = rounds[cd[((32 * idx) + arg1 + 36)]].field_768
                mem[_167 + 128] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1024
                mem[_167 + 160] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1280
                mem[_167 + 192] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1536
                mem[_167 + 224] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1792
                mem[_167 + 256] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2048
                mem[_167 + 288] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2304
                mem[_167 + 320] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2560
                mem[_167 + 352] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2816
                mem[_167 + 384] = rounds[cd[((32 * idx) + arg1 + 36)]].field_3072
                mem[_167 + 416] = bool(rounds[cd[((32 * idx) + arg1 + 36)]].field_3328)
            else:
                if rounds[cd[((32 * idx) + arg1 + 36)]].field_1280 >= rounds[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    revert with 0, 'Not eligible for claim'
                if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 > 1:
                    revert with 'NH{q', 33
                if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != 1:
                    revert with 0, 'Not eligible for claim'
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 14
                _178 = mem[64]
                mem[64] = mem[64] + 448
                mem[_178] = rounds[cd[((32 * idx) + arg1 + 36)]].field_0
                mem[_178 + 32] = rounds[cd[((32 * idx) + arg1 + 36)]].field_256
                mem[_178 + 64] = rounds[cd[((32 * idx) + arg1 + 36)]].field_512
                mem[_178 + 96] = rounds[cd[((32 * idx) + arg1 + 36)]].field_768
                mem[_178 + 128] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1024
                mem[_178 + 160] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1280
                mem[_178 + 192] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1536
                mem[_178 + 224] = rounds[cd[((32 * idx) + arg1 + 36)]].field_1792
                mem[_178 + 256] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2048
                mem[_178 + 288] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2304
                mem[_178 + 320] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2560
                mem[_178 + 352] = rounds[cd[((32 * idx) + arg1 + 36)]].field_2816
                mem[_178 + 384] = rounds[cd[((32 * idx) + arg1 + 36)]].field_3072
                mem[_178 + 416] = bool(rounds[cd[((32 * idx) + arg1 + 36)]].field_3328)
        if ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 and rounds[cd[((32 * idx) + arg1 + 36)]].field_3072 > -1 / ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if not rounds[cd[((32 * idx) + arg1 + 36)]].field_2816:
            revert with 'NH{q', 18
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = msg.sender
        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 13)
        ledger[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_512 = 1
        if s > !(ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 * rounds[cd[((32 * idx) + arg1 + 36)]].field_3072 / rounds[cd[((32 * idx) + arg1 + 36)]].field_2816):
            revert with 'NH{q', 17
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[mem[64]] = ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 * rounds[cd[((32 * idx) + arg1 + 36)]].field_3072 / rounds[cd[((32 * idx) + arg1 + 36)]].field_2816
        emit Claim((ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 * rounds[cd[((32 * idx) + arg1 + 36)]].field_3072 / rounds[cd[((32 * idx) + arg1 + 36)]].field_2816), msg.sender, cd[((32 * idx) + arg1 + 36)]);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (ledger[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 * rounds[cd[((32 * idx) + arg1 + 36)]].field_3072 / rounds[cd[((32 * idx) + arg1 + 36)]].field_2816)
        continue 
    if s:
        call msg.sender with:
           value s wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
    stor1 = 1
}

function getUserRounds(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 15
    if userRoundsLength[address(arg1)] < arg2:
        revert with 'NH{q', 17
    if arg3 <= userRoundsLength[address(arg1)] - arg2:
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[96] = arg3
        if not arg3:
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[(32 * arg3) + 128] = arg3
            mem[64] = (64 * arg3) + 160
            if not arg3:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 'NH{q', 17
                    if arg2 + idx >= userRoundsLength[address(arg1)]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = arg1
                    mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx], 13)
                    _192 = mem[64]
                    mem[64] = mem[64] + 96
                    if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0 > 1:
                        revert with 'NH{q', 33
                    mem[_192] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0
                    mem[_192 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_256
                    mem[_192 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_512)
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = _192
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if arg2 > !arg3:
                    revert with 'NH{q', 17
                _169 = mem[64]
                mem[mem[64]] = 96
                _181 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _181) + 128
                _305 = mem[(32 * arg3) + 128]
                mem[_169 + (32 * _181) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = _169 + (32 * _181) + 160
                t = (32 * arg3) + 160
                while idx < _305:
                    _405 = mem[t]
                    if mem[mem[t]] >= 2:
                        revert with 'NH{q', 33
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_405 + 32]
                    mem[s + 64] = bool(mem[_405 + 64])
                    idx = idx + 1
                    s = s + 96
                    t = t + 32
                    continue 
                mem[_169 + 64] = arg2 + arg3
                return memory
                  from mem[64]
                   len _169 + (32 * _181) + (96 * _305) + -mem[64] + 160
            mem[64] = (64 * arg3) + 256
            mem[(64 * arg3) + 160] = 0
            mem[(64 * arg3) + 192] = 0
            mem[(64 * arg3) + 224] = 0
            mem[(32 * arg3) + 160] = (64 * arg3) + 160
            s = (32 * arg3) + 160
            idx = arg3
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[(64 * arg3) + 160] = 0
                mem[(64 * arg3) + 192] = 0
                mem[(64 * arg3) + 224] = 0
                mem[s + 32] = (64 * arg3) + 160
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 'NH{q', 17
                if arg2 + idx >= userRoundsLength[address(arg1)]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = arg1
                mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx], 13)
                _360 = mem[64]
                mem[64] = mem[64] + 96
                if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0 > 1:
                    revert with 'NH{q', 33
                mem[_360] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0
                mem[_360 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_256
                mem[_360 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_512)
                if idx >= mem[(32 * arg3) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg3) + 160] = _360
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if arg2 > !arg3:
                revert with 'NH{q', 17
            _329 = mem[64]
            mem[mem[64]] = 96
            _343 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * _343) + 128
            _407 = mem[(32 * arg3) + 128]
            mem[_329 + (32 * _343) + 128] = mem[(32 * arg3) + 128]
            idx = 0
            s = _329 + (32 * _343) + 160
            t = (32 * arg3) + 160
            while idx < _407:
                _453 = mem[t]
                if mem[mem[t]] >= 2:
                    revert with 'NH{q', 33
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_453 + 32]
                mem[s + 64] = bool(mem[_453 + 64])
                idx = idx + 1
                s = s + 96
                t = t + 32
                continue 
            mem[_329 + 64] = arg2 + arg3
            return memory
              from mem[64]
               len _329 + (32 * _343) + (96 * _407) + -mem[64] + 160
        mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * arg3) + 128] = arg3
        mem[64] = (64 * arg3) + 160
        if not arg3:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 'NH{q', 17
                if arg2 + idx >= userRoundsLength[address(arg1)]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = arg1
                mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx], 13)
                _196 = mem[64]
                mem[64] = mem[64] + 96
                if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0 > 1:
                    revert with 'NH{q', 33
                mem[_196] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0
                mem[_196 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_256
                mem[_196 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_512)
                if idx >= mem[(32 * arg3) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg3) + 160] = _196
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if arg2 > !arg3:
                revert with 'NH{q', 17
            _172 = mem[64]
            mem[mem[64]] = 96
            _183 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * _183) + 128
            _308 = mem[(32 * arg3) + 128]
            mem[_172 + (32 * _183) + 128] = mem[(32 * arg3) + 128]
            idx = 0
            s = _172 + (32 * _183) + 160
            t = (32 * arg3) + 160
            while idx < _308:
                _409 = mem[t]
                if mem[mem[t]] >= 2:
                    revert with 'NH{q', 33
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_409 + 32]
                mem[s + 64] = bool(mem[_409 + 64])
                idx = idx + 1
                s = s + 96
                t = t + 32
                continue 
            mem[_172 + 64] = arg2 + arg3
            return memory
              from mem[64]
               len _172 + (32 * _183) + (96 * _308) + -mem[64] + 160
        mem[64] = (64 * arg3) + 256
        mem[(64 * arg3) + 160] = 0
        mem[(64 * arg3) + 192] = 0
        mem[(64 * arg3) + 224] = 0
        mem[(32 * arg3) + 160] = (64 * arg3) + 160
        s = (32 * arg3) + 160
        idx = arg3
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(64 * arg3) + 160] = 0
            mem[(64 * arg3) + 192] = 0
            mem[(64 * arg3) + 224] = 0
            mem[s + 32] = (64 * arg3) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3:
            if arg2 > !idx:
                revert with 'NH{q', 17
            if arg2 + idx >= userRoundsLength[address(arg1)]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = arg1
            mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx], 13)
            _364 = mem[64]
            mem[64] = mem[64] + 96
            if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0 > 1:
                revert with 'NH{q', 33
            mem[_364] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0
            mem[_364 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_256
            mem[_364 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_512)
            if idx >= mem[(32 * arg3) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg3) + 160] = _364
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if arg2 > !arg3:
            revert with 'NH{q', 17
        _332 = mem[64]
        mem[mem[64]] = 96
        _347 = mem[96]
        mem[mem[64] + 96] = mem[96]
        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * _347) + 128
        _411 = mem[(32 * arg3) + 128]
        mem[_332 + (32 * _347) + 128] = mem[(32 * arg3) + 128]
        idx = 0
        s = _332 + (32 * _347) + 160
        t = (32 * arg3) + 160
        while idx < _411:
            _455 = mem[t]
            if mem[mem[t]] >= 2:
                revert with 'NH{q', 33
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_455 + 32]
            mem[s + 64] = bool(mem[_455 + 64])
            idx = idx + 1
            s = s + 96
            t = t + 32
            continue 
        mem[_332 + 64] = arg2 + arg3
        return memory
          from mem[64]
           len _332 + (32 * _347) + (96 * _411) + -mem[64] + 160
    mem[0] = arg1
    mem[32] = 15
    if userRoundsLength[address(arg1)] < arg2:
        revert with 'NH{q', 17
    if userRoundsLength[address(arg1)] - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = userRoundsLength[address(arg1)] - arg2
    if not userRoundsLength[address(arg1)] - arg2:
        if userRoundsLength[address(arg1)] - arg2 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128] = userRoundsLength[address(arg1)] - arg2
        mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 160
        if not userRoundsLength[address(arg1)] - arg2:
            idx = 0
            while idx < userRoundsLength[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 'NH{q', 17
                if arg2 + idx >= userRoundsLength[address(arg1)]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = arg1
                mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx], 13)
                _200 = mem[64]
                mem[64] = mem[64] + 96
                if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0 > 1:
                    revert with 'NH{q', 33
                mem[_200] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0
                mem[_200 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_256
                mem[_200 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_512)
                if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _200
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if arg2 > !(userRoundsLength[address(arg1)] - arg2):
                revert with 'NH{q', 17
            _175 = mem[64]
            mem[mem[64]] = 96
            _185 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * _185) + 128
            _311 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
            mem[_175 + (32 * _185) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
            idx = 0
            s = _175 + (32 * _185) + 160
            t = (32 * userRoundsLength[address(arg1)] - arg2) + 160
            while idx < _311:
                _413 = mem[t]
                if mem[mem[t]] >= 2:
                    revert with 'NH{q', 33
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_413 + 32]
                mem[s + 64] = bool(mem[_413 + 64])
                idx = idx + 1
                s = s + 96
                t = t + 32
                continue 
            mem[_175 + 64] = userRoundsLength[address(arg1)]
            return memory
              from mem[64]
               len _175 + (32 * _185) + (96 * _311) + -mem[64] + 160
        mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 256
        mem[(64 * userRoundsLength[address(arg1)] - arg2) + 160] = 0
        mem[(64 * userRoundsLength[address(arg1)] - arg2) + 192] = 0
        mem[(64 * userRoundsLength[address(arg1)] - arg2) + 224] = 0
        mem[(32 * userRoundsLength[address(arg1)] - arg2) + 160] = (64 * userRoundsLength[address(arg1)] - arg2) + 160
        s = (32 * userRoundsLength[address(arg1)] - arg2) + 160
        idx = userRoundsLength[address(arg1)] - arg2
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(64 * userRoundsLength[address(arg1)] - arg2) + 160] = 0
            mem[(64 * userRoundsLength[address(arg1)] - arg2) + 192] = 0
            mem[(64 * userRoundsLength[address(arg1)] - arg2) + 224] = 0
            mem[s + 32] = (64 * userRoundsLength[address(arg1)] - arg2) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < userRoundsLength[address(arg1)] - arg2:
            if arg2 > !idx:
                revert with 'NH{q', 17
            if arg2 + idx >= userRoundsLength[address(arg1)]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = arg1
            mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx], 13)
            _368 = mem[64]
            mem[64] = mem[64] + 96
            if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0 > 1:
                revert with 'NH{q', 33
            mem[_368] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0
            mem[_368 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_256
            mem[_368 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_512)
            if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _368
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if arg2 > !(userRoundsLength[address(arg1)] - arg2):
            revert with 'NH{q', 17
        _335 = mem[64]
        mem[mem[64]] = 96
        _351 = mem[96]
        mem[mem[64] + 96] = mem[96]
        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * _351) + 128
        _415 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
        mem[_335 + (32 * _351) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
        idx = 0
        s = _335 + (32 * _351) + 160
        t = (32 * userRoundsLength[address(arg1)] - arg2) + 160
        while idx < _415:
            _457 = mem[t]
            if mem[mem[t]] >= 2:
                revert with 'NH{q', 33
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_457 + 32]
            mem[s + 64] = bool(mem[_457 + 64])
            idx = idx + 1
            s = s + 96
            t = t + 32
            continue 
        mem[_335 + 64] = userRoundsLength[address(arg1)]
        return memory
          from mem[64]
           len _335 + (32 * _351) + (96 * _415) + -mem[64] + 160
    mem[128 len 32 * userRoundsLength[address(arg1)] - arg2] = call.data[calldata.size len 32 * userRoundsLength[address(arg1)] - arg2]
    if userRoundsLength[address(arg1)] - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128] = userRoundsLength[address(arg1)] - arg2
    mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 160
    if not userRoundsLength[address(arg1)] - arg2:
        idx = 0
        while idx < userRoundsLength[address(arg1)] - arg2:
            if arg2 > !idx:
                revert with 'NH{q', 17
            if arg2 + idx >= userRoundsLength[address(arg1)]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = arg1
            mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx], 13)
            _204 = mem[64]
            mem[64] = mem[64] + 96
            if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0 > 1:
                revert with 'NH{q', 33
            mem[_204] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0
            mem[_204 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_256
            mem[_204 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_512)
            if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _204
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if arg2 > !(userRoundsLength[address(arg1)] - arg2):
            revert with 'NH{q', 17
        _178 = mem[64]
        mem[mem[64]] = 96
        _187 = mem[96]
        mem[mem[64] + 96] = mem[96]
        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * _187) + 128
        _314 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
        mem[_178 + (32 * _187) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
        idx = 0
        s = _178 + (32 * _187) + 160
        t = (32 * userRoundsLength[address(arg1)] - arg2) + 160
        while idx < _314:
            _417 = mem[t]
            if mem[mem[t]] >= 2:
                revert with 'NH{q', 33
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_417 + 32]
            mem[s + 64] = bool(mem[_417 + 64])
            idx = idx + 1
            s = s + 96
            t = t + 32
            continue 
        mem[_178 + 64] = userRoundsLength[address(arg1)]
        return memory
          from mem[64]
           len _178 + (32 * _187) + (96 * _314) + -mem[64] + 160
    mem[64] = (64 * userRoundsLength[address(arg1)] - arg2) + 256
    mem[(64 * userRoundsLength[address(arg1)] - arg2) + 160] = 0
    mem[(64 * userRoundsLength[address(arg1)] - arg2) + 192] = 0
    mem[(64 * userRoundsLength[address(arg1)] - arg2) + 224] = 0
    mem[(32 * userRoundsLength[address(arg1)] - arg2) + 160] = (64 * userRoundsLength[address(arg1)] - arg2) + 160
    s = (32 * userRoundsLength[address(arg1)] - arg2) + 160
    idx = userRoundsLength[address(arg1)] - arg2
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(64 * userRoundsLength[address(arg1)] - arg2) + 160] = 0
        mem[(64 * userRoundsLength[address(arg1)] - arg2) + 192] = 0
        mem[(64 * userRoundsLength[address(arg1)] - arg2) + 224] = 0
        mem[s + 32] = (64 * userRoundsLength[address(arg1)] - arg2) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < userRoundsLength[address(arg1)] - arg2:
        if arg2 > !idx:
            revert with 'NH{q', 17
        if arg2 + idx >= userRoundsLength[address(arg1)]:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = arg1
        mem[32] = sha3(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userRoundsLength', 15)) + arg2 + idx], 13)
        _372 = mem[64]
        mem[64] = mem[64] + 96
        if ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0 > 1:
            revert with 'NH{q', 33
        mem[_372] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_0
        mem[_372 + 32] = ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_256
        mem[_372 + 64] = bool(ledger[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor15', 15)) + arg2 + idx]][address(arg1)].field_512)
        if idx >= mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * userRoundsLength[address(arg1)] - arg2) + 160] = _372
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg2 > !(userRoundsLength[address(arg1)] - arg2):
        revert with 'NH{q', 17
    _338 = mem[64]
    mem[mem[64]] = 96
    _355 = mem[96]
    mem[mem[64] + 96] = mem[96]
    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * _355) + 128
    _419 = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
    mem[_338 + (32 * _355) + 128] = mem[(32 * userRoundsLength[address(arg1)] - arg2) + 128]
    idx = 0
    s = _338 + (32 * _355) + 160
    t = (32 * userRoundsLength[address(arg1)] - arg2) + 160
    while idx < _419:
        _459 = mem[t]
        if mem[mem[t]] >= 2:
            revert with 'NH{q', 33
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_459 + 32]
        mem[s + 64] = bool(mem[_459 + 64])
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    mem[_338 + 64] = userRoundsLength[address(arg1)]
    return memory
      from mem[64]
       len _338 + (32 * _355) + (96 * _419) + -mem[64] + 160
}



}
