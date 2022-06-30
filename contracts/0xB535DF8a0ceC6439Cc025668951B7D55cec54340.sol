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
uint8 stor10;
array of address stakers;
mapping of uint8 stor12;

function sub_047c255f(?) payable {
    return sub_047c255f
}

function claimedTokens() payable {
    return claimedTokens
}

function RATE() payable {
    return RATE
}

function startTime() payable {
    return startTime
}

function lastTime() payable {
    return lastTime
}

function totalTokensStaked() payable {
    return totalTokensStaked
}

function sub_b7f06c81(?) payable {
    return bool(uint8(stor4.field_160))
}

function sub_e30b1a30(?) payable {
    return sub_e30b1a30Address
}

function poolStarted() payable {
    return bool(stor10)
}

function sub_f8db165d(?) payable {
    return sub_f8db165d
}

function stakers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stakers.length
    return stakers[arg1]
}

function getInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return info[address(arg1)].field_0, 
           info[address(arg1)].field_256,
           info[address(arg1)].field_512,
           info[address(arg1)].field_768
}

function _fallback() payable {
    revert
}

function amIAdmin() payable {
    return (msg.sender == address(stor4.field_0))
}

function replaceAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor4.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: only admin can do this'
    address(stor4.field_0) = arg1
}

function sub_11ec106b(?) payable {
    if address(stor4.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: only admin can do this'
    if uint8(stor4.field_160):
        revert with 0, 'FTMOStakingFTMO: pool is active'
    lastTime = block.timestamp
    Mask(96, 0, stor4.field_160) = 1
}

function startPool() payable {
    if address(stor4.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: only admin can do this'
    if stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: pool already started'
    startTime = block.timestamp
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_f8db165d = ext_call.return_data[0]
    RATE = sub_f8db165d / 2160 * 24 * 3600
    stor10 = 1
    Mask(96, 0, stor4.field_160) = 1
}

function sub_dc8291f3(?) payable {
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
}

function pausePool() payable {
    if address(stor4.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: only admin can do this'
    if not uint8(stor4.field_160):
        revert with 0, 'FTMOStakingFTMO: pool is paused'
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

function getCurrentReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    if sub_047c255f + ((10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked) < info[address(arg1)].field_256:
        revert with 'NH{q', 17
    if info[address(arg1)].field_512 and sub_047c255f + ((10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked) - info[address(arg1)].field_256 > -1 / info[address(arg1)].field_512:
        revert with 'NH{q', 17
    if info[address(arg1)].field_0 > -((sub_047c255f * info[address(arg1)].field_512) + ((10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked * info[address(arg1)].field_512) - (info[address(arg1)].field_256 * info[address(arg1)].field_512) / 10^18) - 1:
        revert with 'NH{q', 17
    return (info[address(arg1)].field_0 + ((sub_047c255f * info[address(arg1)].field_512) + ((10^18 * block.timestamp * RATE) - (10^18 * lastTime * RATE) / totalTokensStaked * info[address(arg1)].field_512) - (info[address(arg1)].field_256 * info[address(arg1)].field_512) / 10^18))
}

function sub_cc4b1386(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor4.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: only admin can do this'
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

function sub_5d9d879e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor4.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: only admin can do this'
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

function rewardsWithdrawable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: only stakers allowed'
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

function withdrawStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: only stakers allowed'
    if totalTokensStaked <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: no tokens staked in pool'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: invalid withdraw amount'
    if arg1 > info[address(msg.sender)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: over withdraw limit'
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
    require ext_code.size(sub_e30b1a30Address)
    call sub_e30b1a30Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function depositStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor4.field_160):
        revert with 0, 'FTMOStakingFTMO: pool not active'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: invalid deposit amount'
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'FTMOStakingFTMO: insufficient allowance'
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'FTMOStakingFTMO: not enough tokens'
    require ext_code.size(sub_e30b1a30Address)
    call sub_e30b1a30Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not totalTokensStaked:
        lastTime = block.timestamp
        if totalTokensStaked > -arg1 - 1:
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
            if totalTokensStaked > -arg1 - 1:
                revert with 'NH{q', 17
    totalTokensStaked += arg1
    if sub_047c255f < info[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if info[address(msg.sender)].field_512 and sub_047c255f - info[address(msg.sender)].field_256 > -1 / info[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if info[address(msg.sender)].field_0 > -((sub_047c255f * info[address(msg.sender)].field_512) - (info[address(msg.sender)].field_256 * info[address(msg.sender)].field_512) / 10^18) - 1:
        revert with 'NH{q', 17
    info[address(msg.sender)].field_0 += (sub_047c255f * info[address(msg.sender)].field_512) - (info[address(msg.sender)].field_256 * info[address(msg.sender)].field_512) / 10^18
    if info[address(msg.sender)].field_512 > -arg1 - 1:
        revert with 'NH{q', 17
    info[address(msg.sender)].field_512 += arg1
    info[address(msg.sender)].field_256 = sub_047c255f
    if not stor12[address(msg.sender)]:
        stakers.length++
        stakers[stakers.length] = msg.sender
        stor12[address(msg.sender)] = 1
}

function withdrawReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: only stakers allowed'
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: only stakers allowed'
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
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: amount exceeds withdrawable FTMO'
    else:
        if block.timestamp < startTime:
            revert with 'NH{q', 17
        if info[address(msg.sender)].field_0 and block.timestamp - startTime > -1 / info[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if (block.timestamp * info[address(msg.sender)].field_0) - (startTime * info[address(msg.sender)].field_0) / 4320 * 24 * 3600 < info[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if arg1 > ((block.timestamp * info[address(msg.sender)].field_0) - (startTime * info[address(msg.sender)].field_0) / 4320 * 24 * 3600) - info[address(msg.sender)].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOStakingFTMO: amount exceeds withdrawable FTMO'
    if info[address(msg.sender)].field_768 > -arg1 - 1:
        revert with 'NH{q', 17
    info[address(msg.sender)].field_768 += arg1
    if claimedTokens > -arg1 - 1:
        revert with 'NH{q', 17
    claimedTokens += arg1
    require ext_code.size(sub_e30b1a30Address)
    call sub_e30b1a30Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
