contract main {




// =====================  Runtime code  =====================


#
#  - claimTreasury()
#  - betBull(uint256 arg1)
#  - betBear(uint256 arg1)
#
const TOTAL_RATE = 100


uint8 paused; offset 160
address owner;
address bullTokenAddress;
address stor10;
uint8 stor11;
uint8 stor11; offset 160
uint8 stor11; offset 168
address sub_9a33c8f2Address;
uint256 minBetAmount;
uint8 stor13;
uint8 rewardRate; offset 64
uint8 treasuryRate; offset 72
uint8 genesisStartOnce; offset 80
uint8 genesisLockOnce; offset 88
uint16 stor13; offset 80
uint64 sub_1cd66e83;
mapping of struct sub_79a6d51f;
mapping of struct sub_a9a428ff;
mapping of uint256 stor4;
mapping of uint32 stor5;
uint32 currentEpoch;
uint64 roundTime; offset 32
uint64 graceTime; offset 96
address adminAddress;
address operatorAddress;
uint256 treasuryAmount;

function genesisLockOnce() payable {
    return bool(genesisLockOnce)
}

function operatorAddress() payable {
    return operatorAddress
}

function sub_1cd66e83(?) payable {
    return sub_1cd66e83
}

function treasuryAmount() payable {
    return treasuryAmount
}

function graceTime() payable {
    return graceTime
}

function paused() payable {
    return bool(paused)
}

function currentEpoch() payable {
    return currentEpoch
}

function sub_79a6d51f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    return sub_79a6d51f[arg1].field_0, 
           sub_79a6d51f[arg1].field_0,
           sub_79a6d51f[arg1].field_0,
           sub_79a6d51f[arg1].field_0,
           sub_79a6d51f[arg1].field_256,
           sub_79a6d51f[arg1].field_512,
           sub_79a6d51f[arg1].field_768,
           sub_79a6d51f[arg1].field_1024,
           sub_79a6d51f[arg1].field_1280,
           sub_79a6d51f[arg1].field_1536,
           sub_79a6d51f[arg1].field_1792,
           bool(sub_79a6d51f[arg1].field_2048)
}

function rewardRate() payable {
    return rewardRate
}

function owner() payable {
    return owner
}

function sub_9a33c8f2(?) payable {
    return sub_9a33c8f2Address
}

function BullToken() payable {
    return bullTokenAddress
}

function sub_a9a428ff(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if sub_a9a428ff[arg1][arg2].field_0 >= 2:
        revert with 0, 33
    return sub_a9a428ff[arg1][arg2].field_0, sub_a9a428ff[arg1][arg2].field_256, bool(sub_a9a428ff[arg1][arg2].field_512)
}

function userRounds(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < stor4[arg1]
    return userRounds[uint8(arg2)]
}

function treasuryRate() payable {
    return treasuryRate
}

function roundTime() payable {
    return roundTime
}

function genesisStartOnce() payable {
    return bool(genesisStartOnce)
}

function minBetAmount() payable {
    return minBetAmount
}

function adminAddress() payable {
    return adminAddress
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

function sub_6365e8cc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    roundTime = uint64(arg1)
}

function setMinBetAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    minBetAmount = arg1
    emit 0xaf3d4685: arg1, currentEpoch
}

function sub_94eeb09c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9a33c8f2Address = address(arg1)
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    stor10 = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    operatorAddress = arg1
}

function unpause() payable {
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if not paused:
        revert with 0, 'Pausable: not paused'
    uint16(stor13.field_80) = 0
    paused = 0
    emit Unpaused(msg.sender);
    emit 0xd5363363: currentEpoch
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    adminAddress = arg1
}

function pause() payable {
    if adminAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0, 'admin | operator: wut?'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    emit 0x845fb7b7: currentEpoch
}

function sub_0304c45a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if uint64(arg1) > roundTime:
        revert with 0, 'Cannot be more than roundTime'
    graceTime = uint64(arg1)
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

function setRewardRate(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rewardRate cannot be more than 100%'
    rewardRate = arg1
    if 100 < arg1:
        revert with 0, 17
    treasuryRate = uint8(-arg1 + 100)
    emit 0x29cb9c8e: uint8(stor13.field_0), uint8(-arg1 + 100), currentEpoch
}

function sub_a5b7c3e2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if uint8(arg1) > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'treasuryRate cannot be more than 100%'
    if 100 < uint8(arg1):
        revert with 0, 17
    rewardRate = uint8(-uint8(arg1) + 100)
    treasuryRate = uint8(arg1)
    emit 0x29cb9c8e: -uint8(arg1) + 100 << 248, uint8(arg1), currentEpoch
}

function sub_54088883(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if sub_a9a428ff[arg1 << 224][address(arg2)].field_0 > 1:
        revert with 0, 33
    if sub_79a6d51f[arg1 << 224].field_2048:
        return not bool(sub_79a6d51f[arg1 << 224].field_2048)
    if sub_79a6d51f[arg1 << 224].field_160 > -graceTime + test266151307():
        revert with 0, 17
    if block.timestamp <= uint64(graceTime + sub_79a6d51f[arg1 << 224].field_160):
        return (block.timestamp > uint64(graceTime + sub_79a6d51f[arg1 << 224].field_0))
    return bool(sub_a9a428ff[arg1 << 224][address(arg2)].field_256)
}

function sub_f63b91e5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if sub_a9a428ff[arg1 << 224][address(arg2)].field_0 > 1:
        revert with 0, 33
    if sub_79a6d51f[arg1 << 224].field_512 == sub_79a6d51f[arg1 << 224].field_256:
        return 0
    if not sub_79a6d51f[arg1 << 224].field_2048:
        return bool(sub_79a6d51f[arg1 << 224].field_2048)
    if sub_79a6d51f[arg1 << 224].field_512 > sub_79a6d51f[arg1 << 224].field_256:
        if sub_a9a428ff[arg1 << 224][address(arg2)].field_0 > 1:
            revert with 0, 33
        if not sub_a9a428ff[arg1 << 224][address(arg2)].field_0:
            return not sub_a9a428ff[arg1 << 224][address(arg2)].field_0
    if sub_79a6d51f[arg1 << 224].field_512 >= sub_79a6d51f[arg1 << 224].field_256:
        return (sub_79a6d51f[arg1 << 224].field_512 < sub_79a6d51f[arg1 << 224].field_256)
    if sub_a9a428ff[arg1 << 224][address(arg2)].field_0 > 1:
        revert with 0, 33
    return (sub_a9a428ff[arg1 << 224][address(arg2)].field_0 == 1)
}

function genesisStartRound() payable {
    if operatorAddress != msg.sender:
        revert with 0, 'operator: wut?'
    if paused:
        revert with 0, 'Pausable: paused'
    if genesisStartOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only run genesisStartRound once'
    if 1 > -currentEpoch + test266151307():
        revert with 0, 17
    currentEpoch = uint32(currentEpoch + 1)
    sub_79a6d51f[stor6 + 1 << 224].field_32 = uint64(block.timestamp)
    if uint64(block.timestamp) > -roundTime + test266151307():
        revert with 0, 17
    sub_79a6d51f[stor6 + 1 << 224].field_96 = uint64(roundTime + uint64(block.timestamp))
    if roundTime > 9223372036854775807:
        revert with 0, 17
    if uint64(block.timestamp) > -(2 * roundTime % 9223372036854775808) + test266151307():
        revert with 0, 17
    sub_79a6d51f[stor6 + 1 << 224].field_0 = uint64((2 * roundTime % 9223372036854775808) + uint64(block.timestamp))
    sub_79a6d51f[stor6 + 1 << 224].field_64 = 0
    sub_79a6d51f[stor6 + 1 << 224].field_768 = 0
    emit 0xd15eafbd: block.timestamp, uint32(currentEpoch + 1)
    genesisStartOnce = 1
}

function genesisLockRound() payable {
    if operatorAddress != msg.sender:
        revert with 0, 'operator: wut?'
    if paused:
        revert with 0, 'Pausable: paused'
    if not genesisStartOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only run after genesisStartRound is triggered'
    if genesisLockOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only run genesisLockRound once'
    if sub_79a6d51f[stor6].field_96 > -graceTime + test266151307():
        revert with 0, 17
    if block.timestamp > uint64(graceTime + sub_79a6d51f[stor6].field_96):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only lock round within graceTime'
    require ext_code.size(stor10)
    staticcall stor10.0x98d5fdca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_1cd66e83 > -roundTime + test266151307():
        revert with 0, 17
    if block.timestamp < uint64(roundTime + sub_1cd66e83):
        revert with 0, 'Oracle update exceeded time of the round'
    sub_1cd66e83 = uint64(block.timestamp)
    if not sub_79a6d51f[stor6].field_32:
        revert with 0, 'Can only lock round after round has started'
    if block.timestamp < sub_79a6d51f[stor6].field_96:
        revert with 0, 'Can only lock round after lockUnixTime'
    if sub_79a6d51f[stor6].field_96 > -graceTime + test266151307():
        revert with 0, 17
    if block.timestamp > uint64(graceTime + sub_79a6d51f[stor6].field_96):
        revert with 0, 'Can only lock round within graceTime'
    sub_79a6d51f[stor6].field_256 = ext_call.return_data[0]
    emit 0xc8acea6f: block.timestamp, ext_call.return_data[0], currentEpoch
    if 1 > -currentEpoch + test266151307():
        revert with 0, 17
    currentEpoch = uint32(currentEpoch + 1)
    sub_79a6d51f[stor6 + 1 << 224].field_32 = uint64(block.timestamp)
    if uint64(block.timestamp) > -roundTime + test266151307():
        revert with 0, 17
    sub_79a6d51f[stor6 + 1 << 224].field_96 = uint64(roundTime + uint64(block.timestamp))
    if roundTime > 9223372036854775807:
        revert with 0, 17
    if uint64(block.timestamp) > -(2 * roundTime % 9223372036854775808) + test266151307():
        revert with 0, 17
    sub_79a6d51f[stor6 + 1 << 224].field_0 = uint64((2 * roundTime % 9223372036854775808) + uint64(block.timestamp))
    sub_79a6d51f[stor6 + 1 << 224].field_64 = 0
    sub_79a6d51f[stor6 + 1 << 224].field_768 = 0
    emit 0xd15eafbd: block.timestamp, uint32(currentEpoch + 1)
    genesisLockOnce = 1
}

function getUserRounds(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    if stor4[address(arg1)] < arg2:
        revert with 0, 17
    if arg3 <= stor4[address(arg1)] - arg2:
        if arg3 > test266151307():
            revert with 0, 65
        mem[96] = arg3
        mem[64] = (32 * arg3) + 128
        if arg3:
            mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        idx = 0
        while idx < arg3:
            mem[32] = 4
            if arg2 > !idx:
                revert with 0, 17
            if arg2 + idx >= stor4[address(arg1)]:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            if idx >= arg3:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor('array', ('div', 0.125, ('add', ('param', 'arg2'), ('var', 0))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor4', 4)))[uint8(arg2 + idx)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2 > !arg3:
            revert with 0, 17
        mem[(32 * arg3) + 128] = 64
        mem[(32 * arg3) + 192] = arg3
        s = 0
        s = 128
        t = mem[64] + 96
        while arg3 < arg3:
            mem[t] = mem[s]
            s = arg3 + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg3) + 160] = arg2 + arg3
    else:
        mem[0] = arg1
        mem[32] = 4
        if stor4[address(arg1)] < arg2:
            revert with 0, 17
        if stor4[address(arg1)] - arg2 > test266151307():
            revert with 0, 65
        mem[96] = stor4[address(arg1)] - arg2
        mem[64] = (32 * stor4[address(arg1)] - arg2) + 128
        if not stor4[address(arg1)] - arg2:
            idx = 0
            while idx < stor4[address(arg1)] - arg2:
                mem[32] = 4
                if arg2 > !idx:
                    revert with 0, 17
                if arg2 + idx >= stor4[address(arg1)]:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 4)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor('array', ('div', 0.125, ('add', ('param', 'arg2'), ('var', 0))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor4', 4)))[uint8(arg2 + idx)]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2 > !(stor4[address(arg1)] - arg2):
                revert with 0, 17
            mem[(32 * stor4[address(arg1)] - arg2) + 128] = 64
            _51 = mem[96]
            mem[(32 * stor4[address(arg1)] - arg2) + 192] = mem[96]
            s = 0
            s = 128
            t = mem[64] + 96
            while stor4[address(arg1)] - arg2 < _51:
                mem[t] = mem[s]
                s = stor4[address(arg1)] + -arg2 + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[128 len 32 * stor4[address(arg1)] - arg2] = call.data[calldata.size len 32 * stor4[address(arg1)] - arg2]
            idx = 0
            while idx < stor4[address(arg1)] - arg2:
                mem[32] = 4
                if arg2 > !idx:
                    revert with 0, 17
                if arg2 + idx >= stor4[address(arg1)]:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 4)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor('array', ('div', 0.125, ('add', ('param', 'arg2'), ('var', 0))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor4', 4)))[uint8(arg2 + idx)]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2 > !(stor4[address(arg1)] - arg2):
                revert with 0, 17
            mem[(32 * stor4[address(arg1)] - arg2) + 128] = 64
            _52 = mem[96]
            mem[(32 * stor4[address(arg1)] - arg2) + 192] = mem[96]
            s = 0
            s = 128
            t = mem[64] + 96
            while stor4[address(arg1)] - arg2 < _52:
                mem[t] = mem[s]
                s = stor4[address(arg1)] + -arg2 + 1
                s = s + 32
                t = t + 32
                continue 
        mem[(32 * stor4[address(arg1)] - arg2) + 160] = stor4[address(arg1)]
    return memory
      from mem[64]
       len t - mem[64]
}

function executeRound() payable {
    if operatorAddress != msg.sender:
        revert with 0, 'operator: wut?'
    if paused:
        revert with 0, 'Pausable: paused'
    if not genesisStartOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only run after genesisStartRound and genesisLockRound is triggered'
    if not genesisLockOnce:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only run after genesisStartRound and genesisLockRound is triggered'
    require ext_code.size(stor10)
    staticcall stor10.0x98d5fdca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_1cd66e83 > -roundTime + test266151307():
        revert with 0, 17
    if block.timestamp < uint64(roundTime + sub_1cd66e83):
        revert with 0, 'Oracle update exceeded time of the round'
    sub_1cd66e83 = uint64(block.timestamp)
    if not sub_79a6d51f[stor6].field_32:
        revert with 0, 'Can only lock round after round has started'
    if block.timestamp < sub_79a6d51f[stor6].field_96:
        revert with 0, 'Can only lock round after lockUnixTime'
    if sub_79a6d51f[stor6].field_96 > -graceTime + test266151307():
        revert with 0, 17
    if block.timestamp > uint64(graceTime + sub_79a6d51f[stor6].field_96):
        revert with 0, 'Can only lock round within graceTime'
    sub_79a6d51f[stor6].field_256 = ext_call.return_data[0]
    emit 0xc8acea6f: block.timestamp, ext_call.return_data[0], currentEpoch
    if currentEpoch < 1:
        revert with 0, 17
    if not sub_79a6d51f[stor6 - 1 << 224].field_96:
        revert with 0, 'Can only end round after round has locked'
    if block.timestamp < sub_79a6d51f[stor6 - 1 << 224].field_160:
        revert with 0, 'Can only end round after endUnixTime'
    if sub_79a6d51f[stor6 - 1 << 224].field_160 > -graceTime + test266151307():
        revert with 0, 17
    if block.timestamp > uint64(graceTime + sub_79a6d51f[stor6 - 1 << 224].field_160):
        revert with 0, 'Can only end round within graceTime'
    sub_79a6d51f[stor6 - 1 << 224].field_512 = ext_call.return_data[0]
    sub_79a6d51f[stor6 - 1 << 224].field_2048 = 1
    emit 0xbc6edbae: block.timestamp, ext_call.return_data[0], uint32(currentEpoch - 1)
    if currentEpoch < 1:
        revert with 0, 17
    if rewardRate > -treasuryRate + 255:
        revert with 0, 17
    if uint8(treasuryRate + rewardRate) != 100:
        revert with 0, 'rewardRate and treasuryRate must add up to TOTAL_RATE'
    if sub_79a6d51f[stor6 - 1 << 224].field_1536:
        revert with 0, 'Rewards calculated'
    if sub_79a6d51f[stor6 - 1 << 224].field_1792:
        revert with 0, 'Rewards calculated'
    if sub_79a6d51f[stor6 - 1 << 224].field_256 < sub_79a6d51f[stor6 - 1 << 224].field_512:
        if sub_79a6d51f[stor6 - 1 << 224].field_768 and rewardRate > -1 / sub_79a6d51f[stor6 - 1 << 224].field_768:
            revert with 0, 17
        if sub_79a6d51f[stor6 - 1 << 224].field_768 and treasuryRate > -1 / sub_79a6d51f[stor6 - 1 << 224].field_768:
            revert with 0, 17
        sub_79a6d51f[stor6 - 1 << 224].field_1536 = sub_79a6d51f[stor6 - 1 << 224].field_1024
        sub_79a6d51f[stor6 - 1 << 224].field_1792 = sub_79a6d51f[stor6 - 1 << 224].field_768 * rewardRate / 100
        if treasuryAmount > !(sub_79a6d51f[stor6 - 1 << 224].field_768 * treasuryRate / 100):
            revert with 0, 17
        treasuryAmount += sub_79a6d51f[stor6 - 1 << 224].field_768 * treasuryRate / 100
        emit 0x4047fd56: sub_79a6d51f[stor6 - 1 << 224].field_1024, sub_79a6d51f[stor6 - 1 << 224].field_768 * rewardRate / 100, sub_79a6d51f[stor6 - 1 << 224].field_768 * treasuryRate / 100, uint32(currentEpoch - 1)
    else:
        if sub_79a6d51f[stor6 - 1 << 224].field_512 >= sub_79a6d51f[stor6 - 1 << 224].field_256:
            sub_79a6d51f[stor6 - 1 << 224].field_1536 = 0
            sub_79a6d51f[stor6 - 1 << 224].field_1792 = 0
            if treasuryAmount > !sub_79a6d51f[stor6 - 1 << 224].field_768:
                revert with 0, 17
            treasuryAmount += sub_79a6d51f[stor6 - 1 << 224].field_768
            emit 0x4047fd56: 0, 0, sub_79a6d51f[stor6 - 1 << 224].field_768, uint32(currentEpoch - 1)
        else:
            if sub_79a6d51f[stor6 - 1 << 224].field_768 and rewardRate > -1 / sub_79a6d51f[stor6 - 1 << 224].field_768:
                revert with 0, 17
            if sub_79a6d51f[stor6 - 1 << 224].field_768 and treasuryRate > -1 / sub_79a6d51f[stor6 - 1 << 224].field_768:
                revert with 0, 17
            sub_79a6d51f[stor6 - 1 << 224].field_1536 = sub_79a6d51f[stor6 - 1 << 224].field_1280
            sub_79a6d51f[stor6 - 1 << 224].field_1792 = sub_79a6d51f[stor6 - 1 << 224].field_768 * rewardRate / 100
            if treasuryAmount > !(sub_79a6d51f[stor6 - 1 << 224].field_768 * treasuryRate / 100):
                revert with 0, 17
            treasuryAmount += sub_79a6d51f[stor6 - 1 << 224].field_768 * treasuryRate / 100
            emit 0x4047fd56: sub_79a6d51f[stor6 - 1 << 224].field_1280, sub_79a6d51f[stor6 - 1 << 224].field_768 * rewardRate / 100, sub_79a6d51f[stor6 - 1 << 224].field_768 * treasuryRate / 100, uint32(currentEpoch - 1)
    if 1 > -currentEpoch + test266151307():
        revert with 0, 17
    currentEpoch = uint32(currentEpoch + 1)
    if not genesisStartOnce:
        revert with 0, 'Can only run after genesisStartRound is triggered'
    if uint32(currentEpoch + 1) < 2:
        revert with 0, 17
    if not sub_79a6d51f[uint32(stor6 + 1) - 2 << 224].field_160:
        revert with 0, 'Can only start round after round n-2 has ended'
    if uint32(currentEpoch + 1) < 2:
        revert with 0, 17
    if block.timestamp < sub_79a6d51f[uint32(stor6 + 1) - 2 << 224].field_160:
        revert with 0, 'Can only start new round after round n-2 endUnixTime'
    sub_79a6d51f[stor6 + 1 << 224].field_32 = uint64(block.timestamp)
    if uint64(block.timestamp) > -roundTime + test266151307():
        revert with 0, 17
    sub_79a6d51f[stor6 + 1 << 224].field_96 = uint64(roundTime + uint64(block.timestamp))
    if roundTime > 9223372036854775807:
        revert with 0, 17
    if uint64(block.timestamp) > -(2 * roundTime % 9223372036854775808) + test266151307():
        revert with 0, 17
    sub_79a6d51f[stor6 + 1 << 224].field_0 = uint64((2 * roundTime % 9223372036854775808) + uint64(block.timestamp))
    sub_79a6d51f[stor6 + 1 << 224].field_64 = 0
    sub_79a6d51f[stor6 + 1 << 224].field_768 = 0
    emit 0xd15eafbd: block.timestamp, uint32(currentEpoch + 1)
}

function claim(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ext_code.size(msg.sender):
        revert with 0, 'contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract not allowed'
    if not sub_79a6d51f[arg1 << 224].field_32:
        revert with 0, 'Round has not started'
    if block.timestamp <= sub_79a6d51f[arg1 << 224].field_160:
        revert with 0, 'Round has not ended'
    if sub_a9a428ff[arg1 << 224][msg.sender].field_512:
        revert with 0, 'Rewards claimed'
    if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0 > 1:
        revert with 0, 33
    mem[128] = sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256
    mem[160] = bool(sub_a9a428ff[arg1 << 224][address(msg.sender)].field_512)
    mem[192] = sub_79a6d51f[arg1 << 224].field_0
    mem[224] = sub_79a6d51f[arg1 << 224].field_32
    mem[256] = sub_79a6d51f[arg1 << 224].field_96
    mem[288] = sub_79a6d51f[arg1 << 224].field_160
    mem[320] = sub_79a6d51f[arg1 << 224].field_256
    mem[352] = sub_79a6d51f[arg1 << 224].field_512
    mem[384] = sub_79a6d51f[arg1 << 224].field_768
    mem[416] = sub_79a6d51f[arg1 << 224].field_1024
    mem[448] = sub_79a6d51f[arg1 << 224].field_1280
    mem[480] = sub_79a6d51f[arg1 << 224].field_1536
    mem[512] = sub_79a6d51f[arg1 << 224].field_1792
    mem[544] = bool(sub_79a6d51f[arg1 << 224].field_2048)
    if not sub_79a6d51f[arg1 << 224].field_2048:
        if sub_79a6d51f[arg1 << 224].field_2048:
            revert with 0, 'Not eligible for refund'
        if sub_79a6d51f[arg1 << 224].field_160 > -graceTime + test266151307():
            revert with 0, 17
        if block.timestamp <= uint64(graceTime + sub_79a6d51f[arg1 << 224].field_160):
            revert with 0, 'Not eligible for refund'
        if not sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256:
            revert with 0, 'Not eligible for refund'
        sub_a9a428ff[arg1 << 224][msg.sender].field_512 = 1
        mem[612] = msg.sender
        mem[644] = sub_a9a428ff[arg1 << 224][msg.sender].field_256
        mem[576] = 68
        mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[608 len 4] = transfer(address arg1, uint256 arg2)
        mem[676] = 32
        mem[708] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(bullTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[740 len 96] = transfer(address arg1, uint256 arg2), msg.sender, sub_a9a428ff[arg1 << 224][msg.sender].field_256, 0
        mem[808] = 0
        call bullTokenAddress with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, sub_a9a428ff[arg1 << 224][msg.sender].field_256, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, sub_a9a428ff[arg1 << 224][msg.sender].field_256, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0:
                    revert with memory
                      from 128
                       len sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0
                revert with 0, 'SafeBEP20: low-level call failed'
            if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0:
                require sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0 >= 32
                require sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256 == bool(sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256)
                if not sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256:
                    revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        else:
            mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[772] == bool(mem[772])
                if not mem[772]:
                    revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        emit 0xff2e9f5c: sub_a9a428ff[arg1 << 224][msg.sender].field_256, msg.sender, arg1
    else:
        if sub_79a6d51f[arg1 << 224].field_512 == sub_79a6d51f[arg1 << 224].field_256:
            revert with 0, 'Not eligible for claim'
        if not sub_79a6d51f[arg1 << 224].field_2048:
            revert with 0, 'Not eligible for claim'
        if sub_79a6d51f[arg1 << 224].field_512 <= sub_79a6d51f[arg1 << 224].field_256:
            if sub_79a6d51f[arg1 << 224].field_512 >= sub_79a6d51f[arg1 << 224].field_256:
                revert with 0, 'Not eligible for claim'
            if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0 > 1:
                revert with 0, 33
            if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0 != 1:
                revert with 0, 'Not eligible for claim'
        else:
            if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0 > 1:
                revert with 0, 33
            if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0:
                if sub_79a6d51f[arg1 << 224].field_512 >= sub_79a6d51f[arg1 << 224].field_256:
                    revert with 0, 'Not eligible for claim'
                if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0 > 1:
                    revert with 0, 33
                if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0 != 1:
                    revert with 0, 'Not eligible for claim'
        mem[576] = sub_79a6d51f[arg1 << 224].field_0
        mem[608] = sub_79a6d51f[arg1 << 224].field_32
        mem[640] = sub_79a6d51f[arg1 << 224].field_96
        mem[672] = sub_79a6d51f[arg1 << 224].field_160
        mem[704] = sub_79a6d51f[arg1 << 224].field_256
        mem[736] = sub_79a6d51f[arg1 << 224].field_512
        mem[768] = sub_79a6d51f[arg1 << 224].field_768
        mem[800] = sub_79a6d51f[arg1 << 224].field_1024
        mem[832] = sub_79a6d51f[arg1 << 224].field_1280
        mem[864] = sub_79a6d51f[arg1 << 224].field_1536
        mem[896] = sub_79a6d51f[arg1 << 224].field_1792
        mem[928] = bool(sub_79a6d51f[arg1 << 224].field_2048)
        if sub_a9a428ff[arg1 << 224][msg.sender].field_256 and sub_79a6d51f[arg1 << 224].field_1792 > -1 / sub_a9a428ff[arg1 << 224][msg.sender].field_256:
            revert with 0, 17
        if not sub_79a6d51f[arg1 << 224].field_1536:
            revert with 0, 18
        if stor5[msg.sender] == test266151307():
            revert with 0, 17
        stor5[msg.sender] = uint32(stor5[msg.sender] + 1)
        if not sub_9a33c8f2Address:
            sub_a9a428ff[arg1 << 224][msg.sender].field_512 = 1
            mem[996] = msg.sender
            mem[1028] = sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536
            mem[960] = 68
            mem[996 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[992 len 4] = transfer(address arg1, uint256 arg2)
            mem[1060] = 32
            mem[1092] = 'SafeBEP20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(bullTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[1124 len 96] = transfer(address arg1, uint256 arg2), msg.sender, sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536, 0
            mem[1192] = 0
            call bullTokenAddress with:
               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0:
                        revert with memory
                          from 128
                           len sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0
                    revert with 0, 'SafeBEP20: low-level call failed'
                if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0:
                    require sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0 >= 32
                    require sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256 == bool(sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256)
                    if not sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                mem[1156 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[1156] == bool(mem[1156])
                    if not mem[1156]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        else:
            mem[964] = uint8(stor11.field_160)
            require ext_code.size(sub_9a33c8f2Address)
            staticcall sub_9a33c8f2Address.0xba9c9f42 with:
                    gas gas_remaining wei
                   args uint8(stor11.field_160)
            mem[960] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != this.address:
                sub_a9a428ff[arg1 << 224][msg.sender].field_512 = 1
                mem[ceil32(return_data.size) + 996] = msg.sender
                mem[ceil32(return_data.size) + 1028] = sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536
                mem[ceil32(return_data.size) + 960] = 68
                mem[ceil32(return_data.size) + 996 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 992 len 4] = transfer(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 1060] = 32
                mem[ceil32(return_data.size) + 1092] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(bullTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 1124 len 96] = transfer(address arg1, uint256 arg2), msg.sender, sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536, 0
                mem[ceil32(return_data.size) + 1192] = 0
                call bullTokenAddress with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0:
                            revert with memory
                              from 128
                               len sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0:
                        require sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0 >= 32
                        require sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256 == bool(sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256)
                        if not sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 1156 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 1156] == bool(mem[ceil32(return_data.size) + 1156])
                        if not mem[ceil32(return_data.size) + 1156]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 964] = uint8(stor11.field_168)
                require ext_code.size(sub_9a33c8f2Address)
                staticcall sub_9a33c8f2Address.0xba9c9f42 with:
                        gas gas_remaining wei
                       args uint8(stor11.field_168)
                mem[ceil32(return_data.size) + 960] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == this.address:
                    if 10 == stor5[msg.sender]:
                        require ext_code.size(sub_9a33c8f2Address)
                        call sub_9a33c8f2Address.mint(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args uint8(stor11.field_0), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    idx = 1
                    s = 1
                    while uint8(idx) < 5:
                        if arg1 < uint8(idx):
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = sha3(arg1 - uint8(idx) << 224, 3)
                        if not sub_a9a428ff[arg1 - uint8(idx) << 224][msg.sender].field_512:
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        if uint8(s) == 255:
                            revert with 0, 17
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        continue 
                    if 5 == uint8(s):
                        require ext_code.size(sub_9a33c8f2Address)
                        call sub_9a33c8f2Address.mint(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args uint8(stor11.field_0), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                sub_a9a428ff[arg1 << 224][msg.sender].field_512 = 1
                mem[(2 * ceil32(return_data.size)) + 996] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 1028] = sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536
                mem[(2 * ceil32(return_data.size)) + 960] = 68
                mem[(2 * ceil32(return_data.size)) + 996 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 992 len 4] = transfer(address arg1, uint256 arg2)
                mem[(2 * ceil32(return_data.size)) + 1060] = 32
                mem[(2 * ceil32(return_data.size)) + 1092] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(bullTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 1124 len 96] = transfer(address arg1, uint256 arg2), msg.sender, sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536, 0
                mem[(2 * ceil32(return_data.size)) + 1192] = 0
                call bullTokenAddress with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0:
                            revert with memory
                              from 128
                               len sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0:
                        require sub_a9a428ff[arg1 << 224][address(msg.sender)].field_0 >= 32
                        require sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256 == bool(sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256)
                        if not sub_a9a428ff[arg1 << 224][address(msg.sender)].field_256:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 1156 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 1156] == bool(mem[(2 * ceil32(return_data.size)) + 1156])
                        if not mem[(2 * ceil32(return_data.size)) + 1156]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        emit 0xff2e9f5c: (sub_a9a428ff[arg1 << 224][msg.sender].field_256 * sub_79a6d51f[arg1 << 224].field_1792 / sub_79a6d51f[arg1 << 224].field_1536), msg.sender, arg1
}



}
