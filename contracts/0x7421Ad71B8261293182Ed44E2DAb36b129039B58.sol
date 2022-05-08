contract main {




// =====================  Runtime code  =====================


#
#  - claimTreasury()
#  - sub_2a5f1b78(?)
#  - sub_77ac1835(?)
#  - sub_d94c383e(?)
#
const TOTAL_RATE = 100


uint8 paused; offset 160
address owner;
address bullTokenAddress;
mapping of struct rounds;
mapping of struct ledger;
array of uint256 userRounds;
uint256 currentEpoch;
uint8 stor6;
uint16 roundTime; offset 72
uint32 stor6; offset 8
uint32 stor6; offset 40
uint64 sub_84beb6e6; offset 8
address operatorAddress; offset 88
uint256 treasuryAmount;
uint8 rewardRate;
uint8 treasuryRate; offset 8
uint256 minBetAmount;

function treasuryAmount() payable {
    return treasuryAmount
}

function operator() payable {
    return operatorAddress
}

function paused() payable {
    return bool(paused)
}

function ledger(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if ledger[arg1][arg2].field_0 >= 3:
        revert with 0, 33
    return ledger[arg1][arg2].field_0, ledger[arg1][arg2].field_256, bool(ledger[arg1][arg2].field_512)
}

function currentEpoch() payable {
    return currentEpoch
}

function rewardRate() payable {
    return rewardRate
}

function sub_84beb6e6(?) payable {
    return sub_84beb6e6
}

function rounds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if rounds[arg1].field_256 >= 3:
        revert with 0, 33
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
           rounds[arg1].field_2560
}

function owner() payable {
    return owner
}

function BullToken() payable {
    return bullTokenAddress
}

function sub_d41a2fe1(?) payable {
    return bool(uint8(stor6.field_0))
}

function userRounds(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < userRounds[arg1]
    return userRounds[arg1][arg2]
}

function treasuryRate() payable {
    return treasuryRate
}

function roundTime() payable {
    return roundTime
}

function minBetAmount() payable {
    return minBetAmount
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

function setMinBetAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minBetAmount = arg1
}

function sub_dd724968(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    roundTime = uint16(arg1)
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
    emit Unpause(currentEpoch);
}

function pause() payable {
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0, 'admin | operator: wut?'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    emit Pause(currentEpoch);
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    operatorAddress = arg1
}

function sub_728af96f(?) payable {
    if operatorAddress != msg.sender:
        revert with 0, 'operator: wut?'
    if sub_84beb6e6 > -roundTime + test266151307():
        revert with 0, 17
    if block.timestamp < uint64(roundTime + sub_84beb6e6):
        revert with 0, 'Too early to lock the round.'
    uint8(stor6.field_0) = 1
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

function claimable(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if ledger[arg1][address(arg2)].field_0 > 2:
        revert with 0, 33
    if rounds[arg1].field_256 > 2:
        revert with 0, 33
    if arg1 >= currentEpoch:
        return (arg1 < currentEpoch)
    if ledger[arg1][address(arg2)].field_0 > 2:
        revert with 0, 33
    if rounds[arg1].field_256 > 2:
        revert with 0, 33
    return (rounds[arg1].field_256 == ledger[arg1][address(arg2)].field_0)
}

function setRewardRate(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rewardRate cannot be more than 100%'
    if arg1 > -treasuryRate + 255:
        revert with 0, 17
    if uint8(treasuryRate + arg1) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'rewardRate and treasuryRate must add up to TOTAL_RATE'
    rewardRate = arg1
    if 100 < arg1:
        revert with 0, 17
    treasuryRate = uint8(-arg1 + 100)
}

function sub_a5b7c3e2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1) > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'treasuryRate cannot be more than 100%'
    if rewardRate > -uint8(arg1) + 255:
        revert with 0, 17
    if uint8(uint8(arg1) + rewardRate) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'rewardRate and treasuryRate must add up to TOTAL_RATE'
    if 100 < uint8(arg1):
        revert with 0, 17
    rewardRate = uint8(-uint8(arg1) + 100)
    treasuryRate = uint8(arg1)
}

function getUserRounds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    if userRounds[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = userRounds[address(arg1)]
    mem[64] = (32 * userRounds[address(arg1)]) + 128
    if userRounds[address(arg1)]:
        mem[128 len 32 * userRounds[address(arg1)]] = call.data[calldata.size len 32 * userRounds[address(arg1)]]
    idx = 0
    while idx < userRounds[address(arg1)]:
        mem[32] = 4
        if idx >= userRounds[address(arg1)]:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 4)
        if idx >= userRounds[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = userRounds[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * userRounds[address(arg1)]) + 128] = 64
    mem[(32 * userRounds[address(arg1)]) + 192] = userRounds[address(arg1)]
    s = 0
    s = 128
    t = mem[64] + 96
    while userRounds[address(arg1)] < userRounds[address(arg1)]:
        mem[t] = mem[s]
        s = userRounds[address(arg1)] + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * userRounds[address(arg1)]) + 160] = userRounds[address(arg1)]
    return memory
      from mem[64]
       len t - mem[64]
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0, 'contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract not allowed'
    if ledger[arg1][address(msg.sender)].field_0 > 2:
        revert with 0, 33
    mem[128] = ledger[arg1][address(msg.sender)].field_256
    mem[160] = bool(ledger[arg1][address(msg.sender)].field_512)
    mem[192] = rounds[arg1].field_0
    if rounds[arg1].field_256 > 2:
        revert with 0, 33
    mem[224] = rounds[arg1].field_256
    mem[256] = rounds[arg1].field_512
    mem[288] = rounds[arg1].field_768
    mem[320] = rounds[arg1].field_1024
    mem[352] = rounds[arg1].field_1280
    mem[384] = rounds[arg1].field_1536
    mem[416] = rounds[arg1].field_1792
    mem[448] = rounds[arg1].field_2048
    mem[480] = rounds[arg1].field_2304
    mem[512] = rounds[arg1].field_2560
    if arg1 >= currentEpoch:
        revert with 0, 'Not eligible for claim'
    if ledger[arg1][address(msg.sender)].field_0 > 2:
        revert with 0, 33
    if rounds[arg1].field_256 > 2:
        revert with 0, 33
    if rounds[arg1].field_256 != ledger[arg1][address(msg.sender)].field_0:
        revert with 0, 'Not eligible for claim'
    if ledger[arg1][msg.sender].field_512:
        revert with 0, 'Rewards claimed'
    mem[544] = rounds[arg1].field_0
    if rounds[arg1].field_256 > 2:
        revert with 0, 33
    mem[576] = rounds[arg1].field_256
    mem[608] = rounds[arg1].field_512
    mem[640] = rounds[arg1].field_768
    mem[672] = rounds[arg1].field_1024
    mem[704] = rounds[arg1].field_1280
    mem[736] = rounds[arg1].field_1536
    mem[768] = rounds[arg1].field_1792
    mem[800] = rounds[arg1].field_2048
    mem[832] = rounds[arg1].field_2304
    mem[864] = rounds[arg1].field_2560
    if ledger[arg1][address(msg.sender)].field_256 and rounds[arg1].field_1792 > -1 / ledger[arg1][address(msg.sender)].field_256:
        revert with 0, 17
    if not rounds[arg1].field_1536:
        revert with 0, 18
    ledger[arg1][msg.sender].field_512 = 1
    mem[932] = msg.sender
    mem[964] = ledger[arg1][address(msg.sender)].field_256 * rounds[arg1].field_1792 / rounds[arg1].field_1536
    mem[896] = 68
    mem[932 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[928 len 4] = transfer(address arg1, uint256 arg2)
    mem[996] = 32
    mem[1028] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(bullTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[1060 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ledger[arg1][address(msg.sender)].field_256 * rounds[arg1].field_1792 / rounds[arg1].field_1536, 0
    mem[1128] = 0
    call bullTokenAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, ledger[arg1][address(msg.sender)].field_256 * rounds[arg1].field_1792 / rounds[arg1].field_1536, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, ledger[arg1][address(msg.sender)].field_256 * rounds[arg1].field_1792 / rounds[arg1].field_1536, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ledger[arg1][address(msg.sender)].field_0:
                revert with memory
                  from 128
                   len ledger[arg1][address(msg.sender)].field_0
            revert with 0, 'SafeBEP20: low-level call failed'
        if ledger[arg1][address(msg.sender)].field_0:
            require ledger[arg1][address(msg.sender)].field_0 >= 32
            require ledger[arg1][address(msg.sender)].field_256 == bool(ledger[arg1][address(msg.sender)].field_256)
            if not ledger[arg1][address(msg.sender)].field_256:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[1092] == bool(mem[1092])
            if not mem[1092]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    emit Claim((ledger[arg1][address(msg.sender)].field_256 * rounds[arg1].field_1792 / rounds[arg1].field_1536), msg.sender, arg1);
}

function executeRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'operator: wut?'
    if paused:
        revert with 0, 'Pausable: paused'
    if not uint8(stor6.field_0):
        revert with 0, 'Round don't was locked.'
    if block.number < 1:
        revert with 0, 17
    if sha3(block.hash(block.number - 1), gas_remaining, arg1, block.timestamp) % 100 < 2:
        rounds[stor5].field_256 = 2
    else:
        if sha3(block.hash(block.number - 1), gas_remaining, arg1, block.timestamp) % 100 > 50:
            rounds[stor5].field_256 = 0
        else:
            rounds[stor5].field_256 = 1
    if rounds[stor5].field_256 >= 3:
        revert with 0, 33
    emit 0xe3289c92: block.timestamp, rounds[stor5].field_256, currentEpoch
    if rounds[stor5].field_1536:
        revert with 0, 'Rewards calculated'
    if rounds[stor5].field_1792:
        revert with 0, 'Rewards calculated'
    if rounds[stor5].field_256 > 2:
        revert with 0, 33
    if not rounds[stor5].field_256:
        if rounds[stor5].field_512 < rounds[stor5].field_1280:
            revert with 0, 17
        if rounds[stor5].field_512 - rounds[stor5].field_1280 and rewardRate > -1 / rounds[stor5].field_512 - rounds[stor5].field_1280:
            revert with 0, 17
        if rounds[stor5].field_512 < rounds[stor5].field_1280:
            revert with 0, 17
        if rounds[stor5].field_512 - rounds[stor5].field_1280 and treasuryRate > -1 / rounds[stor5].field_512 - rounds[stor5].field_1280:
            revert with 0, 17
        if (rounds[stor5].field_512 * treasuryRate) - (rounds[stor5].field_1280 * treasuryRate) / 100 > !rounds[stor5].field_1280:
            revert with 0, 17
        rounds[stor5].field_1536 = rounds[stor5].field_768
        rounds[stor5].field_1792 = (rounds[stor5].field_512 * rewardRate) - (rounds[stor5].field_1280 * rewardRate) / 100
        if treasuryAmount > !(((rounds[stor5].field_512 * treasuryRate) - (rounds[stor5].field_1280 * treasuryRate) / 100) + rounds[stor5].field_1280):
            revert with 0, 17
        treasuryAmount = treasuryAmount + ((rounds[stor5].field_512 * treasuryRate) - (rounds[stor5].field_1280 * treasuryRate) / 100) + rounds[stor5].field_1280
        emit RewardsCalculated(rounds[stor5].field_768, (rounds[stor5].field_512 * rewardRate) - (rounds[stor5].field_1280 * rewardRate) / 100, ((rounds[stor5].field_512 * treasuryRate) - (rounds[stor5].field_1280 * treasuryRate) / 100) + rounds[stor5].field_1280, currentEpoch);
    else:
        if rounds[stor5].field_256 > 2:
            revert with 0, 33
        if rounds[stor5].field_256 != 1:
            if rounds[stor5].field_512 and rewardRate > -1 / rounds[stor5].field_512:
                revert with 0, 17
            if rounds[stor5].field_512 and treasuryRate > -1 / rounds[stor5].field_512:
                revert with 0, 17
            rounds[stor5].field_1536 = rounds[stor5].field_1280
            rounds[stor5].field_1792 = rounds[stor5].field_512 * rewardRate / 100
            if treasuryAmount > !(rounds[stor5].field_512 * treasuryRate / 100):
                revert with 0, 17
            treasuryAmount += rounds[stor5].field_512 * treasuryRate / 100
            emit RewardsCalculated(rounds[stor5].field_1280, rounds[stor5].field_512 * rewardRate / 100, rounds[stor5].field_512 * treasuryRate / 100, currentEpoch);
        else:
            if rounds[stor5].field_512 < rounds[stor5].field_1280:
                revert with 0, 17
            if rounds[stor5].field_512 - rounds[stor5].field_1280 and rewardRate > -1 / rounds[stor5].field_512 - rounds[stor5].field_1280:
                revert with 0, 17
            if rounds[stor5].field_512 < rounds[stor5].field_1280:
                revert with 0, 17
            if rounds[stor5].field_512 - rounds[stor5].field_1280 and treasuryRate > -1 / rounds[stor5].field_512 - rounds[stor5].field_1280:
                revert with 0, 17
            if (rounds[stor5].field_512 * treasuryRate) - (rounds[stor5].field_1280 * treasuryRate) / 100 > !rounds[stor5].field_1280:
                revert with 0, 17
            rounds[stor5].field_1536 = rounds[stor5].field_1024
            rounds[stor5].field_1792 = (rounds[stor5].field_512 * rewardRate) - (rounds[stor5].field_1280 * rewardRate) / 100
            if treasuryAmount > !(((rounds[stor5].field_512 * treasuryRate) - (rounds[stor5].field_1280 * treasuryRate) / 100) + rounds[stor5].field_1280):
                revert with 0, 17
            treasuryAmount = treasuryAmount + ((rounds[stor5].field_512 * treasuryRate) - (rounds[stor5].field_1280 * treasuryRate) / 100) + rounds[stor5].field_1280
            emit RewardsCalculated(rounds[stor5].field_1024, (rounds[stor5].field_512 * rewardRate) - (rounds[stor5].field_1280 * rewardRate) / 100, ((rounds[stor5].field_512 * treasuryRate) - (rounds[stor5].field_1280 * treasuryRate) / 100) + rounds[stor5].field_1280, currentEpoch);
    if 1 > !currentEpoch:
        revert with 0, 17
    currentEpoch++
    rounds[stor5 + 1].field_0 = currentEpoch + 1
    rounds[stor5 + 1].field_512 = 0
    uint32(stor6.field_8) = uint32(block.timestamp)
    uint32(stor6.field_40) = 0
    emit StartRound(block.timestamp, currentEpoch + 1);
    uint8(stor6.field_0) = 0
}



}
