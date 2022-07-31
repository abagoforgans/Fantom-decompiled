contract main {




// =====================  Runtime code  =====================


#
#  - sub_30fcdf41(?)
#  - setTokenListener(address arg1)
#  - getExternalErc20Awards()
#  - initializeMultipleWinners(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, address arg6, uint256 arg7)
#  - setPeriodicPrizeStrategyListener(address arg1)
#  - completeAward()
#
const VERSION = '', 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address tokenListenerAddress;
address prizePoolAddress;
address ticketAddress;
address sponsorshipAddress;
uint32 stor105;
address rngAddress;
uint256 stor105;
uint32 lastRngRequestId;
uint32 lastRngLockBlock; offset 32
uint32 stor106; offset 64
uint128 stor106;
uint16 stor107;
uint16 stor107; offset 16
uint32 rngRequestTimeout;
uint256 prizePeriodSeconds;
uint256 prizePeriodStartedAt;
uint256 stor110;
mapping of struct stor111;
address sub_0d847fc4Address;
address periodicPrizeStrategyListenerAddress;
array of struct prizeSplit;
uint256 numberOfWinners;
uint8 splitExternalErc20Awards;
mapping of uint8 stor117;
uint8 sub_6f46f221;
uint256 sub_0faf125f;
array of struct stor101310722891038750429752619310726059395648923873577493455403504309557998731233;

function sub_0d847fc4(?) payable {
    return sub_0d847fc4Address
}

function sub_0faf125f(?) payable {
    return sub_0faf125f
}

function isRngRequested() payable {
    return bool(lastRngRequestId)
}

function getLastRngRequestId() payable {
    return lastRngRequestId
}

function sponsorship() payable {
    return sponsorshipAddress
}

function tokenListener() payable {
    return tokenListenerAddress
}

function getLastRngLockBlock() payable {
    return lastRngLockBlock
}

function ticket() payable {
    return ticketAddress
}

function sub_6f46f221(?) payable {
    return bool(sub_6f46f221)
}

function prizePool() payable {
    return prizePoolAddress
}

function prizePeriodStartedAt() payable {
    return prizePeriodStartedAt
}

function numberOfWinners() payable {
    return numberOfWinners
}

function owner() payable {
    return owner
}

function isBlocklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor117[arg1])
}

function prizePeriodSeconds() payable {
    return prizePeriodSeconds
}

function splitExternalErc20Awards() payable {
    return bool(splitExternalErc20Awards)
}

function rngRequestTimeout() payable {
    return rngRequestTimeout
}

function periodicPrizeStrategyListener() payable {
    return periodicPrizeStrategyListenerAddress
}

function rng() payable {
    return address(rngAddress)
}

function prizeSplit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < prizeSplit.length
    return address(prizeSplit[arg1].field_0), prizeSplit[arg1].field_0, uint8(prizeSplit[arg1].field_176)
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

function prizePeriodEndAt() payable {
    if prizePeriodSeconds + prizePeriodStartedAt < prizePeriodStartedAt:
        revert with 0, 'SafeMath: addition overflow'
    return (prizePeriodSeconds + prizePeriodStartedAt)
}

function isPrizePeriodOver() payable {
    if prizePeriodSeconds + prizePeriodStartedAt < prizePeriodStartedAt:
        revert with 0, 'SafeMath: addition overflow'
    return block.timestamp >= prizePeriodSeconds + prizePeriodStartedAt
}

function isRngTimedOut() payable {
    if not uint32(stor106.field_64):
        return 0
    if uint32(stor106.field_64) + rngRequestTimeout < rngRequestTimeout:
        revert with 0, 'SafeMath: addition overflow'
    return (block.timestamp > uint32(stor106.field_64) + rngRequestTimeout)
}

function currentPrize() payable {
    require ext_code.size(prizePoolAddress)
    staticcall prizePoolAddress.0x630665b4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function canStartAward() payable {
    if prizePeriodSeconds + prizePeriodStartedAt < prizePeriodStartedAt:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < prizePeriodSeconds + prizePeriodStartedAt:
        return block.timestamp >= prizePeriodSeconds + prizePeriodStartedAt
    return not bool(lastRngRequestId)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0xff5e34e700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function prizePeriodRemainingSeconds() payable {
    if prizePeriodSeconds + prizePeriodStartedAt < prizePeriodStartedAt:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= prizePeriodSeconds + prizePeriodStartedAt:
        return (prizePeriodSeconds + prizePeriodStartedAt - block.timestamp)
    else:
        return 0
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

function setBlocklistRetryCount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lastRngLockBlock:
        if block.number >= lastRngLockBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    sub_0faf125f = arg1
    emit BlocklistRetryCountSet(arg1);
    return 1
}

function isRngCompleted() payable {
    require ext_code.size(address(rngAddress))
    staticcall address(rngAddress).isRequestComplete(uint32 arg1) with:
            gas gas_remaining wei
           args lastRngRequestId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setCarryBlocklist(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lastRngLockBlock:
        if block.number >= lastRngLockBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    sub_6f46f221 = uint8(arg1)
    emit BlocklistCarrySet(arg1);
    return 1
}

function setSplitExternalErc20Awards(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lastRngLockBlock:
        if block.number >= lastRngLockBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    splitExternalErc20Awards = uint8(arg1)
    emit SplitExternalErc20AwardsSet(bool(uint8(arg1)));
}

function setNumberOfWinners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lastRngLockBlock:
        if block.number >= lastRngLockBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    if arg1 <= 0:
        revert with 0, 'MultipleWinners/winners-gte-one'
    numberOfWinners = arg1
    emit NumberOfWinnersSet(arg1);
}

function setBlocklisted(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lastRngLockBlock:
        if block.number >= lastRngLockBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    stor117[address(arg1)] = uint8(arg2)
    emit BlocklistSet(arg2, arg1);
    return 1
}

function canCompleteAward() payable {
    if not lastRngRequestId:
        return bool(lastRngRequestId)
    require ext_code.size(address(rngAddress))
    staticcall address(rngAddress).isRequestComplete(uint32 arg1) with:
            gas gas_remaining wei
           args lastRngRequestId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setRngService(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lastRngLockBlock:
        if block.number >= lastRngLockBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    if lastRngRequestId:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    address(rngAddress) = arg1
    emit RngServiceUpdated(arg1);
}

function setRngRequestTimeout(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lastRngLockBlock:
        if block.number >= lastRngLockBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    if arg1 <= 60:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-timeout-gt-60-secs'
    rngRequestTimeout = arg1
    emit RngRequestTimeoutSet(arg1);
}

function setPrizePeriodSeconds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lastRngLockBlock:
        if block.number >= lastRngLockBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PeriodicPrizeStrategy/prize-period-greater-than-zero'
    prizePeriodSeconds = arg1
    emit PrizePeriodSecondsUpdated(arg1);
}

function cancelAward() payable {
    if not uint32(stor106.field_64):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-not-timedout'
    if uint32(stor106.field_64) + rngRequestTimeout < rngRequestTimeout:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= uint32(stor106.field_64) + rngRequestTimeout:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-not-timedout'
    Mask(96, 0, stor106.field_0) = 0
    emit RngRequestFailed()
    emit PrizePoolAwardCancelled(lastRngLockBlock, msg.sender, prizePoolAddress, lastRngRequestId);
}

function removeExternalErc20Award(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lastRngLockBlock:
        if block.number >= lastRngLockBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    if 1 == arg1:
        revert with 0, 'Invalid address'
    if not arg1:
        revert with 0, 'Invalid address'
    if arg1 != address(stor111[address(arg2)].field_0):
        revert with 0, 'Invalid prevAddress'
    address(stor111[arg2].field_0) = address(stor111[address(arg1)].field_0)
    address(stor111[address(arg1)].field_0) = 0
    stor110--
    emit ExternalErc20AwardRemoved(arg1);
}

function estimateRemainingBlocksToPrize(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if prizePeriodSeconds + prizePeriodStartedAt < prizePeriodStartedAt:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > prizePeriodSeconds + prizePeriodStartedAt:
        if not arg1:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / arg1)
    if (10^18 * prizePeriodSeconds) + (10^18 * prizePeriodStartedAt) - (10^18 * block.timestamp) / 10^18 != prizePeriodSeconds + prizePeriodStartedAt - block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg1:
        revert with 0, 'SafeMath: division by zero', 0
    return ((10^18 * prizePeriodSeconds) + (10^18 * prizePeriodStartedAt) - (10^18 * block.timestamp) / arg1)
}

function beforeTokenMint(address arg1, uint256 arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    require arg4 == arg4
    if prizePoolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/only-prize-pool'
    if ticketAddress == arg3:
        if lastRngLockBlock:
            if block.number >= lastRngLockBlock:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    if tokenListenerAddress:
        require ext_code.size(tokenListenerAddress)
        call tokenListenerAddress.0x4d7f3db0 with:
             gas gas_remaining wei
            args 0, 0, arg2, address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function prizeSplits() payable {
    mem[64] = (32 * prizeSplit.length) + 128
    mem[96] = prizeSplit.length
    s = 128
    idx = 0
    while idx < prizeSplit.length:
        mem[0] = 114
        _12 = mem[64]
        mem[64] = mem[64] + 96
        mem[_12] = address(prizeSplit[idx].field_0)
        mem[_12 + 32] = prizeSplit[idx].field_160
        mem[_12 + 64] = uint8(prizeSplit[idx].field_176)
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _14:
        _20 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_20 + 62 len 2]
        mem[s + 64] = mem[_20 + 95 len 1]
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (96 * _14) + -mem[64] + 64
}

function calculateNextPrizePeriodStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if prizePeriodStartedAt > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if prizePeriodSeconds <= 0:
        revert with 0, 'SafeMath: division by zero'
    require prizePeriodSeconds
    if not arg1 - prizePeriodStartedAt / prizePeriodSeconds:
        if prizePeriodStartedAt < prizePeriodStartedAt:
            revert with 0, 'SafeMath: addition overflow'
        return prizePeriodStartedAt
    if prizePeriodSeconds * arg1 - prizePeriodStartedAt / prizePeriodSeconds / arg1 - prizePeriodStartedAt / prizePeriodSeconds != prizePeriodSeconds:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if (prizePeriodSeconds * arg1 - prizePeriodStartedAt / prizePeriodSeconds) + prizePeriodStartedAt < prizePeriodStartedAt:
        revert with 0, 'SafeMath: addition overflow'
    return ((prizePeriodSeconds * arg1 - prizePeriodStartedAt / prizePeriodSeconds) + prizePeriodStartedAt)
}

function beforeTokenTransfer(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    if prizePoolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/only-prize-pool'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/transfer-to-self'
    if ticketAddress == arg4:
        if lastRngLockBlock:
            if block.number >= lastRngLockBlock:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    if tokenListenerAddress:
        require ext_code.size(tokenListenerAddress)
        call tokenListenerAddress.0xb2210957 with:
             gas gas_remaining wei
            args 0, 0, address(arg2), arg3, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function addExternalErc20Award(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if periodicPrizeStrategyListenerAddress != msg.sender:
            if sub_0d847fc4Address != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/only-owner-or-listener'
    if lastRngLockBlock:
        if block.number >= lastRngLockBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
    if not ext_code.size(arg1):
        revert with 0, 'PeriodicPrizeStrategy/erc20-null'
    require ext_code.size(prizePoolAddress)
    staticcall prizePoolAddress.0x6a3fd4f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
    mem[ceil32(return_data.size) + 132] = 0, mem[ceil32(return_data.size) + 132 len 28]
    staticcall arg1.mem[ceil32(return_data.size) + 132 len 4] with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
    if 1 == arg1:
        revert with 0, 'Invalid address'
    if not arg1:
        revert with 0, 'Invalid address'
    if address(stor111[address(arg1)].field_0):
        revert with 0, 'Already added'
    address(stor111[arg1].field_0) = address(stor111[1].field_0)
    address(stor111[1].field_0) = arg1
    stor110++
    emit ExternalErc20AwardAdded(arg1);
}

function sub_fbf0953e(?) payable {
    require calldata.size - 4 >= 128
    require calldata.size - 4 >= 96
    mem[64] = 192
    require arg1 == address(arg1)
    mem[96] = arg1
    require arg2 == uint16(arg2)
    mem[128] = arg2
    require arg3 == uint8(arg3)
    mem[160] = arg3
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg4) >= prizeSplit.length:
        revert with 0, 'MultipleWinners/nonexistent-prizesplit'
    if uint8(arg3) > 1:
        revert with 0, 'MultipleWinners/invalid-prizesplit-token'
    if not address(arg1):
        revert with 0, 'MultipleWinners/invalid-prizesplit-target'
    require uint8(arg4) < prizeSplit.length
    address(prizeSplit[uint8(arg4)].field_0) = address(arg1)
    prizeSplit[uint8(arg4)].field_160 = uint16(arg2)
    uint8(prizeSplit[uint8(arg4)].field_176) = uint8(arg3)
    idx = 0
    s = 0
    while uint8(idx) < prizeSplit.length:
        _26 = mem[64]
        mem[64] = mem[64] + 96
        mem[_26] = 0
        mem[_26 + 32] = 0
        mem[_26 + 64] = 0
        mem[0] = 114
        _32 = sha3(114)
        _33 = mem[64]
        mem[64] = mem[64] + 96
        mem[_33] = address(prizeSplit[uint8(idx)].field_0)
        mem[_33 + 32] = prizeSplit[uint8(idx)].field_160
        mem[_33 + 64] = uint8(prizeSplit[uint8(idx)].field_176)
        if prizeSplit[uint8(idx)].field_160 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = prizeSplit[uint8(idx)].field_160 + s
        continue 
    if stor[_32 + uint8(None)] * None > 1000:
        revert with 0, 'MultipleWinners/invalid-prizesplit-percentage-total'
    _27 = mem[96]
    _29 = mem[160]
    mem[mem[64]] = mem[158 len 2]
    mem[mem[64] + 64] = uint8(arg4)
    emit PrizeSplitSet(mem[mem[64]], _29 << 248, uint8(arg4), address(_27));
}

function sub_c25a9c32(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        _63 = mem[64]
        mem[64] = mem[64] + 96
        mem[_63] = 0
        mem[_63 + 32] = 0
        mem[_63 + 64] = 0
        require calldata.size + (-96 * idx) + -cd[4] - 36 >= 96
        _71 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        mem[_71] = cd[((96 * idx) + cd[4] + 36)]
        require cd[((96 * idx) + cd[4] + 68)] == uint16(cd[((96 * idx) + cd[4] + 68)])
        mem[_71 + 32] = cd[((96 * idx) + cd[4] + 68)]
        require cd[((96 * idx) + cd[4] + 100)] == uint8(cd[((96 * idx) + cd[4] + 100)])
        mem[_71 + 64] = cd[((96 * idx) + cd[4] + 100)]
        if uint8(cd[((96 * idx) + cd[4] + 100)]) > 1:
            revert with 0, 'MultipleWinners/invalid-prizesplit-token'
        if not address(cd[((96 * idx) + cd[4] + 36)]):
            revert with 0, 'MultipleWinners/invalid-prizesplit-target'
        if idx >= prizeSplit.length:
            prizeSplit.length++
            mem[0] = 114
            address(storDFFB[stor114.length].field_0) = address(cd[((96 * idx) + cd[4] + 36)])
            storDFFB[stor114.length].field_160 = uint16(cd[((96 * idx) + cd[4] + 68)])
            uint8(storDFFB[stor114.length].field_176) = uint8(cd[((96 * idx) + cd[4] + 100)])
            mem[mem[64]] = uint16(cd[((96 * idx) + cd[4] + 68)])
            mem[mem[64] + 32] = uint8(cd[((96 * idx) + cd[4] + 100)])
            mem[mem[64] + 64] = idx
            emit PrizeSplitSet(cd[((96 * idx) + cd[4] + 68)] << 240, cd[((96 * idx) + cd[4] + 100)] << 248, idx, address(cd[((96 * idx) + cd[4] + 36)]));
        else:
            _82 = mem[64]
            mem[64] = mem[64] + 96
            mem[_82] = 0
            mem[_82 + 32] = 0
            mem[_82 + 64] = 0
            mem[0] = 114
            _89 = mem[64]
            mem[64] = mem[64] + 96
            mem[_89] = address(prizeSplit[idx].field_0)
            mem[_89 + 32] = prizeSplit[idx].field_160
            mem[_89 + 64] = uint8(prizeSplit[idx].field_176)
            if address(cd[((96 * idx) + cd[4] + 36)]) != address(prizeSplit[idx].field_0):
                require idx < prizeSplit.length
                mem[0] = 114
                address(prizeSplit[idx].field_0) = address(cd[((96 * idx) + cd[4] + 36)])
                prizeSplit[idx].field_160 = uint16(cd[((96 * idx) + cd[4] + 68)])
                uint8(prizeSplit[idx].field_176) = uint8(cd[((96 * idx) + cd[4] + 100)])
                mem[mem[64]] = uint16(cd[((96 * idx) + cd[4] + 68)])
                mem[mem[64] + 32] = uint8(cd[((96 * idx) + cd[4] + 100)])
                mem[mem[64] + 64] = idx
                emit PrizeSplitSet(cd[((96 * idx) + cd[4] + 68)] << 240, cd[((96 * idx) + cd[4] + 100)] << 248, idx, address(cd[((96 * idx) + cd[4] + 36)]));
            else:
                if uint16(cd[((96 * idx) + cd[4] + 68)]) != prizeSplit[idx].field_0:
                    require idx < prizeSplit.length
                    mem[0] = 114
                    address(prizeSplit[idx].field_0) = address(cd[((96 * idx) + cd[4] + 36)])
                    prizeSplit[idx].field_160 = uint16(cd[((96 * idx) + cd[4] + 68)])
                    uint8(prizeSplit[idx].field_176) = uint8(cd[((96 * idx) + cd[4] + 100)])
                    mem[mem[64]] = uint16(cd[((96 * idx) + cd[4] + 68)])
                    mem[mem[64] + 32] = uint8(cd[((96 * idx) + cd[4] + 100)])
                    mem[mem[64] + 64] = idx
                    emit PrizeSplitSet(cd[((96 * idx) + cd[4] + 68)] << 240, cd[((96 * idx) + cd[4] + 100)] << 248, idx, address(cd[((96 * idx) + cd[4] + 36)]));
                else:
                    if uint8(cd[((96 * idx) + cd[4] + 100)]) != uint8(prizeSplit[idx].field_0):
                        require idx < prizeSplit.length
                        mem[0] = 114
                        address(prizeSplit[idx].field_0) = address(cd[((96 * idx) + cd[4] + 36)])
                        prizeSplit[idx].field_160 = uint16(cd[((96 * idx) + cd[4] + 68)])
                        uint8(prizeSplit[idx].field_176) = uint8(cd[((96 * idx) + cd[4] + 100)])
                        mem[mem[64]] = uint16(cd[((96 * idx) + cd[4] + 68)])
                        mem[mem[64] + 32] = uint8(cd[((96 * idx) + cd[4] + 100)])
                        mem[mem[64] + 64] = idx
                        emit PrizeSplitSet(cd[((96 * idx) + cd[4] + 68)] << 240, cd[((96 * idx) + cd[4] + 100)] << 248, idx, address(cd[((96 * idx) + cd[4] + 36)]));
        idx = idx + 1
        continue 
    # nil
}

function startAward() payable {
    if prizePeriodSeconds + prizePeriodStartedAt < prizePeriodStartedAt:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < prizePeriodSeconds + prizePeriodStartedAt:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/prize-period-not-over'
    if lastRngRequestId:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-already-requested'
    require ext_code.size(address(rngAddress))
    staticcall address(rngAddress).getRequestFee() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        if ext_call.return_data[32] > 0:
            if not ext_call.return_data[32]:
                mem[ceil32(return_data.size) + 132] = address(rngAddress)
                mem[ceil32(return_data.size) + 164] = ext_call.return_data[32]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor105)
                mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor105), uint32(stor105), ext_call.return_data[32], 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor105), uint32(stor105), ext_call.return_data[32], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor105), uint32(stor105), ext_call.return_data[32], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 100] = this.address
                mem[ceil32(return_data.size) + 132] = address(rngAddress)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(rngAddress)
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(2 * ceil32(return_data.size)) + 132] = address(rngAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[32]
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor105)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor105), uint32(stor105), ext_call.return_data[32], 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor105), uint32(stor105), ext_call.return_data[32], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor105), uint32(stor105), ext_call.return_data[32], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                        if not mem[(2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(rngAddress))
    call address(rngAddress).requestRandomNumber() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    lastRngRequestId = ext_call.return_data[28 len 4]
    lastRngLockBlock = ext_call.return_data[60 len 4]
    if block.timestamp >= 4294967296:
        revert with 0, 'SafeCast: value doesn't fit in 32 bits'
    uint32(stor106.field_64) = uint32(block.timestamp)
    emit PrizePoolAwardStarted(ext_call.return_data[60 len 4], msg.sender, prizePoolAddress, uint32(ext_call.return_data[0]));
}

function addExternalErc20Awards(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if msg.sender == owner:
        if not lastRngLockBlock:
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if not ext_code.size(address(cd[((32 * idx) + arg1 + 36)])):
                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(prizePoolAddress)
                staticcall prizePoolAddress.0x6a3fd4f9 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_423] == bool(mem[_423])
                if not mem[_423]:
                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                _435 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_435 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_435 + 36 len 28]
                s = 0
                while s < mem[_435]:
                    mem[s + _435 + 36] = mem[s + _435 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_435]) <= mem[_435]:
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_435] + _435 + -mem[64] + 32]
                    if return_data.size:
                        _807 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_807] = return_data.size
                        mem[_807 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[_435] + _435 + 36] = 0
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_435] + _435 + -mem[64] + 32]
                    if return_data.size:
                        _808 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_808] = return_data.size
                        mem[_808 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                if 1 == address(cd[((32 * idx) + arg1 + 36)]):
                    revert with 0, 'Invalid address'
                if not address(cd[((32 * idx) + arg1 + 36)]):
                    revert with 0, 'Invalid address'
                if address(stor111[address(cd[((32 * idx) + arg1 + 36)])].field_0):
                    revert with 0, 'Already added'
                mem[32] = 111
                address(stor111[address(cd[((32 * idx) + arg1 + 36)])].field_0) = address(stor111[1].field_0)
                mem[0] = 1
                address(stor111[1].field_0) = address(cd[((32 * idx) + arg1 + 36)])
                stor110++
                emit ExternalErc20AwardAdded(address(cd[((32 * idx) + arg1 + 36)]));
                idx = idx + 1
                continue 
        else:
            if block.number >= lastRngLockBlock:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if not ext_code.size(address(cd[((32 * idx) + arg1 + 36)])):
                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(prizePoolAddress)
                staticcall prizePoolAddress.0x6a3fd4f9 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_424] == bool(mem[_424])
                if not mem[_424]:
                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                _439 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_439 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_439 + 36 len 28]
                s = 0
                while s < mem[_439]:
                    mem[s + _439 + 36] = mem[s + _439 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_439]) <= mem[_439]:
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_439] + _439 + -mem[64] + 32]
                    if return_data.size:
                        _809 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_809] = return_data.size
                        mem[_809 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[_439] + _439 + 36] = 0
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_439] + _439 + -mem[64] + 32]
                    if return_data.size:
                        _810 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_810] = return_data.size
                        mem[_810 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                if 1 == address(cd[((32 * idx) + arg1 + 36)]):
                    revert with 0, 'Invalid address'
                if not address(cd[((32 * idx) + arg1 + 36)]):
                    revert with 0, 'Invalid address'
                if address(stor111[address(cd[((32 * idx) + arg1 + 36)])].field_0):
                    revert with 0, 'Already added'
                mem[32] = 111
                address(stor111[address(cd[((32 * idx) + arg1 + 36)])].field_0) = address(stor111[1].field_0)
                mem[0] = 1
                address(stor111[1].field_0) = address(cd[((32 * idx) + arg1 + 36)])
                stor110++
                emit ExternalErc20AwardAdded(address(cd[((32 * idx) + arg1 + 36)]));
                idx = idx + 1
                continue 
    else:
        if msg.sender == periodicPrizeStrategyListenerAddress:
            if not lastRngLockBlock:
                idx = 0
                while idx < arg1.length:
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    if not ext_code.size(address(cd[((32 * idx) + arg1 + 36)])):
                        revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(prizePoolAddress)
                    staticcall prizePoolAddress.0x6a3fd4f9 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _425 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_425] == bool(mem[_425])
                    if not mem[_425]:
                        revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                    _443 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_443 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_443 + 36 len 28]
                    s = 0
                    while s < mem[_443]:
                        mem[s + _443 + 36] = mem[s + _443 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_443]) <= mem[_443]:
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_443] + _443 + -mem[64] + 32]
                        if return_data.size:
                            _811 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_811] = return_data.size
                            mem[_811 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[_443] + _443 + 36] = 0
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_443] + _443 + -mem[64] + 32]
                        if return_data.size:
                            _812 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_812] = return_data.size
                            mem[_812 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                    if 1 == address(cd[((32 * idx) + arg1 + 36)]):
                        revert with 0, 'Invalid address'
                    if not address(cd[((32 * idx) + arg1 + 36)]):
                        revert with 0, 'Invalid address'
                    if address(stor111[address(cd[((32 * idx) + arg1 + 36)])].field_0):
                        revert with 0, 'Already added'
                    mem[32] = 111
                    address(stor111[address(cd[((32 * idx) + arg1 + 36)])].field_0) = address(stor111[1].field_0)
                    mem[0] = 1
                    address(stor111[1].field_0) = address(cd[((32 * idx) + arg1 + 36)])
                    stor110++
                    emit ExternalErc20AwardAdded(address(cd[((32 * idx) + arg1 + 36)]));
                    idx = idx + 1
                    continue 
            else:
                if block.number >= lastRngLockBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
                idx = 0
                while idx < arg1.length:
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    if not ext_code.size(address(cd[((32 * idx) + arg1 + 36)])):
                        revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(prizePoolAddress)
                    staticcall prizePoolAddress.0x6a3fd4f9 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_426] == bool(mem[_426])
                    if not mem[_426]:
                        revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                    _447 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_447 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_447 + 36 len 28]
                    s = 0
                    while s < mem[_447]:
                        mem[s + _447 + 36] = mem[s + _447 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_447]) <= mem[_447]:
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_447] + _447 + -mem[64] + 32]
                        if return_data.size:
                            _813 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_813] = return_data.size
                            mem[_813 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[_447] + _447 + 36] = 0
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_447] + _447 + -mem[64] + 32]
                        if return_data.size:
                            _814 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_814] = return_data.size
                            mem[_814 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                    if 1 == address(cd[((32 * idx) + arg1 + 36)]):
                        revert with 0, 'Invalid address'
                    if not address(cd[((32 * idx) + arg1 + 36)]):
                        revert with 0, 'Invalid address'
                    if address(stor111[address(cd[((32 * idx) + arg1 + 36)])].field_0):
                        revert with 0, 'Already added'
                    mem[32] = 111
                    address(stor111[address(cd[((32 * idx) + arg1 + 36)])].field_0) = address(stor111[1].field_0)
                    mem[0] = 1
                    address(stor111[1].field_0) = address(cd[((32 * idx) + arg1 + 36)])
                    stor110++
                    emit ExternalErc20AwardAdded(address(cd[((32 * idx) + arg1 + 36)]));
                    idx = idx + 1
                    continue 
        else:
            if sub_0d847fc4Address != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/only-owner-or-listener'
            if not lastRngLockBlock:
                idx = 0
                while idx < arg1.length:
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    if not ext_code.size(address(cd[((32 * idx) + arg1 + 36)])):
                        revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(prizePoolAddress)
                    staticcall prizePoolAddress.0x6a3fd4f9 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_427] == bool(mem[_427])
                    if not mem[_427]:
                        revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                    _451 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_451 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_451 + 36 len 28]
                    s = 0
                    while s < mem[_451]:
                        mem[s + _451 + 36] = mem[s + _451 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_451]) <= mem[_451]:
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_451] + _451 + -mem[64] + 32]
                        if return_data.size:
                            _815 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_815] = return_data.size
                            mem[_815 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[_451] + _451 + 36] = 0
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_451] + _451 + -mem[64] + 32]
                        if return_data.size:
                            _816 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_816] = return_data.size
                            mem[_816 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                    if 1 == address(cd[((32 * idx) + arg1 + 36)]):
                        revert with 0, 'Invalid address'
                    if not address(cd[((32 * idx) + arg1 + 36)]):
                        revert with 0, 'Invalid address'
                    if address(stor111[address(cd[((32 * idx) + arg1 + 36)])].field_0):
                        revert with 0, 'Already added'
                    mem[32] = 111
                    address(stor111[address(cd[((32 * idx) + arg1 + 36)])].field_0) = address(stor111[1].field_0)
                    mem[0] = 1
                    address(stor111[1].field_0) = address(cd[((32 * idx) + arg1 + 36)])
                    stor110++
                    emit ExternalErc20AwardAdded(address(cd[((32 * idx) + arg1 + 36)]));
                    idx = idx + 1
                    continue 
            else:
                if block.number >= lastRngLockBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PeriodicPrizeStrategy/rng-in-flight'
                idx = 0
                while idx < arg1.length:
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    if not ext_code.size(address(cd[((32 * idx) + arg1 + 36)])):
                        revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(prizePoolAddress)
                    staticcall prizePoolAddress.0x6a3fd4f9 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_428] == bool(mem[_428])
                    if not mem[_428]:
                        revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                    _455 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_455 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_455 + 36 len 28]
                    s = 0
                    while s < mem[_455]:
                        mem[s + _455 + 36] = mem[s + _455 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_455]) <= mem[_455]:
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_455] + _455 + -mem[64] + 32]
                        if return_data.size:
                            _817 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_817] = return_data.size
                            mem[_817 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[_455] + _455 + 36] = 0
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_455] + _455 + -mem[64] + 32]
                        if return_data.size:
                            _818 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_818] = return_data.size
                            mem[_818 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                    if 1 == address(cd[((32 * idx) + arg1 + 36)]):
                        revert with 0, 'Invalid address'
                    if not address(cd[((32 * idx) + arg1 + 36)]):
                        revert with 0, 'Invalid address'
                    if address(stor111[address(cd[((32 * idx) + arg1 + 36)])].field_0):
                        revert with 0, 'Already added'
                    mem[32] = 111
                    address(stor111[address(cd[((32 * idx) + arg1 + 36)])].field_0) = address(stor111[1].field_0)
                    mem[0] = 1
                    address(stor111[1].field_0) = address(cd[((32 * idx) + arg1 + 36)])
                    stor110++
                    emit ExternalErc20AwardAdded(address(cd[((32 * idx) + arg1 + 36)]));
                    idx = idx + 1
                    continue 
}

function initialize(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, address arg6, address[] arg7) payable {
    require calldata.size - 4 >= 224
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 <= test266151307()
    require calldata.size > arg7 + 35
    require arg7.length <= test266151307()
    require (32 * arg7.length) + 128 >= 96 and (32 * arg7.length) + 128 <= test266151307()
    mem[64] = (32 * arg7.length) + 128
    mem[96] = arg7.length
    require calldata.size >= arg7 + (32 * arg7.length) + 36
    s = arg7 + 36
    t = 128
    idx = 0
    while idx < arg7.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if uint8(stor0.field_8):
        if not arg3:
            revert with 0, 'PeriodicPrizeStrategy/prize-pool-not-zero'
        if not arg4:
            revert with 0, 'PeriodicPrizeStrategy/ticket-not-zero'
        if not arg5:
            revert with 0, 'PeriodicPrizeStrategy/sponsorship-not-zero'
        if not arg6:
            revert with 0, 'PeriodicPrizeStrategy/rng-not-zero'
        prizePoolAddress = arg3
        ticketAddress = arg4
        address(rngAddress) = arg6
        sponsorshipAddress = arg5
        if arg2 <= 0:
            revert with 0, 'PeriodicPrizeStrategy/prize-period-greater-than-zero'
        prizePeriodSeconds = arg2
        mem[(32 * arg7.length) + 128] = arg2
        emit PrizePeriodSecondsUpdated(arg2);
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            if stor110:
                revert with 0, 'Already init'
            mem[0] = 1
            mem[32] = 111
            uint8(stor111[1].field_0) = 1
            Mask(152, 0, stor111[1].field_8) = 0
            idx = 0
            while idx < arg7.length:
                require idx < mem[96]
                _18896 = mem[(32 * idx) + 128]
                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(prizePoolAddress)
                staticcall prizePoolAddress.0x6a3fd4f9 with:
                        gas gas_remaining wei
                       args address(_18896)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20047 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_20047] == bool(mem[_20047])
                if not mem[_20047]:
                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                _20621 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_20621 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20621 + 36 len 28]
                s = 0
                while s < mem[_20621]:
                    mem[s + _20621 + 36] = mem[s + _20621 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_20621]) <= mem[_20621]:
                    staticcall address(_18896).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_20621] + _20621 + -mem[64] + 32]
                    if return_data.size:
                        _28211 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_28211] = return_data.size
                        mem[_28211 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[_20621] + _20621 + 36] = 0
                    staticcall address(_18896).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_20621] + _20621 + -mem[64] + 32]
                    if return_data.size:
                        _28212 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_28212] = return_data.size
                        mem[_28212 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                if 1 == address(_18896):
                    revert with 0, 'Invalid address'
                if not address(_18896):
                    revert with 0, 'Invalid address'
                if address(stor111[address(_18896)].field_0):
                    revert with 0, 'Already added'
                mem[32] = 111
                address(stor111[address(_18896)].field_0) = address(stor111[1].field_0)
                mem[0] = 1
                address(stor111[1].field_0) = address(_18896)
                stor110++
                emit ExternalErc20AwardAdded(address(_18896));
                idx = idx + 1
                continue 
            prizePeriodSeconds = arg2
            prizePeriodStartedAt = arg1
            uint16(stor107.field_0) = 1800
            uint16(stor107.field_16) = 0
            emit RngRequestTimeoutSet(1800);
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = arg4
            mem[mem[64] + 96] = arg5
            mem[mem[64] + 128] = arg6
            mem[mem[64] + 160] = 192
            mem[mem[64] + 192] = mem[96]
            idx = 0
            s = mem[64] + 224
            t = 128
            while idx < mem[96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
        else:
            if not ext_code.size(this.address):
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    if stor110:
                        revert with 0, 'Already init'
                    mem[0] = 1
                    mem[32] = 111
                    uint8(stor111[1].field_0) = 1
                    Mask(152, 0, stor111[1].field_8) = 0
                    idx = 0
                    while idx < arg7.length:
                        require idx < mem[96]
                        _18897 = mem[(32 * idx) + 128]
                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(prizePoolAddress)
                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                gas gas_remaining wei
                               args address(_18897)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20049 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_20049] == bool(mem[_20049])
                        if not mem[_20049]:
                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                        _20625 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_20625 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20625 + 36 len 28]
                        s = 0
                        while s < mem[_20625]:
                            mem[s + _20625 + 36] = mem[s + _20625 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_20625]) <= mem[_20625]:
                            staticcall address(_18897).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_20625] + _20625 + -mem[64] + 32]
                            if return_data.size:
                                _28213 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_28213] = return_data.size
                                mem[_28213 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[_20625] + _20625 + 36] = 0
                            staticcall address(_18897).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_20625] + _20625 + -mem[64] + 32]
                            if return_data.size:
                                _28214 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_28214] = return_data.size
                                mem[_28214 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                        if 1 == address(_18897):
                            revert with 0, 'Invalid address'
                        if not address(_18897):
                            revert with 0, 'Invalid address'
                        if address(stor111[address(_18897)].field_0):
                            revert with 0, 'Already added'
                        mem[32] = 111
                        address(stor111[address(_18897)].field_0) = address(stor111[1].field_0)
                        mem[0] = 1
                        address(stor111[1].field_0) = address(_18897)
                        stor110++
                        emit ExternalErc20AwardAdded(address(_18897));
                        idx = idx + 1
                        continue 
                    prizePeriodSeconds = arg2
                    prizePeriodStartedAt = arg1
                    uint16(stor107.field_0) = 1800
                    uint16(stor107.field_16) = 0
                    emit RngRequestTimeoutSet(1800);
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = arg4
                    mem[mem[64] + 96] = arg5
                    mem[mem[64] + 128] = arg6
                    mem[mem[64] + 160] = 192
                    mem[mem[64] + 192] = mem[96]
                    idx = 0
                    s = mem[64] + 224
                    t = 128
                    while idx < mem[96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            if stor110:
                                revert with 0, 'Already init'
                            mem[0] = 1
                            mem[32] = 111
                            uint8(stor111[1].field_0) = 1
                            Mask(152, 0, stor111[1].field_8) = 0
                            idx = 0
                            while idx < arg7.length:
                                require idx < mem[96]
                                _18898 = mem[(32 * idx) + 128]
                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(prizePoolAddress)
                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                        gas gas_remaining wei
                                       args address(_18898)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _20051 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_20051] == bool(mem[_20051])
                                if not mem[_20051]:
                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                _20629 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_20629 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20629 + 36 len 28]
                                s = 0
                                while s < mem[_20629]:
                                    mem[s + _20629 + 36] = mem[s + _20629 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_20629]) <= mem[_20629]:
                                    staticcall address(_18898).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20629] + _20629 + -mem[64] + 32]
                                    if return_data.size:
                                        _28215 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28215] = return_data.size
                                        mem[_28215 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[_20629] + _20629 + 36] = 0
                                    staticcall address(_18898).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20629] + _20629 + -mem[64] + 32]
                                    if return_data.size:
                                        _28216 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28216] = return_data.size
                                        mem[_28216 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                if 1 == address(_18898):
                                    revert with 0, 'Invalid address'
                                if not address(_18898):
                                    revert with 0, 'Invalid address'
                                if address(stor111[address(_18898)].field_0):
                                    revert with 0, 'Already added'
                                mem[32] = 111
                                address(stor111[address(_18898)].field_0) = address(stor111[1].field_0)
                                mem[0] = 1
                                address(stor111[1].field_0) = address(_18898)
                                stor110++
                                emit ExternalErc20AwardAdded(address(_18898));
                                idx = idx + 1
                                continue 
                            prizePeriodSeconds = arg2
                            prizePeriodStartedAt = arg1
                            uint16(stor107.field_0) = 1800
                            uint16(stor107.field_16) = 0
                            emit RngRequestTimeoutSet(1800);
                            _19247 = mem[64]
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = arg2
                            mem[mem[64] + 64] = arg4
                            mem[mem[64] + 96] = arg5
                            mem[mem[64] + 128] = arg6
                            mem[mem[64] + 160] = 192
                            _19588 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            idx = 0
                            s = mem[64] + 224
                            t = 128
                            while idx < _19588:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xf9632d21: mem[mem[64] len _19247 + (32 * _19588) + -mem[64] + 224], arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18901 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18901)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20057 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20057] == bool(mem[_20057])
                                        if not mem[_20057]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20641 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20641 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20641 + 36 len 28]
                                        s = 0
                                        while s < mem[_20641]:
                                            mem[s + _20641 + 36] = mem[s + _20641 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20641]) <= mem[_20641]:
                                            staticcall address(_18901).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20641] + _20641 + -mem[64] + 32]
                                            if return_data.size:
                                                _28221 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28221] = return_data.size
                                                mem[_28221 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20641] + _20641 + 36] = 0
                                            staticcall address(_18901).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20641] + _20641 + -mem[64] + 32]
                                            if return_data.size:
                                                _28222 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28222] = return_data.size
                                                mem[_28222 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18901):
                                            revert with 0, 'Invalid address'
                                        if not address(_18901):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18901)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18901)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18901)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18901));
                                        idx = idx + 1
                                        continue 
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18902 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18902)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20059 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20059] == bool(mem[_20059])
                                        if not mem[_20059]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20645 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20645 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20645 + 36 len 28]
                                        s = 0
                                        while s < mem[_20645]:
                                            mem[s + _20645 + 36] = mem[s + _20645 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20645]) <= mem[_20645]:
                                            staticcall address(_18902).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20645] + _20645 + -mem[64] + 32]
                                            if return_data.size:
                                                _28223 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28223] = return_data.size
                                                mem[_28223 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20645] + _20645 + 36] = 0
                                            staticcall address(_18902).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20645] + _20645 + -mem[64] + 32]
                                            if return_data.size:
                                                _28224 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28224] = return_data.size
                                                mem[_28224 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18902):
                                            revert with 0, 'Invalid address'
                                        if not address(_18902):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18902)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18902)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18902)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18902));
                                        idx = idx + 1
                                        continue 
                                prizePeriodSeconds = arg2
                                prizePeriodStartedAt = arg1
                                uint16(stor107.field_0) = 1800
                                uint16(stor107.field_16) = 0
                                emit RngRequestTimeoutSet(1800);
                                mem[mem[64]] = arg1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = arg4
                                mem[mem[64] + 96] = arg5
                                mem[mem[64] + 128] = arg6
                                mem[mem[64] + 160] = 192
                                mem[mem[64] + 192] = mem[96]
                                idx = 0
                                s = mem[64] + 224
                                t = 128
                                while idx < mem[96]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                            else:
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18899 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18899)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20053 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20053] == bool(mem[_20053])
                                        if not mem[_20053]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20633 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20633 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20633 + 36 len 28]
                                        s = 0
                                        while s < mem[_20633]:
                                            mem[s + _20633 + 36] = mem[s + _20633 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20633]) <= mem[_20633]:
                                            staticcall address(_18899).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20633] + _20633 + -mem[64] + 32]
                                            if return_data.size:
                                                _28217 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28217] = return_data.size
                                                mem[_28217 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20633] + _20633 + 36] = 0
                                            staticcall address(_18899).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20633] + _20633 + -mem[64] + 32]
                                            if return_data.size:
                                                _28218 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28218] = return_data.size
                                                mem[_28218 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18899):
                                            revert with 0, 'Invalid address'
                                        if not address(_18899):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18899)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18899)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18899)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18899));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < mem[96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18900 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18900)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20055 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20055] == bool(mem[_20055])
                                        if not mem[_20055]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20637 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20637 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20637 + 36 len 28]
                                        s = 0
                                        while s < mem[_20637]:
                                            mem[s + _20637 + 36] = mem[s + _20637 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20637]) <= mem[_20637]:
                                            staticcall address(_18900).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20637] + _20637 + -mem[64] + 32]
                                            if return_data.size:
                                                _28219 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28219] = return_data.size
                                                mem[_28219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20637] + _20637 + 36] = 0
                                            staticcall address(_18900).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20637] + _20637 + -mem[64] + 32]
                                            if return_data.size:
                                                _28220 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28220] = return_data.size
                                                mem[_28220 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18900):
                                            revert with 0, 'Invalid address'
                                        if not address(_18900):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18900)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18900)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18900)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18900));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19253 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19590 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19590:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19253 + (32 * _19590) + -mem[64] + 224], arg3
                    else:
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            if stor110:
                                revert with 0, 'Already init'
                            mem[0] = 1
                            mem[32] = 111
                            uint8(stor111[1].field_0) = 1
                            Mask(152, 0, stor111[1].field_8) = 0
                            idx = 0
                            while idx < arg7.length:
                                require idx < mem[96]
                                _18903 = mem[(32 * idx) + 128]
                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(prizePoolAddress)
                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                        gas gas_remaining wei
                                       args address(_18903)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _20061 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_20061] == bool(mem[_20061])
                                if not mem[_20061]:
                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                _20649 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_20649 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20649 + 36 len 28]
                                s = 0
                                while s < mem[_20649]:
                                    mem[s + _20649 + 36] = mem[s + _20649 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_20649]) <= mem[_20649]:
                                    staticcall address(_18903).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20649] + _20649 + -mem[64] + 32]
                                    if return_data.size:
                                        _28225 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28225] = return_data.size
                                        mem[_28225 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[_20649] + _20649 + 36] = 0
                                    staticcall address(_18903).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20649] + _20649 + -mem[64] + 32]
                                    if return_data.size:
                                        _28226 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28226] = return_data.size
                                        mem[_28226 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                if 1 == address(_18903):
                                    revert with 0, 'Invalid address'
                                if not address(_18903):
                                    revert with 0, 'Invalid address'
                                if address(stor111[address(_18903)].field_0):
                                    revert with 0, 'Already added'
                                mem[32] = 111
                                address(stor111[address(_18903)].field_0) = address(stor111[1].field_0)
                                mem[0] = 1
                                address(stor111[1].field_0) = address(_18903)
                                stor110++
                                emit ExternalErc20AwardAdded(address(_18903));
                                idx = idx + 1
                                continue 
                            prizePeriodSeconds = arg2
                            prizePeriodStartedAt = arg1
                            uint16(stor107.field_0) = 1800
                            uint16(stor107.field_16) = 0
                            emit RngRequestTimeoutSet(1800);
                            _19262 = mem[64]
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = arg2
                            mem[mem[64] + 64] = arg4
                            mem[mem[64] + 96] = arg5
                            mem[mem[64] + 128] = arg6
                            mem[mem[64] + 160] = 192
                            _19593 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            idx = 0
                            s = mem[64] + 224
                            t = 128
                            while idx < _19593:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xf9632d21: mem[mem[64] len _19262 + (32 * _19593) + -mem[64] + 224], arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18904 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18904)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20063 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20063] == bool(mem[_20063])
                                        if not mem[_20063]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20653 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20653 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20653 + 36 len 28]
                                        s = 0
                                        while s < mem[_20653]:
                                            mem[s + _20653 + 36] = mem[s + _20653 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20653]) <= mem[_20653]:
                                            staticcall address(_18904).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20653] + _20653 + -mem[64] + 32]
                                            if return_data.size:
                                                _28227 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28227] = return_data.size
                                                mem[_28227 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20653] + _20653 + 36] = 0
                                            staticcall address(_18904).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20653] + _20653 + -mem[64] + 32]
                                            if return_data.size:
                                                _28228 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28228] = return_data.size
                                                mem[_28228 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18904):
                                            revert with 0, 'Invalid address'
                                        if not address(_18904):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18904)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18904)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18904)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18904));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < mem[96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18905 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18905)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20065 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20065] == bool(mem[_20065])
                                        if not mem[_20065]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20657 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20657 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20657 + 36 len 28]
                                        s = 0
                                        while s < mem[_20657]:
                                            mem[s + _20657 + 36] = mem[s + _20657 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20657]) <= mem[_20657]:
                                            staticcall address(_18905).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20657] + _20657 + -mem[64] + 32]
                                            if return_data.size:
                                                _28229 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28229] = return_data.size
                                                mem[_28229 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20657] + _20657 + 36] = 0
                                            staticcall address(_18905).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20657] + _20657 + -mem[64] + 32]
                                            if return_data.size:
                                                _28230 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28230] = return_data.size
                                                mem[_28230 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18905):
                                            revert with 0, 'Invalid address'
                                        if not address(_18905):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18905)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18905)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18905)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18905));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19268 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19595 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19595:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19268 + (32 * _19595) + -mem[64] + 224], arg3
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18906 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18906)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20067 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20067] == bool(mem[_20067])
                                        if not mem[_20067]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20661 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20661 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20661 + 36 len 28]
                                        s = 0
                                        while s < mem[_20661]:
                                            mem[s + _20661 + 36] = mem[s + _20661 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20661]) <= mem[_20661]:
                                            staticcall address(_18906).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20661] + _20661 + -mem[64] + 32]
                                            if return_data.size:
                                                _28231 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28231] = return_data.size
                                                mem[_28231 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20661] + _20661 + 36] = 0
                                            staticcall address(_18906).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20661] + _20661 + -mem[64] + 32]
                                            if return_data.size:
                                                _28232 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28232] = return_data.size
                                                mem[_28232 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18906):
                                            revert with 0, 'Invalid address'
                                        if not address(_18906):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18906)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18906)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18906)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18906));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < mem[96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18907 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18907)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20069 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20069] == bool(mem[_20069])
                                        if not mem[_20069]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20665 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20665 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20665 + 36 len 28]
                                        s = 0
                                        while s < mem[_20665]:
                                            mem[s + _20665 + 36] = mem[s + _20665 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20665]) <= mem[_20665]:
                                            staticcall address(_18907).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20665] + _20665 + -mem[64] + 32]
                                            if return_data.size:
                                                _28233 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28233] = return_data.size
                                                mem[_28233 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20665] + _20665 + 36] = 0
                                            staticcall address(_18907).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20665] + _20665 + -mem[64] + 32]
                                            if return_data.size:
                                                _28234 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28234] = return_data.size
                                                mem[_28234 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18907):
                                            revert with 0, 'Invalid address'
                                        if not address(_18907):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18907)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18907)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18907)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18907));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19274 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19597 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19597:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19274 + (32 * _19597) + -mem[64] + 224], arg3
            else:
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    if stor110:
                        revert with 0, 'Already init'
                    mem[0] = 1
                    mem[32] = 111
                    uint8(stor111[1].field_0) = 1
                    Mask(152, 0, stor111[1].field_8) = 0
                    idx = 0
                    while idx < arg7.length:
                        require idx < mem[96]
                        _18908 = mem[(32 * idx) + 128]
                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(prizePoolAddress)
                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                gas gas_remaining wei
                               args address(_18908)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20071 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_20071] == bool(mem[_20071])
                        if not mem[_20071]:
                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                        _20669 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_20669 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20669 + 36 len 28]
                        s = 0
                        while s < mem[_20669]:
                            mem[s + _20669 + 36] = mem[s + _20669 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_20669]) <= mem[_20669]:
                            staticcall address(_18908).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_20669] + _20669 + -mem[64] + 32]
                            if return_data.size:
                                _28235 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_28235] = return_data.size
                                mem[_28235 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[_20669] + _20669 + 36] = 0
                            staticcall address(_18908).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_20669] + _20669 + -mem[64] + 32]
                            if return_data.size:
                                _28236 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_28236] = return_data.size
                                mem[_28236 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                        if 1 == address(_18908):
                            revert with 0, 'Invalid address'
                        if not address(_18908):
                            revert with 0, 'Invalid address'
                        if address(stor111[address(_18908)].field_0):
                            revert with 0, 'Already added'
                        mem[32] = 111
                        address(stor111[address(_18908)].field_0) = address(stor111[1].field_0)
                        mem[0] = 1
                        address(stor111[1].field_0) = address(_18908)
                        stor110++
                        emit ExternalErc20AwardAdded(address(_18908));
                        idx = idx + 1
                        continue 
                    prizePeriodSeconds = arg2
                    prizePeriodStartedAt = arg1
                    uint16(stor107.field_0) = 1800
                    uint16(stor107.field_16) = 0
                    emit RngRequestTimeoutSet(1800);
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = arg4
                    mem[mem[64] + 96] = arg5
                    mem[mem[64] + 128] = arg6
                    mem[mem[64] + 160] = 192
                    mem[mem[64] + 192] = mem[96]
                    idx = 0
                    s = mem[64] + 224
                    t = 128
                    while idx < mem[96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            if stor110:
                                revert with 0, 'Already init'
                            mem[0] = 1
                            mem[32] = 111
                            uint8(stor111[1].field_0) = 1
                            Mask(152, 0, stor111[1].field_8) = 0
                            idx = 0
                            while idx < arg7.length:
                                require idx < mem[96]
                                _18909 = mem[(32 * idx) + 128]
                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(prizePoolAddress)
                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                        gas gas_remaining wei
                                       args address(_18909)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _20073 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_20073] == bool(mem[_20073])
                                if not mem[_20073]:
                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                _20673 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_20673 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20673 + 36 len 28]
                                s = 0
                                while s < mem[_20673]:
                                    mem[s + _20673 + 36] = mem[s + _20673 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_20673]) <= mem[_20673]:
                                    staticcall address(_18909).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20673] + _20673 + -mem[64] + 32]
                                    if return_data.size:
                                        _28237 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28237] = return_data.size
                                        mem[_28237 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[_20673] + _20673 + 36] = 0
                                    staticcall address(_18909).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20673] + _20673 + -mem[64] + 32]
                                    if return_data.size:
                                        _28238 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28238] = return_data.size
                                        mem[_28238 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                if 1 == address(_18909):
                                    revert with 0, 'Invalid address'
                                if not address(_18909):
                                    revert with 0, 'Invalid address'
                                if address(stor111[address(_18909)].field_0):
                                    revert with 0, 'Already added'
                                mem[32] = 111
                                address(stor111[address(_18909)].field_0) = address(stor111[1].field_0)
                                mem[0] = 1
                                address(stor111[1].field_0) = address(_18909)
                                stor110++
                                emit ExternalErc20AwardAdded(address(_18909));
                                idx = idx + 1
                                continue 
                            prizePeriodSeconds = arg2
                            prizePeriodStartedAt = arg1
                            uint16(stor107.field_0) = 1800
                            uint16(stor107.field_16) = 0
                            emit RngRequestTimeoutSet(1800);
                            _19280 = mem[64]
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = arg2
                            mem[mem[64] + 64] = arg4
                            mem[mem[64] + 96] = arg5
                            mem[mem[64] + 128] = arg6
                            mem[mem[64] + 160] = 192
                            _19599 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            idx = 0
                            s = mem[64] + 224
                            t = 128
                            while idx < _19599:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xf9632d21: mem[mem[64] len _19280 + (32 * _19599) + -mem[64] + 224], arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18910 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18910)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20075 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20075] == bool(mem[_20075])
                                        if not mem[_20075]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20677 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20677 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20677 + 36 len 28]
                                        s = 0
                                        while s < mem[_20677]:
                                            mem[s + _20677 + 36] = mem[s + _20677 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20677]) <= mem[_20677]:
                                            staticcall address(_18910).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20677] + _20677 + -mem[64] + 32]
                                            if return_data.size:
                                                _28239 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28239] = return_data.size
                                                mem[_28239 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20677] + _20677 + 36] = 0
                                            staticcall address(_18910).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20677] + _20677 + -mem[64] + 32]
                                            if return_data.size:
                                                _28240 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28240] = return_data.size
                                                mem[_28240 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18910):
                                            revert with 0, 'Invalid address'
                                        if not address(_18910):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18910)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18910)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18910)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18910));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19283 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19600 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19600:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19283 + (32 * _19600) + -mem[64] + 224], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18911 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18911)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20077 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20077] == bool(mem[_20077])
                                        if not mem[_20077]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20681 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20681 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20681 + 36 len 28]
                                        s = 0
                                        while s < mem[_20681]:
                                            mem[s + _20681 + 36] = mem[s + _20681 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20681]) <= mem[_20681]:
                                            staticcall address(_18911).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20681] + _20681 + -mem[64] + 32]
                                            if return_data.size:
                                                _28241 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28241] = return_data.size
                                                mem[_28241 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20681] + _20681 + 36] = 0
                                            staticcall address(_18911).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20681] + _20681 + -mem[64] + 32]
                                            if return_data.size:
                                                _28242 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28242] = return_data.size
                                                mem[_28242 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18911):
                                            revert with 0, 'Invalid address'
                                        if not address(_18911):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18911)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18911)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18911)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18911));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < mem[96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18912 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18912)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20079 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20079] == bool(mem[_20079])
                                        if not mem[_20079]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20685 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20685 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20685 + 36 len 28]
                                        s = 0
                                        while s < mem[_20685]:
                                            mem[s + _20685 + 36] = mem[s + _20685 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20685]) <= mem[_20685]:
                                            staticcall address(_18912).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20685] + _20685 + -mem[64] + 32]
                                            if return_data.size:
                                                _28243 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28243] = return_data.size
                                                mem[_28243 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20685] + _20685 + 36] = 0
                                            staticcall address(_18912).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20685] + _20685 + -mem[64] + 32]
                                            if return_data.size:
                                                _28244 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28244] = return_data.size
                                                mem[_28244 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18912):
                                            revert with 0, 'Invalid address'
                                        if not address(_18912):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18912)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18912)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18912)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18912));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19289 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19602 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19602:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19289 + (32 * _19602) + -mem[64] + 224], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18913 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18913)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20081 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20081] == bool(mem[_20081])
                                        if not mem[_20081]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20689 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20689 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20689 + 36 len 28]
                                        s = 0
                                        while s < mem[_20689]:
                                            mem[s + _20689 + 36] = mem[s + _20689 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20689]) <= mem[_20689]:
                                            staticcall address(_18913).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20689] + _20689 + -mem[64] + 32]
                                            if return_data.size:
                                                _28245 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28245] = return_data.size
                                                mem[_28245 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20689] + _20689 + 36] = 0
                                            staticcall address(_18913).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20689] + _20689 + -mem[64] + 32]
                                            if return_data.size:
                                                _28246 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28246] = return_data.size
                                                mem[_28246 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18913):
                                            revert with 0, 'Invalid address'
                                        if not address(_18913):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18913)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18913)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18913)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18913));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19292 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19603 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19603:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19292 + (32 * _19603) + -mem[64] + 224], arg3
                    else:
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            if stor110:
                                revert with 0, 'Already init'
                            mem[0] = 1
                            mem[32] = 111
                            uint8(stor111[1].field_0) = 1
                            Mask(152, 0, stor111[1].field_8) = 0
                            idx = 0
                            while idx < arg7.length:
                                require idx < mem[96]
                                _18914 = mem[(32 * idx) + 128]
                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(prizePoolAddress)
                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                        gas gas_remaining wei
                                       args address(_18914)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _20083 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_20083] == bool(mem[_20083])
                                if not mem[_20083]:
                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                _20693 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_20693 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20693 + 36 len 28]
                                s = 0
                                while s < mem[_20693]:
                                    mem[s + _20693 + 36] = mem[s + _20693 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_20693]) <= mem[_20693]:
                                    staticcall address(_18914).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20693] + _20693 + -mem[64] + 32]
                                    if return_data.size:
                                        _28247 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28247] = return_data.size
                                        mem[_28247 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[_20693] + _20693 + 36] = 0
                                    staticcall address(_18914).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20693] + _20693 + -mem[64] + 32]
                                    if return_data.size:
                                        _28248 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28248] = return_data.size
                                        mem[_28248 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                if 1 == address(_18914):
                                    revert with 0, 'Invalid address'
                                if not address(_18914):
                                    revert with 0, 'Invalid address'
                                if address(stor111[address(_18914)].field_0):
                                    revert with 0, 'Already added'
                                mem[32] = 111
                                address(stor111[address(_18914)].field_0) = address(stor111[1].field_0)
                                mem[0] = 1
                                address(stor111[1].field_0) = address(_18914)
                                stor110++
                                emit ExternalErc20AwardAdded(address(_18914));
                                idx = idx + 1
                                continue 
                            prizePeriodSeconds = arg2
                            prizePeriodStartedAt = arg1
                            uint16(stor107.field_0) = 1800
                            uint16(stor107.field_16) = 0
                            emit RngRequestTimeoutSet(1800);
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = arg2
                            mem[mem[64] + 64] = arg4
                            mem[mem[64] + 96] = arg5
                            mem[mem[64] + 128] = arg6
                            mem[mem[64] + 160] = 192
                            mem[mem[64] + 192] = mem[96]
                            idx = 0
                            s = mem[64] + 224
                            t = 128
                            while idx < mem[96]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18917 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18917)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20089 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20089] == bool(mem[_20089])
                                        if not mem[_20089]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20705 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20705 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20705 + 36 len 28]
                                        s = 0
                                        while s < mem[_20705]:
                                            mem[s + _20705 + 36] = mem[s + _20705 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20705]) <= mem[_20705]:
                                            staticcall address(_18917).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20705] + _20705 + -mem[64] + 32]
                                            if return_data.size:
                                                _28253 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28253] = return_data.size
                                                mem[_28253 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20705] + _20705 + 36] = 0
                                            staticcall address(_18917).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20705] + _20705 + -mem[64] + 32]
                                            if return_data.size:
                                                _28254 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28254] = return_data.size
                                                mem[_28254 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18917):
                                            revert with 0, 'Invalid address'
                                        if not address(_18917):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18917)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18917)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18917)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18917));
                                        idx = idx + 1
                                        continue 
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18918 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18918)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20091 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20091] == bool(mem[_20091])
                                        if not mem[_20091]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20709 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20709 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20709 + 36 len 28]
                                        s = 0
                                        while s < mem[_20709]:
                                            mem[s + _20709 + 36] = mem[s + _20709 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20709]) <= mem[_20709]:
                                            staticcall address(_18918).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20709] + _20709 + -mem[64] + 32]
                                            if return_data.size:
                                                _28255 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28255] = return_data.size
                                                mem[_28255 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20709] + _20709 + 36] = 0
                                            staticcall address(_18918).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20709] + _20709 + -mem[64] + 32]
                                            if return_data.size:
                                                _28256 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28256] = return_data.size
                                                mem[_28256 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18918):
                                            revert with 0, 'Invalid address'
                                        if not address(_18918):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18918)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18918)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18918)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18918));
                                        idx = idx + 1
                                        continue 
                                prizePeriodSeconds = arg2
                                prizePeriodStartedAt = arg1
                                uint16(stor107.field_0) = 1800
                                uint16(stor107.field_16) = 0
                                emit RngRequestTimeoutSet(1800);
                                mem[mem[64]] = arg1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = arg4
                                mem[mem[64] + 96] = arg5
                                mem[mem[64] + 128] = arg6
                                mem[mem[64] + 160] = 192
                                mem[mem[64] + 192] = mem[96]
                                idx = 0
                                s = mem[64] + 224
                                t = 128
                                while idx < mem[96]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                            else:
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18915 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18915)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20085 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20085] == bool(mem[_20085])
                                        if not mem[_20085]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20697 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20697 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20697 + 36 len 28]
                                        s = 0
                                        while s < mem[_20697]:
                                            mem[s + _20697 + 36] = mem[s + _20697 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20697]) <= mem[_20697]:
                                            staticcall address(_18915).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20697] + _20697 + -mem[64] + 32]
                                            if return_data.size:
                                                _28249 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28249] = return_data.size
                                                mem[_28249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20697] + _20697 + 36] = 0
                                            staticcall address(_18915).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20697] + _20697 + -mem[64] + 32]
                                            if return_data.size:
                                                _28250 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28250] = return_data.size
                                                mem[_28250 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18915):
                                            revert with 0, 'Invalid address'
                                        if not address(_18915):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18915)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18915)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18915)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18915));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < mem[96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18916 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18916)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20087 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20087] == bool(mem[_20087])
                                        if not mem[_20087]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20701 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20701 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20701 + 36 len 28]
                                        s = 0
                                        while s < mem[_20701]:
                                            mem[s + _20701 + 36] = mem[s + _20701 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20701]) <= mem[_20701]:
                                            staticcall address(_18916).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20701] + _20701 + -mem[64] + 32]
                                            if return_data.size:
                                                _28251 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28251] = return_data.size
                                                mem[_28251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20701] + _20701 + 36] = 0
                                            staticcall address(_18916).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20701] + _20701 + -mem[64] + 32]
                                            if return_data.size:
                                                _28252 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28252] = return_data.size
                                                mem[_28252 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18916):
                                            revert with 0, 'Invalid address'
                                        if not address(_18916):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18916)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18916)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18916)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18916));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19301 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19606 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19606:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19301 + (32 * _19606) + -mem[64] + 224], arg3
    else:
        if not ext_code.size(this.address):
            if uint8(stor0.field_8):
                if not arg3:
                    revert with 0, 'PeriodicPrizeStrategy/prize-pool-not-zero'
                if not arg4:
                    revert with 0, 'PeriodicPrizeStrategy/ticket-not-zero'
                if not arg5:
                    revert with 0, 'PeriodicPrizeStrategy/sponsorship-not-zero'
                if not arg6:
                    revert with 0, 'PeriodicPrizeStrategy/rng-not-zero'
                prizePoolAddress = arg3
                ticketAddress = arg4
                address(rngAddress) = arg6
                sponsorshipAddress = arg5
                if arg2 <= 0:
                    revert with 0, 'PeriodicPrizeStrategy/prize-period-greater-than-zero'
                prizePeriodSeconds = arg2
                mem[(32 * arg7.length) + 128] = arg2
                emit PrizePeriodSecondsUpdated(arg2);
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    if stor110:
                        revert with 0, 'Already init'
                    mem[0] = 1
                    mem[32] = 111
                    uint8(stor111[1].field_0) = 1
                    Mask(152, 0, stor111[1].field_8) = 0
                    idx = 0
                    while idx < arg7.length:
                        require idx < mem[96]
                        _18919 = mem[(32 * idx) + 128]
                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(prizePoolAddress)
                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                gas gas_remaining wei
                               args address(_18919)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20093 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_20093] == bool(mem[_20093])
                        if not mem[_20093]:
                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                        _20713 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_20713 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20713 + 36 len 28]
                        s = 0
                        while s < mem[_20713]:
                            mem[s + _20713 + 36] = mem[s + _20713 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_20713]) <= mem[_20713]:
                            staticcall address(_18919).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_20713] + _20713 + -mem[64] + 32]
                            if return_data.size:
                                _28257 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_28257] = return_data.size
                                mem[_28257 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[_20713] + _20713 + 36] = 0
                            staticcall address(_18919).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_20713] + _20713 + -mem[64] + 32]
                            if return_data.size:
                                _28258 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_28258] = return_data.size
                                mem[_28258 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                        if 1 == address(_18919):
                            revert with 0, 'Invalid address'
                        if not address(_18919):
                            revert with 0, 'Invalid address'
                        if address(stor111[address(_18919)].field_0):
                            revert with 0, 'Already added'
                        mem[32] = 111
                        address(stor111[address(_18919)].field_0) = address(stor111[1].field_0)
                        mem[0] = 1
                        address(stor111[1].field_0) = address(_18919)
                        stor110++
                        emit ExternalErc20AwardAdded(address(_18919));
                        idx = idx + 1
                        continue 
                    prizePeriodSeconds = arg2
                    prizePeriodStartedAt = arg1
                    uint16(stor107.field_0) = 1800
                    uint16(stor107.field_16) = 0
                    emit RngRequestTimeoutSet(1800);
                    _19310 = mem[64]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = arg4
                    mem[mem[64] + 96] = arg5
                    mem[mem[64] + 128] = arg6
                    mem[mem[64] + 160] = 192
                    _19609 = mem[96]
                    mem[mem[64] + 192] = mem[96]
                    idx = 0
                    s = mem[64] + 224
                    t = 128
                    while idx < _19609:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0xf9632d21: mem[mem[64] len _19310 + (32 * _19609) + -mem[64] + 224], arg3
                else:
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            if stor110:
                                revert with 0, 'Already init'
                            mem[0] = 1
                            mem[32] = 111
                            uint8(stor111[1].field_0) = 1
                            Mask(152, 0, stor111[1].field_8) = 0
                            idx = 0
                            while idx < arg7.length:
                                require idx < mem[96]
                                _18920 = mem[(32 * idx) + 128]
                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(prizePoolAddress)
                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                        gas gas_remaining wei
                                       args address(_18920)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _20095 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_20095] == bool(mem[_20095])
                                if not mem[_20095]:
                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                _20717 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_20717 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20717 + 36 len 28]
                                s = 0
                                while s < mem[_20717]:
                                    mem[s + _20717 + 36] = mem[s + _20717 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_20717]) <= mem[_20717]:
                                    staticcall address(_18920).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20717] + _20717 + -mem[64] + 32]
                                    if return_data.size:
                                        _28259 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28259] = return_data.size
                                        mem[_28259 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[_20717] + _20717 + 36] = 0
                                    staticcall address(_18920).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20717] + _20717 + -mem[64] + 32]
                                    if return_data.size:
                                        _28260 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28260] = return_data.size
                                        mem[_28260 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                if 1 == address(_18920):
                                    revert with 0, 'Invalid address'
                                if not address(_18920):
                                    revert with 0, 'Invalid address'
                                if address(stor111[address(_18920)].field_0):
                                    revert with 0, 'Already added'
                                mem[32] = 111
                                address(stor111[address(_18920)].field_0) = address(stor111[1].field_0)
                                mem[0] = 1
                                address(stor111[1].field_0) = address(_18920)
                                stor110++
                                emit ExternalErc20AwardAdded(address(_18920));
                                idx = idx + 1
                                continue 
                            prizePeriodSeconds = arg2
                            prizePeriodStartedAt = arg1
                            uint16(stor107.field_0) = 1800
                            uint16(stor107.field_16) = 0
                            emit RngRequestTimeoutSet(1800);
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = arg2
                            mem[mem[64] + 64] = arg4
                            mem[mem[64] + 96] = arg5
                            mem[mem[64] + 128] = arg6
                            mem[mem[64] + 160] = 192
                            mem[mem[64] + 192] = mem[96]
                            idx = 0
                            s = mem[64] + 224
                            t = 128
                            while idx < mem[96]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18921 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18921)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20097 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20097] == bool(mem[_20097])
                                        if not mem[_20097]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20721 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20721 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20721 + 36 len 28]
                                        s = 0
                                        while s < mem[_20721]:
                                            mem[s + _20721 + 36] = mem[s + _20721 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20721]) <= mem[_20721]:
                                            staticcall address(_18921).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20721] + _20721 + -mem[64] + 32]
                                            if return_data.size:
                                                _28261 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28261] = return_data.size
                                                mem[_28261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20721] + _20721 + 36] = 0
                                            staticcall address(_18921).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20721] + _20721 + -mem[64] + 32]
                                            if return_data.size:
                                                _28262 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28262] = return_data.size
                                                mem[_28262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18921):
                                            revert with 0, 'Invalid address'
                                        if not address(_18921):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18921)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18921)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18921)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18921));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19316 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19611 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19611:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19316 + (32 * _19611) + -mem[64] + 224], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18924 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18924)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20103 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20103] == bool(mem[_20103])
                                                if not mem[_20103]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20733 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20733 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20733 + 36 len 28]
                                                s = 0
                                                while s < mem[_20733]:
                                                    mem[s + _20733 + 36] = mem[s + _20733 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20733]) <= mem[_20733]:
                                                    staticcall address(_18924).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20733] + _20733 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28267 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28267] = return_data.size
                                                        mem[_28267 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20733] + _20733 + 36] = 0
                                                    staticcall address(_18924).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20733] + _20733 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28268 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28268] = return_data.size
                                                        mem[_28268 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18924):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18924):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18924)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18924)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18924)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18924));
                                                idx = idx + 1
                                                continue 
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18925 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18925)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20105 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20105] == bool(mem[_20105])
                                                if not mem[_20105]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20737 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20737 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20737 + 36 len 28]
                                                s = 0
                                                while s < mem[_20737]:
                                                    mem[s + _20737 + 36] = mem[s + _20737 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20737]) <= mem[_20737]:
                                                    staticcall address(_18925).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20737] + _20737 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28269 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28269] = return_data.size
                                                        mem[_28269 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20737] + _20737 + 36] = 0
                                                    staticcall address(_18925).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20737] + _20737 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28270 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28270] = return_data.size
                                                        mem[_28270 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18925):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18925):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18925)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18925)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18925)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18925));
                                                idx = idx + 1
                                                continue 
                                        prizePeriodSeconds = arg2
                                        prizePeriodStartedAt = arg1
                                        uint16(stor107.field_0) = 1800
                                        uint16(stor107.field_16) = 0
                                        emit RngRequestTimeoutSet(1800);
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = arg4
                                        mem[mem[64] + 96] = arg5
                                        mem[mem[64] + 128] = arg6
                                        mem[mem[64] + 160] = 192
                                        mem[mem[64] + 192] = mem[96]
                                        idx = 0
                                        s = mem[64] + 224
                                        t = 128
                                        while idx < mem[96]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                    else:
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18922 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18922)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20099 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20099] == bool(mem[_20099])
                                                if not mem[_20099]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20725 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20725 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20725 + 36 len 28]
                                                s = 0
                                                while s < mem[_20725]:
                                                    mem[s + _20725 + 36] = mem[s + _20725 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20725]) <= mem[_20725]:
                                                    staticcall address(_18922).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20725] + _20725 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28263 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28263] = return_data.size
                                                        mem[_28263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20725] + _20725 + 36] = 0
                                                    staticcall address(_18922).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20725] + _20725 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28264 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28264] = return_data.size
                                                        mem[_28264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18922):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18922):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18922)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18922)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18922)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18922));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19319 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19612 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19612:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19319 + (32 * _19612) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18923 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18923)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20101 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20101] == bool(mem[_20101])
                                                if not mem[_20101]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20729 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20729 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20729 + 36 len 28]
                                                s = 0
                                                while s < mem[_20729]:
                                                    mem[s + _20729 + 36] = mem[s + _20729 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20729]) <= mem[_20729]:
                                                    staticcall address(_18923).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20729] + _20729 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28265 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28265] = return_data.size
                                                        mem[_28265 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20729] + _20729 + 36] = 0
                                                    staticcall address(_18923).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20729] + _20729 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28266 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28266] = return_data.size
                                                        mem[_28266 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18923):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18923):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18923)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18923)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18923)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18923));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19322 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19613 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19613:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19322 + (32 * _19613) + -mem[64] + 224], arg3
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18926 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18926)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20107 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20107] == bool(mem[_20107])
                                        if not mem[_20107]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20741 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20741 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20741 + 36 len 28]
                                        s = 0
                                        while s < mem[_20741]:
                                            mem[s + _20741 + 36] = mem[s + _20741 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20741]) <= mem[_20741]:
                                            staticcall address(_18926).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20741] + _20741 + -mem[64] + 32]
                                            if return_data.size:
                                                _28271 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28271] = return_data.size
                                                mem[_28271 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20741] + _20741 + 36] = 0
                                            staticcall address(_18926).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20741] + _20741 + -mem[64] + 32]
                                            if return_data.size:
                                                _28272 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28272] = return_data.size
                                                mem[_28272 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18926):
                                            revert with 0, 'Invalid address'
                                        if not address(_18926):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18926)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18926)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18926)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18926));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19331 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19616 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19616:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19331 + (32 * _19616) + -mem[64] + 224], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18927 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18927)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20109 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20109] == bool(mem[_20109])
                                                if not mem[_20109]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20745 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20745 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20745 + 36 len 28]
                                                s = 0
                                                while s < mem[_20745]:
                                                    mem[s + _20745 + 36] = mem[s + _20745 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20745]) <= mem[_20745]:
                                                    staticcall address(_18927).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20745] + _20745 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28273 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28273] = return_data.size
                                                        mem[_28273 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20745] + _20745 + 36] = 0
                                                    staticcall address(_18927).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20745] + _20745 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28274 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28274] = return_data.size
                                                        mem[_28274 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18927):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18927):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18927)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18927)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18927)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18927));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18928 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18928)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20111 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20111] == bool(mem[_20111])
                                                if not mem[_20111]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20749 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20749 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20749 + 36 len 28]
                                                s = 0
                                                while s < mem[_20749]:
                                                    mem[s + _20749 + 36] = mem[s + _20749 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20749]) <= mem[_20749]:
                                                    staticcall address(_18928).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20749] + _20749 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28275 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28275] = return_data.size
                                                        mem[_28275 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20749] + _20749 + 36] = 0
                                                    staticcall address(_18928).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20749] + _20749 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28276 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28276] = return_data.size
                                                        mem[_28276 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18928):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18928):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18928)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18928)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18928)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18928));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19337 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19618 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19618:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19337 + (32 * _19618) + -mem[64] + 224], arg3
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18929 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18929)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20113 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20113] == bool(mem[_20113])
                                                if not mem[_20113]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20753 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20753 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20753 + 36 len 28]
                                                s = 0
                                                while s < mem[_20753]:
                                                    mem[s + _20753 + 36] = mem[s + _20753 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20753]) <= mem[_20753]:
                                                    staticcall address(_18929).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20753] + _20753 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28277 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28277] = return_data.size
                                                        mem[_28277 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20753] + _20753 + 36] = 0
                                                    staticcall address(_18929).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20753] + _20753 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28278 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28278] = return_data.size
                                                        mem[_28278 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18929):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18929):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18929)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18929)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18929)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18929));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18930 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18930)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20115 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20115] == bool(mem[_20115])
                                                if not mem[_20115]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20757 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20757 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20757 + 36 len 28]
                                                s = 0
                                                while s < mem[_20757]:
                                                    mem[s + _20757 + 36] = mem[s + _20757 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20757]) <= mem[_20757]:
                                                    staticcall address(_18930).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20757] + _20757 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28279 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28279] = return_data.size
                                                        mem[_28279 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20757] + _20757 + 36] = 0
                                                    staticcall address(_18930).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20757] + _20757 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28280 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28280] = return_data.size
                                                        mem[_28280 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18930):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18930):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18930)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18930)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18930)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18930));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19343 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19620 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19620:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19343 + (32 * _19620) + -mem[64] + 224], arg3
                    else:
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            if stor110:
                                revert with 0, 'Already init'
                            mem[0] = 1
                            mem[32] = 111
                            uint8(stor111[1].field_0) = 1
                            Mask(152, 0, stor111[1].field_8) = 0
                            idx = 0
                            while idx < arg7.length:
                                require idx < mem[96]
                                _18931 = mem[(32 * idx) + 128]
                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(prizePoolAddress)
                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                        gas gas_remaining wei
                                       args address(_18931)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _20117 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_20117] == bool(mem[_20117])
                                if not mem[_20117]:
                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                _20761 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_20761 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20761 + 36 len 28]
                                s = 0
                                while s < mem[_20761]:
                                    mem[s + _20761 + 36] = mem[s + _20761 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_20761]) <= mem[_20761]:
                                    staticcall address(_18931).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20761] + _20761 + -mem[64] + 32]
                                    if return_data.size:
                                        _28281 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28281] = return_data.size
                                        mem[_28281 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[_20761] + _20761 + 36] = 0
                                    staticcall address(_18931).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20761] + _20761 + -mem[64] + 32]
                                    if return_data.size:
                                        _28282 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28282] = return_data.size
                                        mem[_28282 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                if 1 == address(_18931):
                                    revert with 0, 'Invalid address'
                                if not address(_18931):
                                    revert with 0, 'Invalid address'
                                if address(stor111[address(_18931)].field_0):
                                    revert with 0, 'Already added'
                                mem[32] = 111
                                address(stor111[address(_18931)].field_0) = address(stor111[1].field_0)
                                mem[0] = 1
                                address(stor111[1].field_0) = address(_18931)
                                stor110++
                                emit ExternalErc20AwardAdded(address(_18931));
                                idx = idx + 1
                                continue 
                            prizePeriodSeconds = arg2
                            prizePeriodStartedAt = arg1
                            uint16(stor107.field_0) = 1800
                            uint16(stor107.field_16) = 0
                            emit RngRequestTimeoutSet(1800);
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = arg2
                            mem[mem[64] + 64] = arg4
                            mem[mem[64] + 96] = arg5
                            mem[mem[64] + 128] = arg6
                            mem[mem[64] + 160] = 192
                            mem[mem[64] + 192] = mem[96]
                            idx = 0
                            s = mem[64] + 224
                            t = 128
                            while idx < mem[96]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18932 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18932)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20119 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20119] == bool(mem[_20119])
                                        if not mem[_20119]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20765 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20765 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20765 + 36 len 28]
                                        s = 0
                                        while s < mem[_20765]:
                                            mem[s + _20765 + 36] = mem[s + _20765 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20765]) <= mem[_20765]:
                                            staticcall address(_18932).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20765] + _20765 + -mem[64] + 32]
                                            if return_data.size:
                                                _28283 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28283] = return_data.size
                                                mem[_28283 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20765] + _20765 + 36] = 0
                                            staticcall address(_18932).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20765] + _20765 + -mem[64] + 32]
                                            if return_data.size:
                                                _28284 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28284] = return_data.size
                                                mem[_28284 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18932):
                                            revert with 0, 'Invalid address'
                                        if not address(_18932):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18932)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18932)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18932)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18932));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19349 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19622 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19622:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19349 + (32 * _19622) + -mem[64] + 224], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18933 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18933)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20121 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20121] == bool(mem[_20121])
                                                if not mem[_20121]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20769 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20769 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20769 + 36 len 28]
                                                s = 0
                                                while s < mem[_20769]:
                                                    mem[s + _20769 + 36] = mem[s + _20769 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20769]) <= mem[_20769]:
                                                    staticcall address(_18933).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20769] + _20769 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28285 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28285] = return_data.size
                                                        mem[_28285 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20769] + _20769 + 36] = 0
                                                    staticcall address(_18933).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20769] + _20769 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28286 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28286] = return_data.size
                                                        mem[_28286 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18933):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18933):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18933)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18933)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18933)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18933));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19352 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19623 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19623:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19352 + (32 * _19623) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18934 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18934)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20123 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20123] == bool(mem[_20123])
                                                if not mem[_20123]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20773 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20773 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20773 + 36 len 28]
                                                s = 0
                                                while s < mem[_20773]:
                                                    mem[s + _20773 + 36] = mem[s + _20773 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20773]) <= mem[_20773]:
                                                    staticcall address(_18934).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20773] + _20773 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28287 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28287] = return_data.size
                                                        mem[_28287 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20773] + _20773 + 36] = 0
                                                    staticcall address(_18934).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20773] + _20773 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28288 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28288] = return_data.size
                                                        mem[_28288 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18934):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18934):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18934)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18934)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18934)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18934));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18935 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18935)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20125 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20125] == bool(mem[_20125])
                                                if not mem[_20125]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20777 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20777 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20777 + 36 len 28]
                                                s = 0
                                                while s < mem[_20777]:
                                                    mem[s + _20777 + 36] = mem[s + _20777 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20777]) <= mem[_20777]:
                                                    staticcall address(_18935).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20777] + _20777 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28289 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28289] = return_data.size
                                                        mem[_28289 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20777] + _20777 + 36] = 0
                                                    staticcall address(_18935).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20777] + _20777 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28290 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28290] = return_data.size
                                                        mem[_28290 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18935):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18935):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18935)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18935)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18935)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18935));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19358 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19625 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19625:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19358 + (32 * _19625) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18936 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18936)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20127 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20127] == bool(mem[_20127])
                                                if not mem[_20127]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20781 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20781 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20781 + 36 len 28]
                                                s = 0
                                                while s < mem[_20781]:
                                                    mem[s + _20781 + 36] = mem[s + _20781 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20781]) <= mem[_20781]:
                                                    staticcall address(_18936).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20781] + _20781 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28291 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28291] = return_data.size
                                                        mem[_28291 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20781] + _20781 + 36] = 0
                                                    staticcall address(_18936).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20781] + _20781 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28292 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28292] = return_data.size
                                                        mem[_28292 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18936):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18936):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18936)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18936)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18936)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18936));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19361 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19626 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19626:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19361 + (32 * _19626) + -mem[64] + 224], arg3
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18937 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18937)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20129 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20129] == bool(mem[_20129])
                                        if not mem[_20129]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20785 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20785 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20785 + 36 len 28]
                                        s = 0
                                        while s < mem[_20785]:
                                            mem[s + _20785 + 36] = mem[s + _20785 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20785]) <= mem[_20785]:
                                            staticcall address(_18937).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20785] + _20785 + -mem[64] + 32]
                                            if return_data.size:
                                                _28293 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28293] = return_data.size
                                                mem[_28293 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20785] + _20785 + 36] = 0
                                            staticcall address(_18937).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20785] + _20785 + -mem[64] + 32]
                                            if return_data.size:
                                                _28294 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28294] = return_data.size
                                                mem[_28294 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18937):
                                            revert with 0, 'Invalid address'
                                        if not address(_18937):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18937)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18937)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18937)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18937));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19364 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19627 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19627:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19364 + (32 * _19627) + -mem[64] + 224], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18938 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18938)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20131 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20131] == bool(mem[_20131])
                                                if not mem[_20131]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20789 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20789 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20789 + 36 len 28]
                                                s = 0
                                                while s < mem[_20789]:
                                                    mem[s + _20789 + 36] = mem[s + _20789 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20789]) <= mem[_20789]:
                                                    staticcall address(_18938).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20789] + _20789 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28295 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28295] = return_data.size
                                                        mem[_28295 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20789] + _20789 + 36] = 0
                                                    staticcall address(_18938).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20789] + _20789 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28296 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28296] = return_data.size
                                                        mem[_28296 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18938):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18938):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18938)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18938)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18938)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18938));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18939 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18939)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20133 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20133] == bool(mem[_20133])
                                                if not mem[_20133]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20793 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20793 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20793 + 36 len 28]
                                                s = 0
                                                while s < mem[_20793]:
                                                    mem[s + _20793 + 36] = mem[s + _20793 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20793]) <= mem[_20793]:
                                                    staticcall address(_18939).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20793] + _20793 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28297 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28297] = return_data.size
                                                        mem[_28297 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20793] + _20793 + 36] = 0
                                                    staticcall address(_18939).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20793] + _20793 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28298 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28298] = return_data.size
                                                        mem[_28298 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18939):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18939):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18939)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18939)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18939)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18939));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19370 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19629 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19629:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19370 + (32 * _19629) + -mem[64] + 224], arg3
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18940 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18940)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20135 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20135] == bool(mem[_20135])
                                                if not mem[_20135]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20797 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20797 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20797 + 36 len 28]
                                                s = 0
                                                while s < mem[_20797]:
                                                    mem[s + _20797 + 36] = mem[s + _20797 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20797]) <= mem[_20797]:
                                                    staticcall address(_18940).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20797] + _20797 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28299 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28299] = return_data.size
                                                        mem[_28299 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20797] + _20797 + 36] = 0
                                                    staticcall address(_18940).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20797] + _20797 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28300 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28300] = return_data.size
                                                        mem[_28300 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18940):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18940):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18940)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18940)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18940)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18940));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19373 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19630 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19630:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19373 + (32 * _19630) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18941 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18941)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20137 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20137] == bool(mem[_20137])
                                                if not mem[_20137]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20801 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20801 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20801 + 36 len 28]
                                                s = 0
                                                while s < mem[_20801]:
                                                    mem[s + _20801 + 36] = mem[s + _20801 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20801]) <= mem[_20801]:
                                                    staticcall address(_18941).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20801] + _20801 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28301 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28301] = return_data.size
                                                        mem[_28301 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20801] + _20801 + 36] = 0
                                                    staticcall address(_18941).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20801] + _20801 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28302 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28302] = return_data.size
                                                        mem[_28302 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18941):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18941):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18941)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18941)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18941)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18941));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19376 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19631 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19631:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19376 + (32 * _19631) + -mem[64] + 224], arg3
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if not arg3:
                    revert with 0, 'PeriodicPrizeStrategy/prize-pool-not-zero'
                if not arg4:
                    revert with 0, 'PeriodicPrizeStrategy/ticket-not-zero'
                if not arg5:
                    revert with 0, 'PeriodicPrizeStrategy/sponsorship-not-zero'
                if not arg6:
                    revert with 0, 'PeriodicPrizeStrategy/rng-not-zero'
                prizePoolAddress = arg3
                ticketAddress = arg4
                address(rngAddress) = arg6
                sponsorshipAddress = arg5
                if arg2 <= 0:
                    revert with 0, 'PeriodicPrizeStrategy/prize-period-greater-than-zero'
                prizePeriodSeconds = arg2
                mem[(32 * arg7.length) + 128] = arg2
                emit PrizePeriodSecondsUpdated(arg2);
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    if stor110:
                        revert with 0, 'Already init'
                    mem[0] = 1
                    mem[32] = 111
                    uint8(stor111[1].field_0) = 1
                    Mask(152, 0, stor111[1].field_8) = 0
                    idx = 0
                    while idx < arg7.length:
                        require idx < mem[96]
                        _18942 = mem[(32 * idx) + 128]
                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(prizePoolAddress)
                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                gas gas_remaining wei
                               args address(_18942)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20139 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_20139] == bool(mem[_20139])
                        if not mem[_20139]:
                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                        _20805 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_20805 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20805 + 36 len 28]
                        s = 0
                        while s < mem[_20805]:
                            mem[s + _20805 + 36] = mem[s + _20805 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_20805]) <= mem[_20805]:
                            staticcall address(_18942).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_20805] + _20805 + -mem[64] + 32]
                            if return_data.size:
                                _28303 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_28303] = return_data.size
                                mem[_28303 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[_20805] + _20805 + 36] = 0
                            staticcall address(_18942).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_20805] + _20805 + -mem[64] + 32]
                            if return_data.size:
                                _28304 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_28304] = return_data.size
                                mem[_28304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                        if 1 == address(_18942):
                            revert with 0, 'Invalid address'
                        if not address(_18942):
                            revert with 0, 'Invalid address'
                        if address(stor111[address(_18942)].field_0):
                            revert with 0, 'Already added'
                        mem[32] = 111
                        address(stor111[address(_18942)].field_0) = address(stor111[1].field_0)
                        mem[0] = 1
                        address(stor111[1].field_0) = address(_18942)
                        stor110++
                        emit ExternalErc20AwardAdded(address(_18942));
                        idx = idx + 1
                        continue 
                    prizePeriodSeconds = arg2
                    prizePeriodStartedAt = arg1
                    uint16(stor107.field_0) = 1800
                    uint16(stor107.field_16) = 0
                    emit RngRequestTimeoutSet(1800);
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = arg4
                    mem[mem[64] + 96] = arg5
                    mem[mem[64] + 128] = arg6
                    mem[mem[64] + 160] = 192
                    mem[mem[64] + 192] = mem[96]
                    idx = 0
                    s = mem[64] + 224
                    t = 128
                    while idx < mem[96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                else:
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            if stor110:
                                revert with 0, 'Already init'
                            mem[0] = 1
                            mem[32] = 111
                            uint8(stor111[1].field_0) = 1
                            Mask(152, 0, stor111[1].field_8) = 0
                            idx = 0
                            while idx < arg7.length:
                                require idx < mem[96]
                                _18943 = mem[(32 * idx) + 128]
                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(prizePoolAddress)
                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                        gas gas_remaining wei
                                       args address(_18943)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _20141 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_20141] == bool(mem[_20141])
                                if not mem[_20141]:
                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                _20809 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_20809 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20809 + 36 len 28]
                                s = 0
                                while s < mem[_20809]:
                                    mem[s + _20809 + 36] = mem[s + _20809 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_20809]) <= mem[_20809]:
                                    staticcall address(_18943).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20809] + _20809 + -mem[64] + 32]
                                    if return_data.size:
                                        _28305 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28305] = return_data.size
                                        mem[_28305 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[_20809] + _20809 + 36] = 0
                                    staticcall address(_18943).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20809] + _20809 + -mem[64] + 32]
                                    if return_data.size:
                                        _28306 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28306] = return_data.size
                                        mem[_28306 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                if 1 == address(_18943):
                                    revert with 0, 'Invalid address'
                                if not address(_18943):
                                    revert with 0, 'Invalid address'
                                if address(stor111[address(_18943)].field_0):
                                    revert with 0, 'Already added'
                                mem[32] = 111
                                address(stor111[address(_18943)].field_0) = address(stor111[1].field_0)
                                mem[0] = 1
                                address(stor111[1].field_0) = address(_18943)
                                stor110++
                                emit ExternalErc20AwardAdded(address(_18943));
                                idx = idx + 1
                                continue 
                            prizePeriodSeconds = arg2
                            prizePeriodStartedAt = arg1
                            uint16(stor107.field_0) = 1800
                            uint16(stor107.field_16) = 0
                            emit RngRequestTimeoutSet(1800);
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = arg2
                            mem[mem[64] + 64] = arg4
                            mem[mem[64] + 96] = arg5
                            mem[mem[64] + 128] = arg6
                            mem[mem[64] + 160] = 192
                            mem[mem[64] + 192] = mem[96]
                            idx = 0
                            s = mem[64] + 224
                            t = 128
                            while idx < mem[96]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18944 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18944)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20143 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20143] == bool(mem[_20143])
                                        if not mem[_20143]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20813 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20813 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20813 + 36 len 28]
                                        s = 0
                                        while s < mem[_20813]:
                                            mem[s + _20813 + 36] = mem[s + _20813 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20813]) <= mem[_20813]:
                                            staticcall address(_18944).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20813] + _20813 + -mem[64] + 32]
                                            if return_data.size:
                                                _28307 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28307] = return_data.size
                                                mem[_28307 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20813] + _20813 + 36] = 0
                                            staticcall address(_18944).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20813] + _20813 + -mem[64] + 32]
                                            if return_data.size:
                                                _28308 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28308] = return_data.size
                                                mem[_28308 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18944):
                                            revert with 0, 'Invalid address'
                                        if not address(_18944):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18944)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18944)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18944)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18944));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < mem[96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18945 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18945)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20145 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20145] == bool(mem[_20145])
                                                if not mem[_20145]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20817 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20817 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20817 + 36 len 28]
                                                s = 0
                                                while s < mem[_20817]:
                                                    mem[s + _20817 + 36] = mem[s + _20817 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20817]) <= mem[_20817]:
                                                    staticcall address(_18945).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20817] + _20817 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28309 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28309] = return_data.size
                                                        mem[_28309 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20817] + _20817 + 36] = 0
                                                    staticcall address(_18945).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20817] + _20817 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28310 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28310] = return_data.size
                                                        mem[_28310 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18945):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18945):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18945)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18945)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18945)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18945));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19388 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19635 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19635:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19388 + (32 * _19635) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18946 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18946)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20147 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20147] == bool(mem[_20147])
                                                if not mem[_20147]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20821 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20821 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20821 + 36 len 28]
                                                s = 0
                                                while s < mem[_20821]:
                                                    mem[s + _20821 + 36] = mem[s + _20821 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20821]) <= mem[_20821]:
                                                    staticcall address(_18946).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20821] + _20821 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28311 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28311] = return_data.size
                                                        mem[_28311 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20821] + _20821 + 36] = 0
                                                    staticcall address(_18946).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20821] + _20821 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28312 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28312] = return_data.size
                                                        mem[_28312 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18946):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18946):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18946)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18946)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18946)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18946));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18947 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18947)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20149 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20149] == bool(mem[_20149])
                                                if not mem[_20149]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20825 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20825 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20825 + 36 len 28]
                                                s = 0
                                                while s < mem[_20825]:
                                                    mem[s + _20825 + 36] = mem[s + _20825 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20825]) <= mem[_20825]:
                                                    staticcall address(_18947).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20825] + _20825 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28313 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28313] = return_data.size
                                                        mem[_28313 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20825] + _20825 + 36] = 0
                                                    staticcall address(_18947).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20825] + _20825 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28314 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28314] = return_data.size
                                                        mem[_28314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18947):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18947):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18947)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18947)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18947)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18947));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19394 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19637 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19637:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19394 + (32 * _19637) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18948 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18948)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20151 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20151] == bool(mem[_20151])
                                                if not mem[_20151]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20829 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20829 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20829 + 36 len 28]
                                                s = 0
                                                while s < mem[_20829]:
                                                    mem[s + _20829 + 36] = mem[s + _20829 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20829]) <= mem[_20829]:
                                                    staticcall address(_18948).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20829] + _20829 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28315 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28315] = return_data.size
                                                        mem[_28315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20829] + _20829 + 36] = 0
                                                    staticcall address(_18948).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20829] + _20829 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28316 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28316] = return_data.size
                                                        mem[_28316 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18948):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18948):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18948)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18948)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18948)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18948));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18949 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18949)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20153 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20153] == bool(mem[_20153])
                                        if not mem[_20153]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20833 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20833 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20833 + 36 len 28]
                                        s = 0
                                        while s < mem[_20833]:
                                            mem[s + _20833 + 36] = mem[s + _20833 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20833]) <= mem[_20833]:
                                            staticcall address(_18949).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20833] + _20833 + -mem[64] + 32]
                                            if return_data.size:
                                                _28317 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28317] = return_data.size
                                                mem[_28317 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20833] + _20833 + 36] = 0
                                            staticcall address(_18949).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20833] + _20833 + -mem[64] + 32]
                                            if return_data.size:
                                                _28318 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28318] = return_data.size
                                                mem[_28318 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18949):
                                            revert with 0, 'Invalid address'
                                        if not address(_18949):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18949)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18949)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18949)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18949));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19400 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19639 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19639:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19400 + (32 * _19639) + -mem[64] + 224], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18950 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18950)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20155 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20155] == bool(mem[_20155])
                                                if not mem[_20155]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20837 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20837 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20837 + 36 len 28]
                                                s = 0
                                                while s < mem[_20837]:
                                                    mem[s + _20837 + 36] = mem[s + _20837 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20837]) <= mem[_20837]:
                                                    staticcall address(_18950).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20837] + _20837 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28319 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28319] = return_data.size
                                                        mem[_28319 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20837] + _20837 + 36] = 0
                                                    staticcall address(_18950).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20837] + _20837 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28320 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28320] = return_data.size
                                                        mem[_28320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18950):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18950):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18950)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18950)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18950)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18950));
                                                idx = idx + 1
                                                continue 
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18951 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18951)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20157 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20157] == bool(mem[_20157])
                                                if not mem[_20157]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20841 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20841 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20841 + 36 len 28]
                                                s = 0
                                                while s < mem[_20841]:
                                                    mem[s + _20841 + 36] = mem[s + _20841 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20841]) <= mem[_20841]:
                                                    staticcall address(_18951).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20841] + _20841 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28321 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28321] = return_data.size
                                                        mem[_28321 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20841] + _20841 + 36] = 0
                                                    staticcall address(_18951).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20841] + _20841 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28322 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28322] = return_data.size
                                                        mem[_28322 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18951):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18951):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18951)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18951)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18951)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18951));
                                                idx = idx + 1
                                                continue 
                                        prizePeriodSeconds = arg2
                                        prizePeriodStartedAt = arg1
                                        uint16(stor107.field_0) = 1800
                                        uint16(stor107.field_16) = 0
                                        emit RngRequestTimeoutSet(1800);
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = arg4
                                        mem[mem[64] + 96] = arg5
                                        mem[mem[64] + 128] = arg6
                                        mem[mem[64] + 160] = 192
                                        mem[mem[64] + 192] = mem[96]
                                        idx = 0
                                        s = mem[64] + 224
                                        t = 128
                                        while idx < mem[96]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18952 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18952)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20159 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20159] == bool(mem[_20159])
                                                if not mem[_20159]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20845 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20845 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20845 + 36 len 28]
                                                s = 0
                                                while s < mem[_20845]:
                                                    mem[s + _20845 + 36] = mem[s + _20845 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20845]) <= mem[_20845]:
                                                    staticcall address(_18952).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20845] + _20845 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28323 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28323] = return_data.size
                                                        mem[_28323 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20845] + _20845 + 36] = 0
                                                    staticcall address(_18952).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20845] + _20845 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28324 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28324] = return_data.size
                                                        mem[_28324 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18952):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18952):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18952)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18952)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18952)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18952));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19409 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19642 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19642:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19409 + (32 * _19642) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18953 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18953)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20161 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20161] == bool(mem[_20161])
                                                if not mem[_20161]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20849 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20849 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20849 + 36 len 28]
                                                s = 0
                                                while s < mem[_20849]:
                                                    mem[s + _20849 + 36] = mem[s + _20849 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20849]) <= mem[_20849]:
                                                    staticcall address(_18953).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20849] + _20849 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28325 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28325] = return_data.size
                                                        mem[_28325 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20849] + _20849 + 36] = 0
                                                    staticcall address(_18953).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20849] + _20849 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28326 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28326] = return_data.size
                                                        mem[_28326 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18953):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18953):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18953)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18953)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18953)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18953));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                    else:
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            if stor110:
                                revert with 0, 'Already init'
                            mem[0] = 1
                            mem[32] = 111
                            uint8(stor111[1].field_0) = 1
                            Mask(152, 0, stor111[1].field_8) = 0
                            idx = 0
                            while idx < arg7.length:
                                require idx < mem[96]
                                _18954 = mem[(32 * idx) + 128]
                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(prizePoolAddress)
                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                        gas gas_remaining wei
                                       args address(_18954)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _20163 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_20163] == bool(mem[_20163])
                                if not mem[_20163]:
                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                _20853 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_20853 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20853 + 36 len 28]
                                s = 0
                                while s < mem[_20853]:
                                    mem[s + _20853 + 36] = mem[s + _20853 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_20853]) <= mem[_20853]:
                                    staticcall address(_18954).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20853] + _20853 + -mem[64] + 32]
                                    if return_data.size:
                                        _28327 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28327] = return_data.size
                                        mem[_28327 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[_20853] + _20853 + 36] = 0
                                    staticcall address(_18954).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20853] + _20853 + -mem[64] + 32]
                                    if return_data.size:
                                        _28328 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28328] = return_data.size
                                        mem[_28328 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                if 1 == address(_18954):
                                    revert with 0, 'Invalid address'
                                if not address(_18954):
                                    revert with 0, 'Invalid address'
                                if address(stor111[address(_18954)].field_0):
                                    revert with 0, 'Already added'
                                mem[32] = 111
                                address(stor111[address(_18954)].field_0) = address(stor111[1].field_0)
                                mem[0] = 1
                                address(stor111[1].field_0) = address(_18954)
                                stor110++
                                emit ExternalErc20AwardAdded(address(_18954));
                                idx = idx + 1
                                continue 
                            prizePeriodSeconds = arg2
                            prizePeriodStartedAt = arg1
                            uint16(stor107.field_0) = 1800
                            uint16(stor107.field_16) = 0
                            emit RngRequestTimeoutSet(1800);
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = arg2
                            mem[mem[64] + 64] = arg4
                            mem[mem[64] + 96] = arg5
                            mem[mem[64] + 128] = arg6
                            mem[mem[64] + 160] = 192
                            mem[mem[64] + 192] = mem[96]
                            idx = 0
                            s = mem[64] + 224
                            t = 128
                            while idx < mem[96]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18955 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18955)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20165 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20165] == bool(mem[_20165])
                                        if not mem[_20165]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20857 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20857 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20857 + 36 len 28]
                                        s = 0
                                        while s < mem[_20857]:
                                            mem[s + _20857 + 36] = mem[s + _20857 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20857]) <= mem[_20857]:
                                            staticcall address(_18955).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20857] + _20857 + -mem[64] + 32]
                                            if return_data.size:
                                                _28329 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28329] = return_data.size
                                                mem[_28329 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20857] + _20857 + 36] = 0
                                            staticcall address(_18955).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20857] + _20857 + -mem[64] + 32]
                                            if return_data.size:
                                                _28330 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28330] = return_data.size
                                                mem[_28330 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18955):
                                            revert with 0, 'Invalid address'
                                        if not address(_18955):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18955)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18955)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18955)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18955));
                                        idx = idx + 1
                                        continue 
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18956 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18956)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20167 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20167] == bool(mem[_20167])
                                                if not mem[_20167]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20861 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20861 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20861 + 36 len 28]
                                                s = 0
                                                while s < mem[_20861]:
                                                    mem[s + _20861 + 36] = mem[s + _20861 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20861]) <= mem[_20861]:
                                                    staticcall address(_18956).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20861] + _20861 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28331 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28331] = return_data.size
                                                        mem[_28331 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20861] + _20861 + 36] = 0
                                                    staticcall address(_18956).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20861] + _20861 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28332 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28332] = return_data.size
                                                        mem[_28332 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18956):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18956):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18956)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18956)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18956)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18956));
                                                idx = idx + 1
                                                continue 
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18957 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18957)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20169 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20169] == bool(mem[_20169])
                                                if not mem[_20169]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20865 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20865 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20865 + 36 len 28]
                                                s = 0
                                                while s < mem[_20865]:
                                                    mem[s + _20865 + 36] = mem[s + _20865 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20865]) <= mem[_20865]:
                                                    staticcall address(_18957).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20865] + _20865 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28333 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28333] = return_data.size
                                                        mem[_28333 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20865] + _20865 + 36] = 0
                                                    staticcall address(_18957).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20865] + _20865 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28334 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28334] = return_data.size
                                                        mem[_28334 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18957):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18957):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18957)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18957)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18957)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18957));
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18958 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18958)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20171 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20171] == bool(mem[_20171])
                                                if not mem[_20171]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20869 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20869 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20869 + 36 len 28]
                                                s = 0
                                                while s < mem[_20869]:
                                                    mem[s + _20869 + 36] = mem[s + _20869 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20869]) <= mem[_20869]:
                                                    staticcall address(_18958).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20869] + _20869 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28335 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28335] = return_data.size
                                                        mem[_28335 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20869] + _20869 + 36] = 0
                                                    staticcall address(_18958).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20869] + _20869 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28336 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28336] = return_data.size
                                                        mem[_28336 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18958):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18958):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18958)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18958)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18958)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18958));
                                                idx = idx + 1
                                                continue 
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18959 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18959)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20173 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20173] == bool(mem[_20173])
                                                if not mem[_20173]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20873 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20873 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20873 + 36 len 28]
                                                s = 0
                                                while s < mem[_20873]:
                                                    mem[s + _20873 + 36] = mem[s + _20873 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20873]) <= mem[_20873]:
                                                    staticcall address(_18959).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20873] + _20873 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28337 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28337] = return_data.size
                                                        mem[_28337 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20873] + _20873 + 36] = 0
                                                    staticcall address(_18959).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20873] + _20873 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28338 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28338] = return_data.size
                                                        mem[_28338 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18959):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18959):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18959)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18959)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18959)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18959));
                                                idx = idx + 1
                                                continue 
                                prizePeriodSeconds = arg2
                                prizePeriodStartedAt = arg1
                                uint16(stor107.field_0) = 1800
                                uint16(stor107.field_16) = 0
                                emit RngRequestTimeoutSet(1800);
                                mem[mem[64]] = arg1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = arg4
                                mem[mem[64] + 96] = arg5
                                mem[mem[64] + 128] = arg6
                                mem[mem[64] + 160] = 192
                                mem[mem[64] + 192] = mem[96]
                                idx = 0
                                s = mem[64] + 224
                                t = 128
                                while idx < mem[96]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18960 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18960)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20175 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20175] == bool(mem[_20175])
                                        if not mem[_20175]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20877 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20877 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20877 + 36 len 28]
                                        s = 0
                                        while s < mem[_20877]:
                                            mem[s + _20877 + 36] = mem[s + _20877 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20877]) <= mem[_20877]:
                                            staticcall address(_18960).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20877] + _20877 + -mem[64] + 32]
                                            if return_data.size:
                                                _28339 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28339] = return_data.size
                                                mem[_28339 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20877] + _20877 + 36] = 0
                                            staticcall address(_18960).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20877] + _20877 + -mem[64] + 32]
                                            if return_data.size:
                                                _28340 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28340] = return_data.size
                                                mem[_28340 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18960):
                                            revert with 0, 'Invalid address'
                                        if not address(_18960):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18960)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18960)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18960)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18960));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19433 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19650 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19650:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19433 + (32 * _19650) + -mem[64] + 224], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18961 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18961)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20177 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20177] == bool(mem[_20177])
                                                if not mem[_20177]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20881 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20881 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20881 + 36 len 28]
                                                s = 0
                                                while s < mem[_20881]:
                                                    mem[s + _20881 + 36] = mem[s + _20881 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20881]) <= mem[_20881]:
                                                    staticcall address(_18961).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20881] + _20881 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28341 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28341] = return_data.size
                                                        mem[_28341 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20881] + _20881 + 36] = 0
                                                    staticcall address(_18961).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20881] + _20881 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28342 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28342] = return_data.size
                                                        mem[_28342 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18961):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18961):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18961)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18961)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18961)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18961));
                                                idx = idx + 1
                                                continue 
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18962 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18962)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20179 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20179] == bool(mem[_20179])
                                                if not mem[_20179]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20885 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20885 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20885 + 36 len 28]
                                                s = 0
                                                while s < mem[_20885]:
                                                    mem[s + _20885 + 36] = mem[s + _20885 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20885]) <= mem[_20885]:
                                                    staticcall address(_18962).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20885] + _20885 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28343 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28343] = return_data.size
                                                        mem[_28343 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20885] + _20885 + 36] = 0
                                                    staticcall address(_18962).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20885] + _20885 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28344 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28344] = return_data.size
                                                        mem[_28344 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18962):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18962):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18962)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18962)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18962)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18962));
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18963 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18963)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20181 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20181] == bool(mem[_20181])
                                                if not mem[_20181]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20889 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20889 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20889 + 36 len 28]
                                                s = 0
                                                while s < mem[_20889]:
                                                    mem[s + _20889 + 36] = mem[s + _20889 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20889]) <= mem[_20889]:
                                                    staticcall address(_18963).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20889] + _20889 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28345 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28345] = return_data.size
                                                        mem[_28345 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20889] + _20889 + 36] = 0
                                                    staticcall address(_18963).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20889] + _20889 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28346 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28346] = return_data.size
                                                        mem[_28346 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18963):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18963):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18963)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18963)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18963)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18963));
                                                idx = idx + 1
                                                continue 
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18964 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18964)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20183 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20183] == bool(mem[_20183])
                                                if not mem[_20183]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20893 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20893 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20893 + 36 len 28]
                                                s = 0
                                                while s < mem[_20893]:
                                                    mem[s + _20893 + 36] = mem[s + _20893 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20893]) <= mem[_20893]:
                                                    staticcall address(_18964).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20893] + _20893 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28347 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28347] = return_data.size
                                                        mem[_28347 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20893] + _20893 + 36] = 0
                                                    staticcall address(_18964).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20893] + _20893 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28348 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28348] = return_data.size
                                                        mem[_28348 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18964):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18964):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18964)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18964)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18964)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18964));
                                                idx = idx + 1
                                                continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < mem[96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
        else:
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                if not arg3:
                    revert with 0, 'PeriodicPrizeStrategy/prize-pool-not-zero'
                if not arg4:
                    revert with 0, 'PeriodicPrizeStrategy/ticket-not-zero'
                if not arg5:
                    revert with 0, 'PeriodicPrizeStrategy/sponsorship-not-zero'
                if not arg6:
                    revert with 0, 'PeriodicPrizeStrategy/rng-not-zero'
                prizePoolAddress = arg3
                ticketAddress = arg4
                address(rngAddress) = arg6
                sponsorshipAddress = arg5
                if arg2 <= 0:
                    revert with 0, 'PeriodicPrizeStrategy/prize-period-greater-than-zero'
                prizePeriodSeconds = arg2
                mem[(32 * arg7.length) + 128] = arg2
                emit PrizePeriodSecondsUpdated(arg2);
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    if stor110:
                        revert with 0, 'Already init'
                    mem[0] = 1
                    mem[32] = 111
                    uint8(stor111[1].field_0) = 1
                    Mask(152, 0, stor111[1].field_8) = 0
                    idx = 0
                    while idx < arg7.length:
                        require idx < mem[96]
                        _18965 = mem[(32 * idx) + 128]
                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(prizePoolAddress)
                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                gas gas_remaining wei
                               args address(_18965)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_20185] == bool(mem[_20185])
                        if not mem[_20185]:
                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                        _20897 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_20897 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20897 + 36 len 28]
                        s = 0
                        while s < mem[_20897]:
                            mem[s + _20897 + 36] = mem[s + _20897 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_20897]) <= mem[_20897]:
                            staticcall address(_18965).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_20897] + _20897 + -mem[64] + 32]
                            if return_data.size:
                                _28349 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_28349] = return_data.size
                                mem[_28349 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[_20897] + _20897 + 36] = 0
                            staticcall address(_18965).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_20897] + _20897 + -mem[64] + 32]
                            if return_data.size:
                                _28350 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_28350] = return_data.size
                                mem[_28350 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                        if 1 == address(_18965):
                            revert with 0, 'Invalid address'
                        if not address(_18965):
                            revert with 0, 'Invalid address'
                        if address(stor111[address(_18965)].field_0):
                            revert with 0, 'Already added'
                        mem[32] = 111
                        address(stor111[address(_18965)].field_0) = address(stor111[1].field_0)
                        mem[0] = 1
                        address(stor111[1].field_0) = address(_18965)
                        stor110++
                        emit ExternalErc20AwardAdded(address(_18965));
                        idx = idx + 1
                        continue 
                    prizePeriodSeconds = arg2
                    prizePeriodStartedAt = arg1
                    uint16(stor107.field_0) = 1800
                    uint16(stor107.field_16) = 0
                    emit RngRequestTimeoutSet(1800);
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = arg4
                    mem[mem[64] + 96] = arg5
                    mem[mem[64] + 128] = arg6
                    mem[mem[64] + 160] = 192
                    mem[mem[64] + 192] = mem[96]
                    idx = 0
                    s = mem[64] + 224
                    t = 128
                    while idx < mem[96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                else:
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            if stor110:
                                revert with 0, 'Already init'
                            mem[0] = 1
                            mem[32] = 111
                            uint8(stor111[1].field_0) = 1
                            Mask(152, 0, stor111[1].field_8) = 0
                            idx = 0
                            while idx < arg7.length:
                                require idx < mem[96]
                                _18966 = mem[(32 * idx) + 128]
                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(prizePoolAddress)
                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                        gas gas_remaining wei
                                       args address(_18966)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _20187 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_20187] == bool(mem[_20187])
                                if not mem[_20187]:
                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                _20901 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_20901 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20901 + 36 len 28]
                                s = 0
                                while s < mem[_20901]:
                                    mem[s + _20901 + 36] = mem[s + _20901 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_20901]) <= mem[_20901]:
                                    staticcall address(_18966).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20901] + _20901 + -mem[64] + 32]
                                    if return_data.size:
                                        _28351 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28351] = return_data.size
                                        mem[_28351 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[_20901] + _20901 + 36] = 0
                                    staticcall address(_18966).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20901] + _20901 + -mem[64] + 32]
                                    if return_data.size:
                                        _28352 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28352] = return_data.size
                                        mem[_28352 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                if 1 == address(_18966):
                                    revert with 0, 'Invalid address'
                                if not address(_18966):
                                    revert with 0, 'Invalid address'
                                if address(stor111[address(_18966)].field_0):
                                    revert with 0, 'Already added'
                                mem[32] = 111
                                address(stor111[address(_18966)].field_0) = address(stor111[1].field_0)
                                mem[0] = 1
                                address(stor111[1].field_0) = address(_18966)
                                stor110++
                                emit ExternalErc20AwardAdded(address(_18966));
                                idx = idx + 1
                                continue 
                            prizePeriodSeconds = arg2
                            prizePeriodStartedAt = arg1
                            uint16(stor107.field_0) = 1800
                            uint16(stor107.field_16) = 0
                            emit RngRequestTimeoutSet(1800);
                            _19451 = mem[64]
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = arg2
                            mem[mem[64] + 64] = arg4
                            mem[mem[64] + 96] = arg5
                            mem[mem[64] + 128] = arg6
                            mem[mem[64] + 160] = 192
                            _19656 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            idx = 0
                            s = mem[64] + 224
                            t = 128
                            while idx < _19656:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xf9632d21: mem[mem[64] len _19451 + (32 * _19656) + -mem[64] + 224], arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18967 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18967)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20189 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20189] == bool(mem[_20189])
                                        if not mem[_20189]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20905 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20905 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20905 + 36 len 28]
                                        s = 0
                                        while s < mem[_20905]:
                                            mem[s + _20905 + 36] = mem[s + _20905 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20905]) <= mem[_20905]:
                                            staticcall address(_18967).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20905] + _20905 + -mem[64] + 32]
                                            if return_data.size:
                                                _28353 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28353] = return_data.size
                                                mem[_28353 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20905] + _20905 + 36] = 0
                                            staticcall address(_18967).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20905] + _20905 + -mem[64] + 32]
                                            if return_data.size:
                                                _28354 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28354] = return_data.size
                                                mem[_28354 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18967):
                                            revert with 0, 'Invalid address'
                                        if not address(_18967):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18967)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18967)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18967)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18967));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < mem[96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18968 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18968)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20191 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20191] == bool(mem[_20191])
                                                if not mem[_20191]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20909 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20909 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20909 + 36 len 28]
                                                s = 0
                                                while s < mem[_20909]:
                                                    mem[s + _20909 + 36] = mem[s + _20909 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20909]) <= mem[_20909]:
                                                    staticcall address(_18968).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20909] + _20909 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28355 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28355] = return_data.size
                                                        mem[_28355 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20909] + _20909 + 36] = 0
                                                    staticcall address(_18968).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20909] + _20909 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28356 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28356] = return_data.size
                                                        mem[_28356 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18968):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18968):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18968)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18968)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18968)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18968));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19457 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19658 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19658:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19457 + (32 * _19658) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18969 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18969)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20193 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20193] == bool(mem[_20193])
                                                if not mem[_20193]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20913 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20913 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20913 + 36 len 28]
                                                s = 0
                                                while s < mem[_20913]:
                                                    mem[s + _20913 + 36] = mem[s + _20913 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20913]) <= mem[_20913]:
                                                    staticcall address(_18969).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20913] + _20913 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28357 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28357] = return_data.size
                                                        mem[_28357 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20913] + _20913 + 36] = 0
                                                    staticcall address(_18969).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20913] + _20913 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28358 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28358] = return_data.size
                                                        mem[_28358 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18969):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18969):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18969)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18969)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18969)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18969));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18970 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18970)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20195 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20195] == bool(mem[_20195])
                                                if not mem[_20195]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20917 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20917 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20917 + 36 len 28]
                                                s = 0
                                                while s < mem[_20917]:
                                                    mem[s + _20917 + 36] = mem[s + _20917 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20917]) <= mem[_20917]:
                                                    staticcall address(_18970).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20917] + _20917 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28359 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28359] = return_data.size
                                                        mem[_28359 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20917] + _20917 + 36] = 0
                                                    staticcall address(_18970).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20917] + _20917 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28360 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28360] = return_data.size
                                                        mem[_28360 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18970):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18970):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18970)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18970)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18970)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18970));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19463 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19660 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19660:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19463 + (32 * _19660) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18971 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18971)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20197 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20197] == bool(mem[_20197])
                                                if not mem[_20197]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20921 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20921 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20921 + 36 len 28]
                                                s = 0
                                                while s < mem[_20921]:
                                                    mem[s + _20921 + 36] = mem[s + _20921 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20921]) <= mem[_20921]:
                                                    staticcall address(_18971).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20921] + _20921 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28361 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28361] = return_data.size
                                                        mem[_28361 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20921] + _20921 + 36] = 0
                                                    staticcall address(_18971).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20921] + _20921 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28362 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28362] = return_data.size
                                                        mem[_28362 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18971):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18971):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18971)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18971)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18971)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18971));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18972 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18972)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20199 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20199] == bool(mem[_20199])
                                        if not mem[_20199]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20925 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20925 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20925 + 36 len 28]
                                        s = 0
                                        while s < mem[_20925]:
                                            mem[s + _20925 + 36] = mem[s + _20925 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20925]) <= mem[_20925]:
                                            staticcall address(_18972).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20925] + _20925 + -mem[64] + 32]
                                            if return_data.size:
                                                _28363 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28363] = return_data.size
                                                mem[_28363 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20925] + _20925 + 36] = 0
                                            staticcall address(_18972).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20925] + _20925 + -mem[64] + 32]
                                            if return_data.size:
                                                _28364 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28364] = return_data.size
                                                mem[_28364 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18972):
                                            revert with 0, 'Invalid address'
                                        if not address(_18972):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18972)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18972)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18972)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18972));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < mem[96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18973 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18973)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20201 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20201] == bool(mem[_20201])
                                                if not mem[_20201]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20929 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20929 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20929 + 36 len 28]
                                                s = 0
                                                while s < mem[_20929]:
                                                    mem[s + _20929 + 36] = mem[s + _20929 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20929]) <= mem[_20929]:
                                                    staticcall address(_18973).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20929] + _20929 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28365 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28365] = return_data.size
                                                        mem[_28365 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20929] + _20929 + 36] = 0
                                                    staticcall address(_18973).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20929] + _20929 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28366 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28366] = return_data.size
                                                        mem[_28366 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18973):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18973):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18973)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18973)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18973)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18973));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19472 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19663 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19663:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19472 + (32 * _19663) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18974 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18974)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20203 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20203] == bool(mem[_20203])
                                                if not mem[_20203]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20933 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20933 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20933 + 36 len 28]
                                                s = 0
                                                while s < mem[_20933]:
                                                    mem[s + _20933 + 36] = mem[s + _20933 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20933]) <= mem[_20933]:
                                                    staticcall address(_18974).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20933] + _20933 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28367 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28367] = return_data.size
                                                        mem[_28367 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20933] + _20933 + 36] = 0
                                                    staticcall address(_18974).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20933] + _20933 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28368 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28368] = return_data.size
                                                        mem[_28368 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18974):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18974):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18974)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18974)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18974)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18974));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18975 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18975)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20205 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20205] == bool(mem[_20205])
                                                if not mem[_20205]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20937 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20937 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20937 + 36 len 28]
                                                s = 0
                                                while s < mem[_20937]:
                                                    mem[s + _20937 + 36] = mem[s + _20937 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20937]) <= mem[_20937]:
                                                    staticcall address(_18975).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20937] + _20937 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28369 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28369] = return_data.size
                                                        mem[_28369 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20937] + _20937 + 36] = 0
                                                    staticcall address(_18975).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20937] + _20937 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28370 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28370] = return_data.size
                                                        mem[_28370 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18975):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18975):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18975)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18975)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18975)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18975));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19478 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19665 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19665:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19478 + (32 * _19665) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18976 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18976)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20207 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20207] == bool(mem[_20207])
                                                if not mem[_20207]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20941 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20941 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20941 + 36 len 28]
                                                s = 0
                                                while s < mem[_20941]:
                                                    mem[s + _20941 + 36] = mem[s + _20941 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20941]) <= mem[_20941]:
                                                    staticcall address(_18976).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20941] + _20941 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28371 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28371] = return_data.size
                                                        mem[_28371 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20941] + _20941 + 36] = 0
                                                    staticcall address(_18976).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20941] + _20941 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28372 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28372] = return_data.size
                                                        mem[_28372 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18976):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18976):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18976)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18976)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18976)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18976));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                    else:
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            if stor110:
                                revert with 0, 'Already init'
                            mem[0] = 1
                            mem[32] = 111
                            uint8(stor111[1].field_0) = 1
                            Mask(152, 0, stor111[1].field_8) = 0
                            idx = 0
                            while idx < arg7.length:
                                require idx < mem[96]
                                _18977 = mem[(32 * idx) + 128]
                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(prizePoolAddress)
                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                        gas gas_remaining wei
                                       args address(_18977)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _20209 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_20209] == bool(mem[_20209])
                                if not mem[_20209]:
                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                _20945 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_20945 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20945 + 36 len 28]
                                s = 0
                                while s < mem[_20945]:
                                    mem[s + _20945 + 36] = mem[s + _20945 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_20945]) <= mem[_20945]:
                                    staticcall address(_18977).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20945] + _20945 + -mem[64] + 32]
                                    if return_data.size:
                                        _28373 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28373] = return_data.size
                                        mem[_28373 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[_20945] + _20945 + 36] = 0
                                    staticcall address(_18977).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20945] + _20945 + -mem[64] + 32]
                                    if return_data.size:
                                        _28374 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28374] = return_data.size
                                        mem[_28374 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                if 1 == address(_18977):
                                    revert with 0, 'Invalid address'
                                if not address(_18977):
                                    revert with 0, 'Invalid address'
                                if address(stor111[address(_18977)].field_0):
                                    revert with 0, 'Already added'
                                mem[32] = 111
                                address(stor111[address(_18977)].field_0) = address(stor111[1].field_0)
                                mem[0] = 1
                                address(stor111[1].field_0) = address(_18977)
                                stor110++
                                emit ExternalErc20AwardAdded(address(_18977));
                                idx = idx + 1
                                continue 
                            prizePeriodSeconds = arg2
                            prizePeriodStartedAt = arg1
                            uint16(stor107.field_0) = 1800
                            uint16(stor107.field_16) = 0
                            emit RngRequestTimeoutSet(1800);
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = arg2
                            mem[mem[64] + 64] = arg4
                            mem[mem[64] + 96] = arg5
                            mem[mem[64] + 128] = arg6
                            mem[mem[64] + 160] = 192
                            mem[mem[64] + 192] = mem[96]
                            idx = 0
                            s = mem[64] + 224
                            t = 128
                            while idx < mem[96]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18983 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18983)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20221 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20221] == bool(mem[_20221])
                                        if not mem[_20221]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20969 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20969 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20969 + 36 len 28]
                                        s = 0
                                        while s < mem[_20969]:
                                            mem[s + _20969 + 36] = mem[s + _20969 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20969]) <= mem[_20969]:
                                            staticcall address(_18983).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20969] + _20969 + -mem[64] + 32]
                                            if return_data.size:
                                                _28385 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28385] = return_data.size
                                                mem[_28385 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20969] + _20969 + 36] = 0
                                            staticcall address(_18983).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20969] + _20969 + -mem[64] + 32]
                                            if return_data.size:
                                                _28386 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28386] = return_data.size
                                                mem[_28386 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18983):
                                            revert with 0, 'Invalid address'
                                        if not address(_18983):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18983)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18983)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18983)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18983));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < mem[96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18984 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18984)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20223 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20223] == bool(mem[_20223])
                                                if not mem[_20223]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20973 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20973 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20973 + 36 len 28]
                                                s = 0
                                                while s < mem[_20973]:
                                                    mem[s + _20973 + 36] = mem[s + _20973 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20973]) <= mem[_20973]:
                                                    staticcall address(_18984).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20973] + _20973 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28387 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28387] = return_data.size
                                                        mem[_28387 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20973] + _20973 + 36] = 0
                                                    staticcall address(_18984).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20973] + _20973 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28388 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28388] = return_data.size
                                                        mem[_28388 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18984):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18984):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18984)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18984)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18984)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18984));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19505 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19674 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19674:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19505 + (32 * _19674) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18985 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18985)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20225 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20225] == bool(mem[_20225])
                                                if not mem[_20225]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20977 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20977 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20977 + 36 len 28]
                                                s = 0
                                                while s < mem[_20977]:
                                                    mem[s + _20977 + 36] = mem[s + _20977 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20977]) <= mem[_20977]:
                                                    staticcall address(_18985).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20977] + _20977 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28389 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28389] = return_data.size
                                                        mem[_28389 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20977] + _20977 + 36] = 0
                                                    staticcall address(_18985).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20977] + _20977 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28390 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28390] = return_data.size
                                                        mem[_28390 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18985):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18985):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18985)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18985)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18985)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18985));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18986 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18986)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20227 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20227] == bool(mem[_20227])
                                                if not mem[_20227]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20981 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20981 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20981 + 36 len 28]
                                                s = 0
                                                while s < mem[_20981]:
                                                    mem[s + _20981 + 36] = mem[s + _20981 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20981]) <= mem[_20981]:
                                                    staticcall address(_18986).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20981] + _20981 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28391 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28391] = return_data.size
                                                        mem[_28391 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20981] + _20981 + 36] = 0
                                                    staticcall address(_18986).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20981] + _20981 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28392 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28392] = return_data.size
                                                        mem[_28392 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18986):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18986):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18986)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18986)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18986)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18986));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19511 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19676 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19676:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19511 + (32 * _19676) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18987 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18987)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20229 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20229] == bool(mem[_20229])
                                                if not mem[_20229]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20985 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20985 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20985 + 36 len 28]
                                                s = 0
                                                while s < mem[_20985]:
                                                    mem[s + _20985 + 36] = mem[s + _20985 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20985]) <= mem[_20985]:
                                                    staticcall address(_18987).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20985] + _20985 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28393 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28393] = return_data.size
                                                        mem[_28393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20985] + _20985 + 36] = 0
                                                    staticcall address(_18987).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20985] + _20985 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28394 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28394] = return_data.size
                                                        mem[_28394 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18987):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18987):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18987)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18987)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18987)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18987));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                            else:
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18978 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18978)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20211 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20211] == bool(mem[_20211])
                                        if not mem[_20211]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20949 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20949 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20949 + 36 len 28]
                                        s = 0
                                        while s < mem[_20949]:
                                            mem[s + _20949 + 36] = mem[s + _20949 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20949]) <= mem[_20949]:
                                            staticcall address(_18978).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20949] + _20949 + -mem[64] + 32]
                                            if return_data.size:
                                                _28375 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28375] = return_data.size
                                                mem[_28375 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20949] + _20949 + 36] = 0
                                            staticcall address(_18978).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20949] + _20949 + -mem[64] + 32]
                                            if return_data.size:
                                                _28376 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28376] = return_data.size
                                                mem[_28376 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18978):
                                            revert with 0, 'Invalid address'
                                        if not address(_18978):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18978)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18978)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18978)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18978));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < mem[96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18979 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18979)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20213 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20213] == bool(mem[_20213])
                                                if not mem[_20213]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20953 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20953 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20953 + 36 len 28]
                                                s = 0
                                                while s < mem[_20953]:
                                                    mem[s + _20953 + 36] = mem[s + _20953 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20953]) <= mem[_20953]:
                                                    staticcall address(_18979).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20953] + _20953 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28377 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28377] = return_data.size
                                                        mem[_28377 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20953] + _20953 + 36] = 0
                                                    staticcall address(_18979).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20953] + _20953 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28378 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28378] = return_data.size
                                                        mem[_28378 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18979):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18979):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18979)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18979)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18979)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18979));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19490 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19669 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19669:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19490 + (32 * _19669) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18980 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18980)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20215 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20215] == bool(mem[_20215])
                                                if not mem[_20215]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20957 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20957 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20957 + 36 len 28]
                                                s = 0
                                                while s < mem[_20957]:
                                                    mem[s + _20957 + 36] = mem[s + _20957 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20957]) <= mem[_20957]:
                                                    staticcall address(_18980).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20957] + _20957 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28379 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28379] = return_data.size
                                                        mem[_28379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20957] + _20957 + 36] = 0
                                                    staticcall address(_18980).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20957] + _20957 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28380 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28380] = return_data.size
                                                        mem[_28380 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18980):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18980):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18980)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18980)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18980)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18980));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19493 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19670 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19670:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19493 + (32 * _19670) + -mem[64] + 224], arg3
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18981 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18981)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20217 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20217] == bool(mem[_20217])
                                                if not mem[_20217]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20961 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20961 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20961 + 36 len 28]
                                                s = 0
                                                while s < mem[_20961]:
                                                    mem[s + _20961 + 36] = mem[s + _20961 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20961]) <= mem[_20961]:
                                                    staticcall address(_18981).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20961] + _20961 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28381 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28381] = return_data.size
                                                        mem[_28381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20961] + _20961 + 36] = 0
                                                    staticcall address(_18981).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20961] + _20961 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28382 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28382] = return_data.size
                                                        mem[_28382 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18981):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18981):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18981)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18981)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18981)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18981));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19496 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19671 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19671:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19496 + (32 * _19671) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18982 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18982)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20219 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20219] == bool(mem[_20219])
                                                if not mem[_20219]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _20965 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_20965 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20965 + 36 len 28]
                                                s = 0
                                                while s < mem[_20965]:
                                                    mem[s + _20965 + 36] = mem[s + _20965 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_20965]) <= mem[_20965]:
                                                    staticcall address(_18982).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20965] + _20965 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28383 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28383] = return_data.size
                                                        mem[_28383 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_20965] + _20965 + 36] = 0
                                                    staticcall address(_18982).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_20965] + _20965 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28384 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28384] = return_data.size
                                                        mem[_28384 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18982):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18982):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18982)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18982)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18982)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18982));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19499 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19672 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19672:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19499 + (32 * _19672) + -mem[64] + 224], arg3
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if not arg3:
                    revert with 0, 'PeriodicPrizeStrategy/prize-pool-not-zero'
                if not arg4:
                    revert with 0, 'PeriodicPrizeStrategy/ticket-not-zero'
                if not arg5:
                    revert with 0, 'PeriodicPrizeStrategy/sponsorship-not-zero'
                if not arg6:
                    revert with 0, 'PeriodicPrizeStrategy/rng-not-zero'
                prizePoolAddress = arg3
                ticketAddress = arg4
                address(rngAddress) = arg6
                sponsorshipAddress = arg5
                if arg2 <= 0:
                    revert with 0, 'PeriodicPrizeStrategy/prize-period-greater-than-zero'
                prizePeriodSeconds = arg2
                mem[(32 * arg7.length) + 128] = arg2
                emit PrizePeriodSecondsUpdated(arg2);
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    if stor110:
                        revert with 0, 'Already init'
                    mem[0] = 1
                    mem[32] = 111
                    uint8(stor111[1].field_0) = 1
                    Mask(152, 0, stor111[1].field_8) = 0
                    idx = 0
                    while idx < arg7.length:
                        require idx < mem[96]
                        _18988 = mem[(32 * idx) + 128]
                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(prizePoolAddress)
                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                gas gas_remaining wei
                               args address(_18988)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _20231 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_20231] == bool(mem[_20231])
                        if not mem[_20231]:
                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                        _20989 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_20989 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20989 + 36 len 28]
                        s = 0
                        while s < mem[_20989]:
                            mem[s + _20989 + 36] = mem[s + _20989 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_20989]) <= mem[_20989]:
                            staticcall address(_18988).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_20989] + _20989 + -mem[64] + 32]
                            if return_data.size:
                                _28395 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_28395] = return_data.size
                                mem[_28395 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[_20989] + _20989 + 36] = 0
                            staticcall address(_18988).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_20989] + _20989 + -mem[64] + 32]
                            if return_data.size:
                                _28396 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_28396] = return_data.size
                                mem[_28396 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                        if 1 == address(_18988):
                            revert with 0, 'Invalid address'
                        if not address(_18988):
                            revert with 0, 'Invalid address'
                        if address(stor111[address(_18988)].field_0):
                            revert with 0, 'Already added'
                        mem[32] = 111
                        address(stor111[address(_18988)].field_0) = address(stor111[1].field_0)
                        mem[0] = 1
                        address(stor111[1].field_0) = address(_18988)
                        stor110++
                        emit ExternalErc20AwardAdded(address(_18988));
                        idx = idx + 1
                        continue 
                    prizePeriodSeconds = arg2
                    prizePeriodStartedAt = arg1
                    uint16(stor107.field_0) = 1800
                    uint16(stor107.field_16) = 0
                    emit RngRequestTimeoutSet(1800);
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = arg4
                    mem[mem[64] + 96] = arg5
                    mem[mem[64] + 128] = arg6
                    mem[mem[64] + 160] = 192
                    mem[mem[64] + 192] = mem[96]
                    idx = 0
                    s = mem[64] + 224
                    t = 128
                    while idx < mem[96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                else:
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            if stor110:
                                revert with 0, 'Already init'
                            mem[0] = 1
                            mem[32] = 111
                            uint8(stor111[1].field_0) = 1
                            Mask(152, 0, stor111[1].field_8) = 0
                            idx = 0
                            while idx < arg7.length:
                                require idx < mem[96]
                                _18989 = mem[(32 * idx) + 128]
                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(prizePoolAddress)
                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                        gas gas_remaining wei
                                       args address(_18989)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _20233 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_20233] == bool(mem[_20233])
                                if not mem[_20233]:
                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                _20993 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_20993 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20993 + 36 len 28]
                                s = 0
                                while s < mem[_20993]:
                                    mem[s + _20993 + 36] = mem[s + _20993 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_20993]) <= mem[_20993]:
                                    staticcall address(_18989).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20993] + _20993 + -mem[64] + 32]
                                    if return_data.size:
                                        _28397 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28397] = return_data.size
                                        mem[_28397 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[_20993] + _20993 + 36] = 0
                                    staticcall address(_18989).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_20993] + _20993 + -mem[64] + 32]
                                    if return_data.size:
                                        _28398 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28398] = return_data.size
                                        mem[_28398 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                if 1 == address(_18989):
                                    revert with 0, 'Invalid address'
                                if not address(_18989):
                                    revert with 0, 'Invalid address'
                                if address(stor111[address(_18989)].field_0):
                                    revert with 0, 'Already added'
                                mem[32] = 111
                                address(stor111[address(_18989)].field_0) = address(stor111[1].field_0)
                                mem[0] = 1
                                address(stor111[1].field_0) = address(_18989)
                                stor110++
                                emit ExternalErc20AwardAdded(address(_18989));
                                idx = idx + 1
                                continue 
                            prizePeriodSeconds = arg2
                            prizePeriodStartedAt = arg1
                            uint16(stor107.field_0) = 1800
                            uint16(stor107.field_16) = 0
                            emit RngRequestTimeoutSet(1800);
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = arg2
                            mem[mem[64] + 64] = arg4
                            mem[mem[64] + 96] = arg5
                            mem[mem[64] + 128] = arg6
                            mem[mem[64] + 160] = 192
                            mem[mem[64] + 192] = mem[96]
                            idx = 0
                            s = mem[64] + 224
                            t = 128
                            while idx < mem[96]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18995 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18995)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20245 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20245] == bool(mem[_20245])
                                        if not mem[_20245]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _21017 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_21017 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21017 + 36 len 28]
                                        s = 0
                                        while s < mem[_21017]:
                                            mem[s + _21017 + 36] = mem[s + _21017 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_21017]) <= mem[_21017]:
                                            staticcall address(_18995).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_21017] + _21017 + -mem[64] + 32]
                                            if return_data.size:
                                                _28409 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28409] = return_data.size
                                                mem[_28409 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_21017] + _21017 + 36] = 0
                                            staticcall address(_18995).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_21017] + _21017 + -mem[64] + 32]
                                            if return_data.size:
                                                _28410 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28410] = return_data.size
                                                mem[_28410 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18995):
                                            revert with 0, 'Invalid address'
                                        if not address(_18995):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18995)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18995)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18995)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18995));
                                        idx = idx + 1
                                        continue 
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18996 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18996)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20247 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20247] == bool(mem[_20247])
                                                if not mem[_20247]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21021 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21021 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21021 + 36 len 28]
                                                s = 0
                                                while s < mem[_21021]:
                                                    mem[s + _21021 + 36] = mem[s + _21021 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21021]) <= mem[_21021]:
                                                    staticcall address(_18996).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21021] + _21021 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28411 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28411] = return_data.size
                                                        mem[_28411 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21021] + _21021 + 36] = 0
                                                    staticcall address(_18996).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21021] + _21021 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28412 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28412] = return_data.size
                                                        mem[_28412 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18996):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18996):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18996)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18996)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18996)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18996));
                                                idx = idx + 1
                                                continue 
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18997 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18997)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20249 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20249] == bool(mem[_20249])
                                                if not mem[_20249]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21025 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21025 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21025 + 36 len 28]
                                                s = 0
                                                while s < mem[_21025]:
                                                    mem[s + _21025 + 36] = mem[s + _21025 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21025]) <= mem[_21025]:
                                                    staticcall address(_18997).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21025] + _21025 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28413 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28413] = return_data.size
                                                        mem[_28413 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21025] + _21025 + 36] = 0
                                                    staticcall address(_18997).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21025] + _21025 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28414 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28414] = return_data.size
                                                        mem[_28414 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18997):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18997):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18997)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18997)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18997)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18997));
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18998 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18998)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20251 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20251] == bool(mem[_20251])
                                                if not mem[_20251]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21029 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21029 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21029 + 36 len 28]
                                                s = 0
                                                while s < mem[_21029]:
                                                    mem[s + _21029 + 36] = mem[s + _21029 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21029]) <= mem[_21029]:
                                                    staticcall address(_18998).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21029] + _21029 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28415 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28415] = return_data.size
                                                        mem[_28415 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21029] + _21029 + 36] = 0
                                                    staticcall address(_18998).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21029] + _21029 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28416 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28416] = return_data.size
                                                        mem[_28416 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18998):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18998):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18998)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18998)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18998)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18998));
                                                idx = idx + 1
                                                continue 
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18999 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18999)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20253 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20253] == bool(mem[_20253])
                                                if not mem[_20253]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21033 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21033 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21033 + 36 len 28]
                                                s = 0
                                                while s < mem[_21033]:
                                                    mem[s + _21033 + 36] = mem[s + _21033 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21033]) <= mem[_21033]:
                                                    staticcall address(_18999).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21033] + _21033 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28417 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28417] = return_data.size
                                                        mem[_28417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21033] + _21033 + 36] = 0
                                                    staticcall address(_18999).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21033] + _21033 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28418 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28418] = return_data.size
                                                        mem[_28418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18999):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18999):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18999)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18999)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18999)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18999));
                                                idx = idx + 1
                                                continue 
                                prizePeriodSeconds = arg2
                                prizePeriodStartedAt = arg1
                                uint16(stor107.field_0) = 1800
                                uint16(stor107.field_16) = 0
                                emit RngRequestTimeoutSet(1800);
                                mem[mem[64]] = arg1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = arg4
                                mem[mem[64] + 96] = arg5
                                mem[mem[64] + 128] = arg6
                                mem[mem[64] + 160] = 192
                                mem[mem[64] + 192] = mem[96]
                                idx = 0
                                s = mem[64] + 224
                                t = 128
                                while idx < mem[96]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                            else:
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _18990 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_18990)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20235 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20235] == bool(mem[_20235])
                                        if not mem[_20235]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _20997 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_20997 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_20997 + 36 len 28]
                                        s = 0
                                        while s < mem[_20997]:
                                            mem[s + _20997 + 36] = mem[s + _20997 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_20997]) <= mem[_20997]:
                                            staticcall address(_18990).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20997] + _20997 + -mem[64] + 32]
                                            if return_data.size:
                                                _28399 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28399] = return_data.size
                                                mem[_28399 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_20997] + _20997 + 36] = 0
                                            staticcall address(_18990).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_20997] + _20997 + -mem[64] + 32]
                                            if return_data.size:
                                                _28400 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28400] = return_data.size
                                                mem[_28400 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_18990):
                                            revert with 0, 'Invalid address'
                                        if not address(_18990):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_18990)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_18990)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_18990)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_18990));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < mem[96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18991 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18991)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20237 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20237] == bool(mem[_20237])
                                                if not mem[_20237]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21001 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21001 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21001 + 36 len 28]
                                                s = 0
                                                while s < mem[_21001]:
                                                    mem[s + _21001 + 36] = mem[s + _21001 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21001]) <= mem[_21001]:
                                                    staticcall address(_18991).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21001] + _21001 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28401 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28401] = return_data.size
                                                        mem[_28401 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21001] + _21001 + 36] = 0
                                                    staticcall address(_18991).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21001] + _21001 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28402 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28402] = return_data.size
                                                        mem[_28402 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18991):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18991):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18991)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18991)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18991)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18991));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19526 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19681 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19681:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19526 + (32 * _19681) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18992 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18992)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20239 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20239] == bool(mem[_20239])
                                                if not mem[_20239]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21005 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21005 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21005 + 36 len 28]
                                                s = 0
                                                while s < mem[_21005]:
                                                    mem[s + _21005 + 36] = mem[s + _21005 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21005]) <= mem[_21005]:
                                                    staticcall address(_18992).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21005] + _21005 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28403 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28403] = return_data.size
                                                        mem[_28403 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21005] + _21005 + 36] = 0
                                                    staticcall address(_18992).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21005] + _21005 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28404 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28404] = return_data.size
                                                        mem[_28404 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18992):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18992):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18992)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18992)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18992)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18992));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18993 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18993)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20241 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20241] == bool(mem[_20241])
                                                if not mem[_20241]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21009 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21009 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21009 + 36 len 28]
                                                s = 0
                                                while s < mem[_21009]:
                                                    mem[s + _21009 + 36] = mem[s + _21009 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21009]) <= mem[_21009]:
                                                    staticcall address(_18993).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21009] + _21009 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28405 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28405] = return_data.size
                                                        mem[_28405 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21009] + _21009 + 36] = 0
                                                    staticcall address(_18993).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21009] + _21009 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28406 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28406] = return_data.size
                                                        mem[_28406 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18993):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18993):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18993)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18993)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18993)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18993));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _18994 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_18994)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20243 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20243] == bool(mem[_20243])
                                                if not mem[_20243]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21013 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21013 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21013 + 36 len 28]
                                                s = 0
                                                while s < mem[_21013]:
                                                    mem[s + _21013 + 36] = mem[s + _21013 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21013]) <= mem[_21013]:
                                                    staticcall address(_18994).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21013] + _21013 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28407 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28407] = return_data.size
                                                        mem[_28407 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21013] + _21013 + 36] = 0
                                                    staticcall address(_18994).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21013] + _21013 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28408 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28408] = return_data.size
                                                        mem[_28408 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_18994):
                                                    revert with 0, 'Invalid address'
                                                if not address(_18994):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_18994)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_18994)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_18994)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_18994));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19535 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19684 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19684:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19535 + (32 * _19684) + -mem[64] + 224], arg3
                    else:
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            if stor110:
                                revert with 0, 'Already init'
                            mem[0] = 1
                            mem[32] = 111
                            uint8(stor111[1].field_0) = 1
                            Mask(152, 0, stor111[1].field_8) = 0
                            idx = 0
                            while idx < arg7.length:
                                require idx < mem[96]
                                _19000 = mem[(32 * idx) + 128]
                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(prizePoolAddress)
                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                        gas gas_remaining wei
                                       args address(_19000)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _20255 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_20255] == bool(mem[_20255])
                                if not mem[_20255]:
                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                _21037 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_21037 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21037 + 36 len 28]
                                s = 0
                                while s < mem[_21037]:
                                    mem[s + _21037 + 36] = mem[s + _21037 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_21037]) <= mem[_21037]:
                                    staticcall address(_19000).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_21037] + _21037 + -mem[64] + 32]
                                    if return_data.size:
                                        _28419 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28419] = return_data.size
                                        mem[_28419 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[_21037] + _21037 + 36] = 0
                                    staticcall address(_19000).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_21037] + _21037 + -mem[64] + 32]
                                    if return_data.size:
                                        _28420 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_28420] = return_data.size
                                        mem[_28420 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                if 1 == address(_19000):
                                    revert with 0, 'Invalid address'
                                if not address(_19000):
                                    revert with 0, 'Invalid address'
                                if address(stor111[address(_19000)].field_0):
                                    revert with 0, 'Already added'
                                mem[32] = 111
                                address(stor111[address(_19000)].field_0) = address(stor111[1].field_0)
                                mem[0] = 1
                                address(stor111[1].field_0) = address(_19000)
                                stor110++
                                emit ExternalErc20AwardAdded(address(_19000));
                                idx = idx + 1
                                continue 
                            prizePeriodSeconds = arg2
                            prizePeriodStartedAt = arg1
                            uint16(stor107.field_0) = 1800
                            uint16(stor107.field_16) = 0
                            emit RngRequestTimeoutSet(1800);
                            _19553 = mem[64]
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = arg2
                            mem[mem[64] + 64] = arg4
                            mem[mem[64] + 96] = arg5
                            mem[mem[64] + 128] = arg6
                            mem[mem[64] + 160] = 192
                            _19690 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            idx = 0
                            s = mem[64] + 224
                            t = 128
                            while idx < _19690:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit 0xf9632d21: mem[mem[64] len _19553 + (32 * _19690) + -mem[64] + 224], arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _19006 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_19006)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20267 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20267] == bool(mem[_20267])
                                        if not mem[_20267]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _21061 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_21061 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21061 + 36 len 28]
                                        s = 0
                                        while s < mem[_21061]:
                                            mem[s + _21061 + 36] = mem[s + _21061 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_21061]) <= mem[_21061]:
                                            staticcall address(_19006).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_21061] + _21061 + -mem[64] + 32]
                                            if return_data.size:
                                                _28431 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28431] = return_data.size
                                                mem[_28431 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_21061] + _21061 + 36] = 0
                                            staticcall address(_19006).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_21061] + _21061 + -mem[64] + 32]
                                            if return_data.size:
                                                _28432 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28432] = return_data.size
                                                mem[_28432 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_19006):
                                            revert with 0, 'Invalid address'
                                        if not address(_19006):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_19006)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_19006)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_19006)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_19006));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19571 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19696 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19696:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19571 + (32 * _19696) + -mem[64] + 224], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _19007 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_19007)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20269 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20269] == bool(mem[_20269])
                                                if not mem[_20269]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21065 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21065 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21065 + 36 len 28]
                                                s = 0
                                                while s < mem[_21065]:
                                                    mem[s + _21065 + 36] = mem[s + _21065 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21065]) <= mem[_21065]:
                                                    staticcall address(_19007).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21065] + _21065 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28433 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28433] = return_data.size
                                                        mem[_28433 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21065] + _21065 + 36] = 0
                                                    staticcall address(_19007).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21065] + _21065 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28434 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28434] = return_data.size
                                                        mem[_28434 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_19007):
                                                    revert with 0, 'Invalid address'
                                                if not address(_19007):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_19007)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_19007)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_19007)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_19007));
                                                idx = idx + 1
                                                continue 
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _19008 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_19008)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20271 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20271] == bool(mem[_20271])
                                                if not mem[_20271]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21069 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21069 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21069 + 36 len 28]
                                                s = 0
                                                while s < mem[_21069]:
                                                    mem[s + _21069 + 36] = mem[s + _21069 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21069]) <= mem[_21069]:
                                                    staticcall address(_19008).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21069] + _21069 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28435 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28435] = return_data.size
                                                        mem[_28435 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21069] + _21069 + 36] = 0
                                                    staticcall address(_19008).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21069] + _21069 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28436 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28436] = return_data.size
                                                        mem[_28436 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_19008):
                                                    revert with 0, 'Invalid address'
                                                if not address(_19008):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_19008)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_19008)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_19008)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_19008));
                                                idx = idx + 1
                                                continue 
                                        prizePeriodSeconds = arg2
                                        prizePeriodStartedAt = arg1
                                        uint16(stor107.field_0) = 1800
                                        uint16(stor107.field_16) = 0
                                        emit RngRequestTimeoutSet(1800);
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = arg4
                                        mem[mem[64] + 96] = arg5
                                        mem[mem[64] + 128] = arg6
                                        mem[mem[64] + 160] = 192
                                        mem[mem[64] + 192] = mem[96]
                                        idx = 0
                                        s = mem[64] + 224
                                        t = 128
                                        while idx < mem[96]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _19009 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_19009)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20273 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20273] == bool(mem[_20273])
                                                if not mem[_20273]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21073 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21073 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21073 + 36 len 28]
                                                s = 0
                                                while s < mem[_21073]:
                                                    mem[s + _21073 + 36] = mem[s + _21073 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21073]) <= mem[_21073]:
                                                    staticcall address(_19009).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21073] + _21073 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28437 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28437] = return_data.size
                                                        mem[_28437 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21073] + _21073 + 36] = 0
                                                    staticcall address(_19009).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21073] + _21073 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28438 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28438] = return_data.size
                                                        mem[_28438 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_19009):
                                                    revert with 0, 'Invalid address'
                                                if not address(_19009):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_19009)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_19009)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_19009)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_19009));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19580 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19699 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19699:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19580 + (32 * _19699) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _19010 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_19010)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20275 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20275] == bool(mem[_20275])
                                                if not mem[_20275]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21077 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21077 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21077 + 36 len 28]
                                                s = 0
                                                while s < mem[_21077]:
                                                    mem[s + _21077 + 36] = mem[s + _21077 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21077]) <= mem[_21077]:
                                                    staticcall address(_19010).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21077] + _21077 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28439 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28439] = return_data.size
                                                        mem[_28439 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21077] + _21077 + 36] = 0
                                                    staticcall address(_19010).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21077] + _21077 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28440 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28440] = return_data.size
                                                        mem[_28440 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_19010):
                                                    revert with 0, 'Invalid address'
                                                if not address(_19010):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_19010)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_19010)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_19010)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_19010));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                            else:
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    if stor110:
                                        revert with 0, 'Already init'
                                    mem[0] = 1
                                    mem[32] = 111
                                    uint8(stor111[1].field_0) = 1
                                    Mask(152, 0, stor111[1].field_8) = 0
                                    idx = 0
                                    while idx < arg7.length:
                                        require idx < mem[96]
                                        _19001 = mem[(32 * idx) + 128]
                                        if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        require ext_code.size(prizePoolAddress)
                                        staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                gas gas_remaining wei
                                               args address(_19001)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20257 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_20257] == bool(mem[_20257])
                                        if not mem[_20257]:
                                            revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                        _21041 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 36
                                        mem[_21041 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21041 + 36 len 28]
                                        s = 0
                                        while s < mem[_21041]:
                                            mem[s + _21041 + 36] = mem[s + _21041 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_21041]) <= mem[_21041]:
                                            staticcall address(_19001).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_21041] + _21041 + -mem[64] + 32]
                                            if return_data.size:
                                                _28421 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28421] = return_data.size
                                                mem[_28421 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[_21041] + _21041 + 36] = 0
                                            staticcall address(_19001).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len mem[_21041] + _21041 + -mem[64] + 32]
                                            if return_data.size:
                                                _28422 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_28422] = return_data.size
                                                mem[_28422 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                        if 1 == address(_19001):
                                            revert with 0, 'Invalid address'
                                        if not address(_19001):
                                            revert with 0, 'Invalid address'
                                        if address(stor111[address(_19001)].field_0):
                                            revert with 0, 'Already added'
                                        mem[32] = 111
                                        address(stor111[address(_19001)].field_0) = address(stor111[1].field_0)
                                        mem[0] = 1
                                        address(stor111[1].field_0) = address(_19001)
                                        stor110++
                                        emit ExternalErc20AwardAdded(address(_19001));
                                        idx = idx + 1
                                        continue 
                                    prizePeriodSeconds = arg2
                                    prizePeriodStartedAt = arg1
                                    uint16(stor107.field_0) = 1800
                                    uint16(stor107.field_16) = 0
                                    emit RngRequestTimeoutSet(1800);
                                    _19556 = mem[64]
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = arg4
                                    mem[mem[64] + 96] = arg5
                                    mem[mem[64] + 128] = arg6
                                    mem[mem[64] + 160] = 192
                                    _19691 = mem[96]
                                    mem[mem[64] + 192] = mem[96]
                                    idx = 0
                                    s = mem[64] + 224
                                    t = 128
                                    while idx < _19691:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    emit 0xf9632d21: mem[mem[64] len _19556 + (32 * _19691) + -mem[64] + 224], arg3
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _19002 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_19002)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20259 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20259] == bool(mem[_20259])
                                                if not mem[_20259]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21045 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21045 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21045 + 36 len 28]
                                                s = 0
                                                while s < mem[_21045]:
                                                    mem[s + _21045 + 36] = mem[s + _21045 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21045]) <= mem[_21045]:
                                                    staticcall address(_19002).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21045] + _21045 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28423 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28423] = return_data.size
                                                        mem[_28423 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21045] + _21045 + 36] = 0
                                                    staticcall address(_19002).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21045] + _21045 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28424 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28424] = return_data.size
                                                        mem[_28424 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_19002):
                                                    revert with 0, 'Invalid address'
                                                if not address(_19002):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_19002)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_19002)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_19002)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_19002));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19559 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19692 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19692:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19559 + (32 * _19692) + -mem[64] + 224], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _19003 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_19003)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20261 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20261] == bool(mem[_20261])
                                                if not mem[_20261]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21049 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21049 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21049 + 36 len 28]
                                                s = 0
                                                while s < mem[_21049]:
                                                    mem[s + _21049 + 36] = mem[s + _21049 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21049]) <= mem[_21049]:
                                                    staticcall address(_19003).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21049] + _21049 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28425 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28425] = return_data.size
                                                        mem[_28425 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21049] + _21049 + 36] = 0
                                                    staticcall address(_19003).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21049] + _21049 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28426 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28426] = return_data.size
                                                        mem[_28426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_19003):
                                                    revert with 0, 'Invalid address'
                                                if not address(_19003):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_19003)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_19003)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_19003)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_19003));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19562 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19693 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19693:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19562 + (32 * _19693) + -mem[64] + 224], arg3
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _19004 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_19004)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20263 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20263] == bool(mem[_20263])
                                                if not mem[_20263]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21053 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21053 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21053 + 36 len 28]
                                                s = 0
                                                while s < mem[_21053]:
                                                    mem[s + _21053 + 36] = mem[s + _21053 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21053]) <= mem[_21053]:
                                                    staticcall address(_19004).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21053] + _21053 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28427 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28427] = return_data.size
                                                        mem[_28427 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21053] + _21053 + 36] = 0
                                                    staticcall address(_19004).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21053] + _21053 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28428 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28428] = return_data.size
                                                        mem[_28428 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_19004):
                                                    revert with 0, 'Invalid address'
                                                if not address(_19004):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_19004)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_19004)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_19004)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_19004));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < mem[96]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: arg1, arg2, address(arg4), address(arg5), address(arg6), 192, mem[mem[64] + 192 len (32 * mem[96]) + 32], arg3
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if stor110:
                                                revert with 0, 'Already init'
                                            mem[0] = 1
                                            mem[32] = 111
                                            uint8(stor111[1].field_0) = 1
                                            Mask(152, 0, stor111[1].field_8) = 0
                                            idx = 0
                                            while idx < arg7.length:
                                                require idx < mem[96]
                                                _19005 = mem[(32 * idx) + 128]
                                                if not ext_code.size(mem[(32 * idx) + 140 len 20]):
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-null'
                                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                require ext_code.size(prizePoolAddress)
                                                staticcall prizePoolAddress.0x6a3fd4f9 with:
                                                        gas gas_remaining wei
                                                       args address(_19005)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20265 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_20265] == bool(mem[_20265])
                                                if not mem[_20265]:
                                                    revert with 0, 'PeriodicPrizeStrategy/cannot-award-external'
                                                _21057 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 36
                                                mem[_21057 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_21057 + 36 len 28]
                                                s = 0
                                                while s < mem[_21057]:
                                                    mem[s + _21057 + 36] = mem[s + _21057 + 32]
                                                    s = s + 32
                                                    continue 
                                                if ceil32(mem[_21057]) <= mem[_21057]:
                                                    staticcall address(_19005).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21057] + _21057 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28429 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28429] = return_data.size
                                                        mem[_28429 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[mem[_21057] + _21057 + 36] = 0
                                                    staticcall address(_19005).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len mem[_21057] + _21057 + -mem[64] + 32]
                                                    if return_data.size:
                                                        _28430 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_28430] = return_data.size
                                                        mem[_28430 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'PeriodicPrizeStrategy/erc20-invalid'
                                                if 1 == address(_19005):
                                                    revert with 0, 'Invalid address'
                                                if not address(_19005):
                                                    revert with 0, 'Invalid address'
                                                if address(stor111[address(_19005)].field_0):
                                                    revert with 0, 'Already added'
                                                mem[32] = 111
                                                address(stor111[address(_19005)].field_0) = address(stor111[1].field_0)
                                                mem[0] = 1
                                                address(stor111[1].field_0) = address(_19005)
                                                stor110++
                                                emit ExternalErc20AwardAdded(address(_19005));
                                                idx = idx + 1
                                                continue 
                                            prizePeriodSeconds = arg2
                                            prizePeriodStartedAt = arg1
                                            uint16(stor107.field_0) = 1800
                                            uint16(stor107.field_16) = 0
                                            emit RngRequestTimeoutSet(1800);
                                            _19568 = mem[64]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = arg2
                                            mem[mem[64] + 64] = arg4
                                            mem[mem[64] + 96] = arg5
                                            mem[mem[64] + 128] = arg6
                                            mem[mem[64] + 160] = 192
                                            _19695 = mem[96]
                                            mem[mem[64] + 192] = mem[96]
                                            idx = 0
                                            s = mem[64] + 224
                                            t = 128
                                            while idx < _19695:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            emit 0xf9632d21: mem[mem[64] len _19568 + (32 * _19695) + -mem[64] + 224], arg3
    emit PrizePoolOpened(msg.sender, prizePeriodStartedAt);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
