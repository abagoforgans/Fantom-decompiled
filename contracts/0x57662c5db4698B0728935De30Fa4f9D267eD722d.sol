contract main {




// =====================  Runtime code  =====================


uint256 RATE;
uint256 totalTokensStaked;
uint256 sub_047c255f;
mapping of struct info;
uint8 stor4; offset 160
uint128 stor4; offset 160
address stor4;
address sub_e30b1a30Address;
uint256 claimedTokens;
uint256 lastTime;
uint256 startTime;
uint256 sub_f8db165d;
uint8 poolStarted;
array of address stakers;
mapping of uint8 stor12;

function sub_047c255f(?) {
    return sub_047c255f
}

function claimedTokens() {
    return claimedTokens
}

function RATE() {
    return RATE
}

function startTime() {
    return startTime
}

function lastTime() {
    return lastTime
}

function totalTokensStaked() {
    return totalTokensStaked
}

function sub_b7f06c81(?) {
    return bool(uint8(stor4.field_160))
}

function sub_e30b1a30(?) {
    return sub_e30b1a30Address
}

function poolStarted() {
    return bool(poolStarted)
}

function sub_f8db165d(?) {
    return sub_f8db165d
}

function stakers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stakers.length
    return stakers[arg1]
}

function getInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return info[address(arg1)].field_0, 
           info[address(arg1)].field_256,
           info[address(arg1)].field_512,
           info[address(arg1)].field_768
}

function _fallback() payable {
  stop
}

function amIAdmin() {
    return (msg.sender == address(stor4.field_0))
}

function replaceAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor4.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: only admin can do this'
    address(stor4.field_0) = arg1
}

function sub_11ec106b(?) {
    if address(stor4.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: only admin can do this'
    if uint8(stor4.field_160):
        revert with 0, 'FTMOStakingFTM: pool is active'
    lastTime = block.timestamp
    Mask(96, 0, stor4.field_160) = 1
}

function startPool() {
    if address(stor4.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: only admin can do this'
    if poolStarted:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: pool already started'
    startTime = block.timestamp
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_f8db165d = ext_call.return_data[0]
    RATE = sub_f8db165d / 2160 * 24 * 3600
    poolStarted = 1
    Mask(96, 0, stor4.field_160) = 1
}

function pausePool() {
    if address(stor4.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: only admin can do this'
    if not uint8(stor4.field_160):
        revert with 0, 'FTMOStakingFTM: pool is paused'
    if totalTokensStaked > 0:
        if uint8(stor4.field_160):
            if startTime > -7776001:
                revert with 'NH{q', 17
            if startTime + (2160 * 24 * 3600) > block.timestamp:
                if block.timestamp < lastTime:
                    revert with 'NH{q', 17
                if RATE > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * RATE and block.timestamp - lastTime > -1 / 10^18 * RATE:
                    revert with 'NH{q', 17
                if not totalTokensStaked:
                    revert with 'NH{q', 18
                if sub_047c255f > -((10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked) - 1:
                    revert with 'NH{q', 17
                sub_047c255f += (10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked
                lastTime = block.timestamp
    Mask(96, 0, stor4.field_160) = 0
}

function sub_cc4b1386(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor4.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: only admin can do this'
    if sub_f8db165d > -arg1 - 1:
        revert with 'NH{q', 17
    sub_f8db165d += arg1
    if startTime > -7776001:
        revert with 'NH{q', 17
    if totalTokensStaked > 0:
        if uint8(stor4.field_160):
            if startTime > -7776001:
                revert with 'NH{q', 17
            if startTime + (2160 * 24 * 3600) > block.timestamp:
                if block.timestamp < lastTime:
                    revert with 'NH{q', 17
                if RATE > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * RATE and block.timestamp - lastTime > -1 / 10^18 * RATE:
                    revert with 'NH{q', 17
                if not totalTokensStaked:
                    revert with 'NH{q', 18
                if sub_047c255f > -((10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked) - 1:
                    revert with 'NH{q', 17
                sub_047c255f += (10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked
                lastTime = block.timestamp
    if startTime + (2160 * 24 * 3600) < block.timestamp:
        revert with 'NH{q', 17
    if not startTime + -block.timestamp + (2160 * 24 * 3600):
        revert with 'NH{q', 18
    if RATE > -(arg1 / startTime + -block.timestamp + (2160 * 24 * 3600)) - 1:
        revert with 'NH{q', 17
    RATE += arg1 / startTime + -block.timestamp + (2160 * 24 * 3600)
}

function sub_5d9d879e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor4.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: only admin can do this'
    if sub_f8db165d < arg1:
        revert with 'NH{q', 17
    sub_f8db165d -= arg1
    if startTime > -7776001:
        revert with 'NH{q', 17
    if totalTokensStaked > 0:
        if uint8(stor4.field_160):
            if startTime > -7776001:
                revert with 'NH{q', 17
            if startTime + (2160 * 24 * 3600) > block.timestamp:
                if block.timestamp < lastTime:
                    revert with 'NH{q', 17
                if RATE > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * RATE and block.timestamp - lastTime > -1 / 10^18 * RATE:
                    revert with 'NH{q', 17
                if not totalTokensStaked:
                    revert with 'NH{q', 18
                if sub_047c255f > -((10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked) - 1:
                    revert with 'NH{q', 17
                sub_047c255f += (10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked
                lastTime = block.timestamp
    if startTime + (2160 * 24 * 3600) < block.timestamp:
        revert with 'NH{q', 17
    if not startTime + -block.timestamp + (2160 * 24 * 3600):
        revert with 'NH{q', 18
    if arg1 / startTime + -block.timestamp + (2160 * 24 * 3600) >= RATE:
        RATE = 0
    else:
        if startTime + (2160 * 24 * 3600) < block.timestamp:
            revert with 'NH{q', 17
        if not startTime + -block.timestamp + (2160 * 24 * 3600):
            revert with 'NH{q', 18
        if RATE < arg1 / startTime + -block.timestamp + (2160 * 24 * 3600):
            revert with 'NH{q', 17
        RATE -= arg1 / startTime + -block.timestamp + (2160 * 24 * 3600)
}

function depositStake() payable {
    if not uint8(stor4.field_160):
        revert with 0, 'FTMOStakingFTM: pool not active'
    if not totalTokensStaked:
        lastTime = block.timestamp
        if totalTokensStaked > -msg.value - 1:
            revert with 'NH{q', 17
    else:
        if totalTokensStaked > 0:
            if uint8(stor4.field_160):
                if startTime > -7776001:
                    revert with 'NH{q', 17
                if startTime + (2160 * 24 * 3600) > block.timestamp:
                    if block.timestamp < lastTime:
                        revert with 'NH{q', 17
                    if RATE > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if 10^18 * RATE and block.timestamp - lastTime > -1 / 10^18 * RATE:
                        revert with 'NH{q', 17
                    if not totalTokensStaked:
                        revert with 'NH{q', 18
                    if sub_047c255f > -((10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked) - 1:
                        revert with 'NH{q', 17
                    sub_047c255f += (10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked
                    lastTime = block.timestamp
            if totalTokensStaked > -msg.value - 1:
                revert with 'NH{q', 17
    totalTokensStaked += msg.value
    if sub_047c255f < info[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if info[address(msg.sender)].field_512 and sub_047c255f - info[address(msg.sender)].field_256 > -1 / info[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if info[address(msg.sender)].field_0 > -((sub_047c255f * info[address(msg.sender)].field_512) - (info[address(msg.sender)].field_256 * info[address(msg.sender)].field_512) / 10^18) - 1:
        revert with 'NH{q', 17
    info[address(msg.sender)].field_0 += (sub_047c255f * info[address(msg.sender)].field_512) - (info[address(msg.sender)].field_256 * info[address(msg.sender)].field_512) / 10^18
    if info[address(msg.sender)].field_512 > -msg.value - 1:
        revert with 'NH{q', 17
    info[address(msg.sender)].field_512 += msg.value
    info[address(msg.sender)].field_256 = sub_047c255f
    if not stor12[address(msg.sender)]:
        stakers.length++
        stakers[stakers.length] = msg.sender
        stor12[address(msg.sender)] = 1
}

function rewardsWithdrawable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: only stakers allowed'
    if totalTokensStaked > 0:
        if uint8(stor4.field_160):
            if startTime > -7776001:
                revert with 'NH{q', 17
            if startTime + (2160 * 24 * 3600) > block.timestamp:
                if block.timestamp < lastTime:
                    revert with 'NH{q', 17
                if RATE > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * RATE and block.timestamp - lastTime > -1 / 10^18 * RATE:
                    revert with 'NH{q', 17
                if not totalTokensStaked:
                    revert with 'NH{q', 18
                if sub_047c255f > -((10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked) - 1:
                    revert with 'NH{q', 17
                sub_047c255f += (10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked
                lastTime = block.timestamp
    if sub_047c255f < info[address(arg1)].field_256:
        revert with 'NH{q', 17
    if info[address(arg1)].field_512 and sub_047c255f - info[address(arg1)].field_256 > -1 / info[address(arg1)].field_512:
        revert with 'NH{q', 17
    if info[address(arg1)].field_0 > -((sub_047c255f * info[address(arg1)].field_512) - (info[address(arg1)].field_256 * info[address(arg1)].field_512) / 10^18) - 1:
        revert with 'NH{q', 17
    info[address(arg1)].field_0 += (sub_047c255f * info[address(arg1)].field_512) - (info[address(arg1)].field_256 * info[address(arg1)].field_512) / 10^18
    info[address(arg1)].field_256 = sub_047c255f
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if block.timestamp - startTime >= 4320 * 24 * 3600:
        if info[address(arg1)].field_0 < info[address(arg1)].field_768:
            revert with 'NH{q', 17
        return (info[address(arg1)].field_0 - info[address(arg1)].field_768)
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if info[address(arg1)].field_0 and block.timestamp - startTime > -1 / info[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (block.timestamp * info[address(arg1)].field_0) - (startTime * info[address(arg1)].field_0) / 4320 * 24 * 3600 < info[address(arg1)].field_768:
        revert with 'NH{q', 17
    return (((block.timestamp * info[address(arg1)].field_0) - (startTime * info[address(arg1)].field_0) / 4320 * 24 * 3600) - info[address(arg1)].field_768)
}

function withdrawStake(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: only stakers allowed'
    if totalTokensStaked <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: no tokens staked in pool'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: invalid withdraw amount'
    if arg1 > info[address(msg.sender)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: over withdraw limit'
    if totalTokensStaked > 0:
        if uint8(stor4.field_160):
            if startTime > -7776001:
                revert with 'NH{q', 17
            if startTime + (2160 * 24 * 3600) > block.timestamp:
                if block.timestamp < lastTime:
                    revert with 'NH{q', 17
                if RATE > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * RATE and block.timestamp - lastTime > -1 / 10^18 * RATE:
                    revert with 'NH{q', 17
                if not totalTokensStaked:
                    revert with 'NH{q', 18
                if sub_047c255f > -((10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked) - 1:
                    revert with 'NH{q', 17
                sub_047c255f += (10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked
                lastTime = block.timestamp
    if info[address(msg.sender)].field_512 < arg1:
        revert with 'NH{q', 17
    if totalTokensStaked < arg1:
        revert with 'NH{q', 17
    totalTokensStaked -= arg1
    if sub_047c255f < info[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if info[address(msg.sender)].field_512 and sub_047c255f - info[address(msg.sender)].field_256 > -1 / info[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if info[address(msg.sender)].field_0 > -((sub_047c255f * info[address(msg.sender)].field_512) - (info[address(msg.sender)].field_256 * info[address(msg.sender)].field_512) / 10^18) - 1:
        revert with 'NH{q', 17
    info[address(msg.sender)].field_0 += (sub_047c255f * info[address(msg.sender)].field_512) - (info[address(msg.sender)].field_256 * info[address(msg.sender)].field_512) / 10^18
    info[address(msg.sender)].field_512 -= arg1
    info[address(msg.sender)].field_256 = sub_047c255f
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: only stakers allowed'
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: only stakers allowed'
    if totalTokensStaked > 0:
        if uint8(stor4.field_160):
            if startTime > -7776001:
                revert with 'NH{q', 17
            if startTime + (2160 * 24 * 3600) > block.timestamp:
                if block.timestamp < lastTime:
                    revert with 'NH{q', 17
                if RATE > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * RATE and block.timestamp - lastTime > -1 / 10^18 * RATE:
                    revert with 'NH{q', 17
                if not totalTokensStaked:
                    revert with 'NH{q', 18
                if sub_047c255f > -((10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked) - 1:
                    revert with 'NH{q', 17
                sub_047c255f += (10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked
                lastTime = block.timestamp
    if sub_047c255f < info[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if info[address(msg.sender)].field_512 and sub_047c255f - info[address(msg.sender)].field_256 > -1 / info[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if info[address(msg.sender)].field_0 > -((sub_047c255f * info[address(msg.sender)].field_512) - (info[address(msg.sender)].field_256 * info[address(msg.sender)].field_512) / 10^18) - 1:
        revert with 'NH{q', 17
    info[address(msg.sender)].field_0 += (sub_047c255f * info[address(msg.sender)].field_512) - (info[address(msg.sender)].field_256 * info[address(msg.sender)].field_512) / 10^18
    info[address(msg.sender)].field_256 = sub_047c255f
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if block.timestamp - startTime >= 4320 * 24 * 3600:
        if info[address(msg.sender)].field_0 < info[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if arg1 > info[address(msg.sender)].field_0 - info[address(msg.sender)].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: amount exceeds withdrawable FTMO'
    else:
        if block.timestamp < startTime:
            revert with 'NH{q', 17
        if info[address(msg.sender)].field_0 and block.timestamp - startTime > -1 / info[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if (block.timestamp * info[address(msg.sender)].field_0) - (startTime * info[address(msg.sender)].field_0) / 4320 * 24 * 3600 < info[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if arg1 > ((block.timestamp * info[address(msg.sender)].field_0) - (startTime * info[address(msg.sender)].field_0) / 4320 * 24 * 3600) - info[address(msg.sender)].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTM: amount exceeds withdrawable FTMO'
    if info[address(msg.sender)].field_768 > -arg1 - 1:
        revert with 'NH{q', 17
    info[address(msg.sender)].field_768 += arg1
    if claimedTokens > -arg1 - 1:
        revert with 'NH{q', 17
    claimedTokens += arg1
    require ext_code.size(sub_e30b1a30Address)
    call sub_e30b1a30Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
