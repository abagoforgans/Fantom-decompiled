contract main {




// =====================  Runtime code  =====================


#
#  - sub_210ff289(?)
#  - withdraw(uint256 arg1)
#  - setStrategy(address arg1)
#  - doHardWork()
#  - rebalance()
#  - deposit(uint256 arg1)
#  - sub_df4ceecf(?)
#
const decimals = 18


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
mapping of uint256 sub_238ce373;
mapping of address nextImplementation;
mapping of uint8 stor154;
array of address rewardTokens;
mapping of uint256 sub_7b0e0ee6;
mapping of uint256 periodFinishForToken;
mapping of uint256 rewardRateForToken;
mapping of uint256 lastUpdateTimeForToken;
mapping of uint256 rewardPerTokenStoredForToken;
mapping of uint256 userRewardPerTokenPaidForToken;
mapping of uint256 rewardsForToken;
mapping of uint256 sub_655d8dec;
mapping of uint256 stor2381788092646655208373778782251380;
mapping of address stor9616880082707858260027875428568578623369070;
mapping of uint8 stor556190031308152106034779845961335854678747214708;
mapping of uint256 stor630251853095082260858845431059967476632555449712;
mapping of uint256 stor643068976840630934109624878039219406575180843664334772268914;
address storA7EC;
uint256 storA7EC;
array of address stor84882613393583925725825227175822068977385904327970485092188354384632214438729;

function sub_010ef87a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor154[arg1])
}

function nextImplementation() payable {
    return stor102[('name', 'stor6E65', 9616880082707858260027875428568578623369070)]
}

function rewardRateForToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardRateForToken[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function sub_238ce373(?) payable {
    return sub_238ce373['depositMaturityTime']
}

function sub_39e20ba2(?) payable {
    return bool(stor103[('name', 'stor616C', 556190031308152106034779845961335854678747214708)])
}

function sub_3e9579fc(?) payable {
    return sub_238ce373['nextExitFee']
}

function periodFinishForToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFinishForToken[arg1]
}

function underlyingUnit() payable {
    return stor101[('name', 'stor756E', 2381788092646655208373778782251380)]
}

function futureStrategy() payable {
    return nextImplementation['futureStrategy']
}

function exitFee() payable {
    return sub_238ce373['exitFee']
}

function sub_655d8dec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_655d8dec[arg1]
}

function underlying() payable {
    return nextImplementation['underlying']
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7b0e0ee6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7b0e0ee6[arg1]
}

function rewardTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardTokens.length
    return rewardTokens[arg1]
}

function nextImplementationTimestamp() payable {
    return sub_238ce373['nextImplementationTimestamp']
}

function lastUpdateTimeForToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastUpdateTimeForToken[arg1]
}

function strategy() payable {
    return nextImplementation['strategy']
}

function strategyUpdateTime() payable {
    return sub_238ce373['strategyUpdateTime']
}

function fractionToInvestNumerator() payable {
    return stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)]
}

function userRewardPerTokenPaidForToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userRewardPerTokenPaidForToken[arg1][arg2]
}

function rewardsForToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return rewardsForToken[arg1][arg2]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function timelockDelay() payable {
    return sub_238ce373['timelockDelay']
}

function rewardPerTokenStoredForToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardPerTokenStoredForToken[arg1]
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < periodFinishForToken[address(arg1)]:
        return block.timestamp
    return periodFinishForToken[address(arg1)]
}

function sub_415be3b5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 155
        if rewardTokens[idx] == address(arg1):
            return idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return -1
}

function underlyingBalanceInVault() payable {
    require ext_code.size(nextImplementation['underlying'])
    staticcall nextImplementation['underlying'].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function governance() payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function controller() payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function canUpdateStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not nextImplementation['strategy']:
        return not nextImplementation['strategy']
    if arg1 != nextImplementation['futureStrategy']:
        return (arg1 == nextImplementation['futureStrategy'])
    if block.timestamp <= sub_238ce373['strategyUpdateTime']:
        return (block.timestamp > sub_238ce373['strategyUpdateTime'])
    return (sub_238ce373['strategyUpdateTime'] > 0)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function __Governable_init_(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        uint256(storA7EC) = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            uint256(storA7EC) = arg1
        else:
            uint16(stor0.field_0) = 257
            uint256(storA7EC) = arg1
            uint8(stor0.field_8) = 0
}

function sub_4c90418f(?) payable {
    require calldata.size - 4 >= 32
    if not sub_238ce373['exitFee']:
        return not bool(sub_238ce373['exitFee'])
    if arg1 != sub_238ce373['nextExitFee']:
        return (arg1 == sub_238ce373['nextExitFee'])
    if block.timestamp <= stor101[('name', 'stor6E65', 630251853095082260858845431059967476632555449712)]:
        return (block.timestamp > stor101[('name', 'stor6E65', 630251853095082260858845431059967476632555449712)])
    return (stor101[('name', 'stor6E65', 630251853095082260858845431059967476632555449712)] > 0)
}

function sub_92a73352(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor154[address(arg1)] = 1
}

function removeRewardDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor154[address(arg1)] = 0
}

function sub_89565762(?) payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    sub_238ce373['nextExitFee'] = 0
    stor101[('name', 'stor6E65', 630251853095082260858845431059967476632555449712)] = 0
}

function finalizeUpgrade() payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor102[('name', 'stor6E65', 9616880082707858260027875428568578623369070)] = 0
    sub_238ce373['nextImplementationTimestamp'] = 0
}

function sub_6ef345c9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor103[('name', 'stor616C', 556190031308152106034779845961335854678747214708)] = uint8(bool(arg1))
}

function shouldUpgrade() payable {
    if not sub_238ce373['nextImplementationTimestamp']:
        return bool(sub_238ce373['nextImplementationTimestamp']), 
               stor102[('name', 'stor6E65', 9616880082707858260027875428568578623369070)]
    if block.timestamp <= sub_238ce373['nextImplementationTimestamp']:
        return block.timestamp > sub_238ce373['nextImplementationTimestamp'], 
               stor102[('name', 'stor6E65', 9616880082707858260027875428568578623369070)]
    return not not stor102[('name', 'stor6E65', 9616880082707858260027875428568578623369070)], 
           stor102[('name', 'stor6E65', 9616880082707858260027875428568578623369070)]
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not arg1:
        revert with 0, 'Governable: New storage shouldn't be empty'
    uint256(storA7EC) = arg1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_8f621706(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if arg1 > 1000:
        revert with 0, 'Vault: Denominator must be greater than or equal to the numerator'
    stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)] = arg1
}

function sub_674b4c5d(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    sub_238ce373['nextExitFee'] = arg1
    if block.timestamp > !sub_238ce373['timelockDelay']:
        revert with 0, 17
    stor101[('name', 'stor6E65', 630251853095082260858845431059967476632555449712)] = block.timestamp + sub_238ce373['timelockDelay']
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function scheduleUpgrade(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor102[('name', 'stor6E65', 9616880082707858260027875428568578623369070)] = arg1
    if block.timestamp > !sub_238ce373['timelockDelay']:
        revert with 0, 17
    sub_238ce373['nextImplementationTimestamp'] = block.timestamp + sub_238ce373['timelockDelay']
    emit UpgradeAnnounced(arg1);
}

function __Controllable_init(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        uint256(storA7EC) = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            uint256(storA7EC) = arg1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                uint256(storA7EC) = arg1
            else:
                uint16(stor0.field_0) = 257
                uint256(storA7EC) = arg1
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function finalizeStrategyUpdate() payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC))
        staticcall address(storA7EC).isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Controllable: The caller must be controller or governance'
    sub_238ce373['strategyUpdateTime'] = 0
    nextImplementation['futureStrategy'] = 0
}

function sub_84a77769(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 155
        if rewardTokens[idx] != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 'Vault: Reward token does not exist'
        if block.timestamp <= periodFinishForToken[address(arg1)]:
            revert with 0, 'Vault: Reward period has not ended for the token'
        if arg2 <= 0:
            revert with 0, 'Vault: Duration cannot be 0'
        sub_7b0e0ee6[address(arg1)] = arg2
    revert with 0, 'Vault: Reward token does not exist'
}

function addRewardToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 155
        if rewardTokens[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx != -1:
            revert with 0, 'Vault: Reward token already exists'
        if arg2 <= 0:
            revert with 0, 'Vault: Duration cannot be 0'
        rewardTokens.length++
        storBBA9[stor155.length] = arg1
        sub_7b0e0ee6[address(arg1)] = arg2
    if arg2 <= 0:
        revert with 0, 'Vault: Duration cannot be 0'
    rewardTokens.length++
    storBBA9[stor155.length] = arg1
    sub_7b0e0ee6[address(arg1)] = arg2
}

function withdrawAll() payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC))
        staticcall address(storA7EC).isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Controllable: The caller must be controller or governance'
    if not nextImplementation['strategy']:
        revert with 0, 'Vault: Strategy must be defined'
    require ext_code.size(nextImplementation['strategy'])
    call nextImplementation['strategy'].withdrawAllToVault() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function announceStrategyUpdate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC))
        staticcall address(storA7EC).isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Controllable: The caller must be controller or governance'
    if block.timestamp > !sub_238ce373['timelockDelay']:
        revert with 0, 17
    sub_238ce373['strategyUpdateTime'] = block.timestamp + sub_238ce373['timelockDelay']
    nextImplementation['futureStrategy'] = arg1
    emit StrategyAnnounced(address(arg1), block.timestamp + sub_238ce373['timelockDelay']);
}

function underlyingBalanceWithInvestment() payable {
    if not nextImplementation['strategy']:
        require ext_code.size(nextImplementation['underlying'])
        staticcall nextImplementation['underlying'].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    require ext_code.size(nextImplementation['strategy'])
    staticcall nextImplementation['strategy'].investedUnderlyingBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 414] = this.address
    require ext_code.size(nextImplementation['underlying'])
    staticcall nextImplementation['underlying'].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 410] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 410] = 2 * ext_call.return_data[0]
    return memory
      from (2 * ceil32(return_data.size)) + 410
       len ceil32(return_data.size) + 32
}

function removeRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 155
        if rewardTokens[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 'Vault: Reward token does not exist'
        if block.timestamp <= periodFinishForToken[address(arg1)]:
            revert with 0, 'Vault: Reward period has not ended for the token'
        if 1 >= rewardTokens.length:
            revert with 0, 'Vault: Cannot remove the last reward token from the vault'
        if rewardTokens.length < 1:
            revert with 0, 17
        if rewardTokens.length - 1 >= rewardTokens.length:
            revert with 0, 50
        if idx >= rewardTokens.length:
            revert with 0, 50
        rewardTokens[idx] = rewardTokens[rewardTokens.length]
        if not rewardTokens.length:
            revert with 0, 49
        rewardTokens[rewardTokens.length] = 0
        rewardTokens.length--
    revert with 0, 'Vault: Reward token does not exist'
}

function getPricePerFullShare() payable {
    if not totalSupply:
        return stor101[('name', 'stor756E', 2381788092646655208373778782251380)]
    if not nextImplementation['strategy']:
        require ext_code.size(nextImplementation['underlying'])
        staticcall nextImplementation['underlying'].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor101[('name', 'stor756E', 2381788092646655208373778782251380)] and ext_call.return_data[0] > -1 / stor101[('name', 'stor756E', 2381788092646655208373778782251380)]:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        return (stor101[('name', 'stor756E', 2381788092646655208373778782251380)] * ext_call.return_data[0] / totalSupply)
    require ext_code.size(nextImplementation['strategy'])
    staticcall nextImplementation['strategy'].investedUnderlyingBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nextImplementation['underlying'])
    staticcall nextImplementation['underlying'].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if stor101[('name', 'stor756E', 2381788092646655208373778782251380)] and 2 * ext_call.return_data[0] > -1 / stor101[('name', 'stor756E', 2381788092646655208373778782251380)]:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return ((ext_call.return_data[0] * stor101[('name', 'stor756E', 2381788092646655208373778782251380)]) + (ext_call.return_data[0] * stor101[('name', 'stor756E', 2381788092646655208373778782251380)]) / totalSupply)
}

function underlyingBalanceWithInvestmentForHolder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return 0
    if not nextImplementation['strategy']:
        require ext_code.size(nextImplementation['underlying'])
        staticcall nextImplementation['underlying'].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and balanceOf[address(arg1)] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        return (ext_call.return_data[0] * balanceOf[address(arg1)] / totalSupply)
    require ext_code.size(nextImplementation['strategy'])
    staticcall nextImplementation['strategy'].investedUnderlyingBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 414] = this.address
    require ext_code.size(nextImplementation['underlying'])
    staticcall nextImplementation['underlying'].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 410] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if uint255(ext_call.return_data[0]) and balanceOf[address(arg1)] > -1 / 2 * ext_call.return_data[0]:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    mem[(2 * ceil32(return_data.size)) + 410] = (ext_call.return_data[0] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply
    return memory
      from (2 * ceil32(return_data.size)) + 410
       len ceil32(return_data.size) + 32
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not msg.sender:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    else:
        if not arg1:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        else:
            require ext_code.size(address(storA7EC))
            staticcall address(storA7EC).0xf77c4791 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xfd360ef with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if sub_655d8dec[address(msg.sender)] > !sub_238ce373['depositMaturityTime']:
                    revert with 0, 17
                if block.timestamp < sub_655d8dec[address(msg.sender)] + sub_238ce373['depositMaturityTime']:
                    revert with 0, 'Vault: Cannot transfer tokens have not matured'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: transfer amount exceeds balance'
    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 51))), ('param', 'arg2'))
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function rewardPerToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return rewardPerTokenStoredForToken[address(arg1)]
    if block.timestamp < periodFinishForToken[address(arg1)]:
        if block.timestamp < lastUpdateTimeForToken[address(arg1)]:
            revert with 0, 17
        if block.timestamp - lastUpdateTimeForToken[address(arg1)] and rewardRateForToken[address(arg1)] > -1 / block.timestamp - lastUpdateTimeForToken[address(arg1)]:
            revert with 0, 17
        if (block.timestamp * rewardRateForToken[address(arg1)]) - (lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) and 10^18 > -1 / (block.timestamp * rewardRateForToken[address(arg1)]) - (lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]):
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if rewardPerTokenStoredForToken[address(arg1)] > !((10^18 * block.timestamp * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply):
            revert with 0, 17
        return (rewardPerTokenStoredForToken[address(arg1)] + ((10^18 * block.timestamp * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply))
    if periodFinishForToken[address(arg1)] < lastUpdateTimeForToken[address(arg1)]:
        revert with 0, 17
    if periodFinishForToken[address(arg1)] - lastUpdateTimeForToken[address(arg1)] and rewardRateForToken[address(arg1)] > -1 / periodFinishForToken[address(arg1)] - lastUpdateTimeForToken[address(arg1)]:
        revert with 0, 17
    if (periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) and 10^18 > -1 / (periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]):
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if rewardPerTokenStoredForToken[address(arg1)] > !((10^18 * periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply):
        revert with 0, 17
    return (rewardPerTokenStoredForToken[address(arg1)] + ((10^18 * periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply))
}

function setExitFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not sub_238ce373['exitFee']:
        sub_238ce373['exitFee'] = arg1
        mem[ceil32(return_data.size) + 409] = msg.sender
        require ext_code.size(address(storA7EC))
        staticcall address(storA7EC).isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 405] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            sub_238ce373['nextExitFee'] = 0
            stor101[('name', 'stor6E65', 630251853095082260858845431059967476632555449712)] = 0
            emit 0xba2ba50a: arg1, sub_238ce373['exitFee']
        mem[(2 * ceil32(return_data.size)) + 405] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 409] = 32
        mem[(2 * ceil32(return_data.size)) + 441] = 26
        mem[(2 * ceil32(return_data.size)) + 473] = 'Governable: Not governance'
        revert with memory
          from (2 * ceil32(return_data.size)) + 405
           len ceil32(return_data.size) + 100
    if arg1 != sub_238ce373['nextExitFee']:
        revert with 0, 'Vault: Unable to update the exit fee'
    if block.timestamp <= stor101[('name', 'stor6E65', 630251853095082260858845431059967476632555449712)]:
        revert with 0, 'Vault: Unable to update the exit fee'
    if stor101[('name', 'stor6E65', 630251853095082260858845431059967476632555449712)] <= 0:
        revert with 0, 'Vault: Unable to update the exit fee'
    sub_238ce373['exitFee'] = arg1
    mem[ceil32(return_data.size) + 748] = msg.sender
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 744] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        sub_238ce373['nextExitFee'] = 0
        stor101[('name', 'stor6E65', 630251853095082260858845431059967476632555449712)] = 0
        emit 0xba2ba50a: arg1, sub_238ce373['exitFee']
    mem[(2 * ceil32(return_data.size)) + 744] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 748] = 32
    mem[(2 * ceil32(return_data.size)) + 780] = 26
    mem[(2 * ceil32(return_data.size)) + 812] = 'Governable: Not governance'
    revert with memory
      from (2 * ceil32(return_data.size)) + 744
       len ceil32(return_data.size) + 100
}

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[(uint255(stor54.length) * 0.5) + ceil32(uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[stor54.length.field_1 + ceil32(stor54.length.field_1) + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[(uint255(stor55.length) * 0.5) + ceil32(uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[stor55.length.field_1 + ceil32(stor55.length.field_1) + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg1:
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if not arg2:
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            require ext_code.size(address(storA7EC))
            staticcall address(storA7EC).0xf77c4791 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xfd360ef with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if sub_655d8dec[address(arg1)] > !sub_238ce373['depositMaturityTime']:
                    revert with 0, 17
                if block.timestamp < sub_655d8dec[address(arg1)] + sub_238ce373['depositMaturityTime']:
                    revert with 0, 'Vault: Cannot transfer tokens have not matured'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function notifyRewardAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    idx = 0
    while idx < rewardTokens.length:
        if totalSupply:
            if block.timestamp < periodFinishForToken[stor155[idx]]:
                if block.timestamp < lastUpdateTimeForToken[stor155[idx]]:
                    revert with 0, 17
                if block.timestamp - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / block.timestamp - lastUpdateTimeForToken[stor155[idx]]:
                    revert with 0, 17
                if (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                    revert with 0, 17
                rewardPerTokenStoredForToken[stor155[idx]] += (10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply
            else:
                if periodFinishForToken[stor155[idx]] < lastUpdateTimeForToken[stor155[idx]]:
                    revert with 0, 17
                if periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]]:
                    revert with 0, 17
                if (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                    revert with 0, 17
                rewardPerTokenStoredForToken[stor155[idx]] += (10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply
        mem[0] = rewardTokens[idx]
        mem[32] = 159
        if block.timestamp < periodFinishForToken[stor155[idx]]:
            lastUpdateTimeForToken[stor155[idx]] = block.timestamp
        else:
            lastUpdateTimeForToken[stor155[idx]] = periodFinishForToken[stor155[idx]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if not stor154[msg.sender]:
            revert with 0, 'Vault: Caller not governance or reward distribution'
    if arg2 >= 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 'Vault: Notified amount invokes an overflow error'
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 155
        if rewardTokens[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 'rewardTokenIndex not found'
        if block.timestamp >= periodFinishForToken[address(arg1)]:
            if not sub_7b0e0ee6[address(arg1)]:
                revert with 0, 18
            rewardRateForToken[address(arg1)] = arg2 / sub_7b0e0ee6[address(arg1)]
        else:
            if periodFinishForToken[address(arg1)] < block.timestamp:
                revert with 0, 17
            if periodFinishForToken[address(arg1)] - block.timestamp and rewardRateForToken[address(arg1)] > -1 / periodFinishForToken[address(arg1)] - block.timestamp:
                revert with 0, 17
            if arg2 > !((periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (block.timestamp * rewardRateForToken[address(arg1)])):
                revert with 0, 17
            if not sub_7b0e0ee6[address(arg1)]:
                revert with 0, 18
            rewardRateForToken[address(arg1)] = arg2 + (periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (block.timestamp * rewardRateForToken[address(arg1)]) / sub_7b0e0ee6[address(arg1)]
        lastUpdateTimeForToken[address(arg1)] = block.timestamp
        if block.timestamp > !sub_7b0e0ee6[address(arg1)]:
            revert with 0, 17
        periodFinishForToken[address(arg1)] = block.timestamp + sub_7b0e0ee6[address(arg1)]
    revert with 0, 'rewardTokenIndex not found'
}

function earned(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not totalSupply:
        if rewardPerTokenStoredForToken[address(arg1)] < userRewardPerTokenPaidForToken[address(arg1)][address(arg2)]:
            revert with 0, 17
        if balanceOf[address(arg2)] and rewardPerTokenStoredForToken[address(arg1)] - userRewardPerTokenPaidForToken[address(arg1)][address(arg2)] > -1 / balanceOf[address(arg2)]:
            revert with 0, 17
        if (rewardPerTokenStoredForToken[address(arg1)] * balanceOf[address(arg2)]) - (userRewardPerTokenPaidForToken[address(arg1)][address(arg2)] * balanceOf[address(arg2)]) / 10^18 > !rewardsForToken[address(arg1)][address(arg2)]:
            revert with 0, 17
        return (((rewardPerTokenStoredForToken[address(arg1)] * balanceOf[address(arg2)]) - (userRewardPerTokenPaidForToken[address(arg1)][address(arg2)] * balanceOf[address(arg2)]) / 10^18) + rewardsForToken[address(arg1)][address(arg2)])
    if block.timestamp < periodFinishForToken[address(arg1)]:
        if block.timestamp < lastUpdateTimeForToken[address(arg1)]:
            revert with 0, 17
        if block.timestamp - lastUpdateTimeForToken[address(arg1)] and rewardRateForToken[address(arg1)] > -1 / block.timestamp - lastUpdateTimeForToken[address(arg1)]:
            revert with 0, 17
        if (block.timestamp * rewardRateForToken[address(arg1)]) - (lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) and 10^18 > -1 / (block.timestamp * rewardRateForToken[address(arg1)]) - (lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]):
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if rewardPerTokenStoredForToken[address(arg1)] > !((10^18 * block.timestamp * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply):
            revert with 0, 17
        if rewardPerTokenStoredForToken[address(arg1)] + ((10^18 * block.timestamp * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply) < userRewardPerTokenPaidForToken[address(arg1)][address(arg2)]:
            revert with 0, 17
        if balanceOf[address(arg2)] and rewardPerTokenStoredForToken[address(arg1)] + ((10^18 * block.timestamp * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply) - userRewardPerTokenPaidForToken[address(arg1)][address(arg2)] > -1 / balanceOf[address(arg2)]:
            revert with 0, 17
        if (rewardPerTokenStoredForToken[address(arg1)] * balanceOf[address(arg2)]) + ((10^18 * block.timestamp * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply * balanceOf[address(arg2)]) - (userRewardPerTokenPaidForToken[address(arg1)][address(arg2)] * balanceOf[address(arg2)]) / 10^18 > !rewardsForToken[address(arg1)][address(arg2)]:
            revert with 0, 17
        return (((rewardPerTokenStoredForToken[address(arg1)] * balanceOf[address(arg2)]) + ((10^18 * block.timestamp * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply * balanceOf[address(arg2)]) - (userRewardPerTokenPaidForToken[address(arg1)][address(arg2)] * balanceOf[address(arg2)]) / 10^18) + rewardsForToken[address(arg1)][address(arg2)])
    if periodFinishForToken[address(arg1)] < lastUpdateTimeForToken[address(arg1)]:
        revert with 0, 17
    if periodFinishForToken[address(arg1)] - lastUpdateTimeForToken[address(arg1)] and rewardRateForToken[address(arg1)] > -1 / periodFinishForToken[address(arg1)] - lastUpdateTimeForToken[address(arg1)]:
        revert with 0, 17
    if (periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) and 10^18 > -1 / (periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]):
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if rewardPerTokenStoredForToken[address(arg1)] > !((10^18 * periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply):
        revert with 0, 17
    if rewardPerTokenStoredForToken[address(arg1)] + ((10^18 * periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply) < userRewardPerTokenPaidForToken[address(arg1)][address(arg2)]:
        revert with 0, 17
    if balanceOf[address(arg2)] and rewardPerTokenStoredForToken[address(arg1)] + ((10^18 * periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply) - userRewardPerTokenPaidForToken[address(arg1)][address(arg2)] > -1 / balanceOf[address(arg2)]:
        revert with 0, 17
    if (rewardPerTokenStoredForToken[address(arg1)] * balanceOf[address(arg2)]) + ((10^18 * periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply * balanceOf[address(arg2)]) - (userRewardPerTokenPaidForToken[address(arg1)][address(arg2)] * balanceOf[address(arg2)]) / 10^18 > !rewardsForToken[address(arg1)][address(arg2)]:
        revert with 0, 17
    return (((rewardPerTokenStoredForToken[address(arg1)] * balanceOf[address(arg2)]) + ((10^18 * periodFinishForToken[address(arg1)] * rewardRateForToken[address(arg1)]) - (10^18 * lastUpdateTimeForToken[address(arg1)] * rewardRateForToken[address(arg1)]) / totalSupply * balanceOf[address(arg2)]) - (userRewardPerTokenPaidForToken[address(arg1)][address(arg2)] * balanceOf[address(arg2)]) / 10^18) + rewardsForToken[address(arg1)][address(arg2)])
}

function availableToInvestOut() payable {
    if not nextImplementation['strategy']:
        require ext_code.size(nextImplementation['underlying'])
        staticcall nextImplementation['underlying'].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(nextImplementation['strategy'])
        staticcall nextImplementation['strategy'].investedUnderlyingBalance() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 531] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0] * stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)] / 10000:
            mem[(2 * ceil32(return_data.size)) + 531] = 0
            return memory
              from (2 * ceil32(return_data.size)) + 531
               len ceil32(return_data.size) + 32
        if ext_call.return_data[0] * stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)] / 10000 < ext_call.return_data[0]:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 641] = this.address
        require ext_code.size(nextImplementation['underlying'])
        staticcall nextImplementation['underlying'].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 637] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)] / 10000) - ext_call.return_data[0] <= ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 637] = (ext_call.return_data[0] * stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)] / 10000) - ext_call.return_data[0]
            return memory
              from (4 * ceil32(return_data.size)) + 637
               len (5 * ceil32(return_data.size)) + 32
        mem[(4 * ceil32(return_data.size)) + 747] = this.address
        require ext_code.size(nextImplementation['underlying'])
        staticcall nextImplementation['underlying'].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 775 len 9 * ceil32(return_data.size)]
    require ext_code.size(nextImplementation['strategy'])
    staticcall nextImplementation['strategy'].investedUnderlyingBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nextImplementation['underlying'])
    staticcall nextImplementation['underlying'].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if uint255(ext_call.return_data[0]) and stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)] > -1 / 2 * ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(nextImplementation['strategy'])
    staticcall nextImplementation['strategy'].investedUnderlyingBalance() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 635] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= (ext_call.return_data[0] * stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)]) + (ext_call.return_data[0] * stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)]) / 10000:
        mem[(4 * ceil32(return_data.size)) + 635] = 0
        return memory
          from (4 * ceil32(return_data.size)) + 635
           len (5 * ceil32(return_data.size)) + 32
    if (ext_call.return_data[0] * stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)]) + (ext_call.return_data[0] * stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)]) / 10000 < ext_call.return_data[0]:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 745] = this.address
    require ext_code.size(nextImplementation['underlying'])
    staticcall nextImplementation['underlying'].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ((ext_call.return_data[0] * stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)]) + (ext_call.return_data[0] * stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)]) / 10000) - ext_call.return_data[0] <= ext_call.return_data[0]:
        return ((ext_call.return_data[0] * stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)]) + (ext_call.return_data[0] * stor101[('name', 'stor6672', 643068976840630934109624878039219406575180843664334772268914)]) / 10000) - ext_call.return_data[0], 
               mem[(6 * ceil32(return_data.size)) + 773 len 9 * ceil32(return_data.size)]
    require ext_code.size(nextImplementation['underlying'])
    staticcall nextImplementation['underlying'].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getReward() payable {
    mem[64] = 96
    if tx.origin == msg.sender:
        idx = 0
        while idx < rewardTokens.length:
            if totalSupply:
                if block.timestamp < periodFinishForToken[stor155[idx]]:
                    if block.timestamp < lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if block.timestamp - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / block.timestamp - lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                        revert with 0, 17
                    rewardPerTokenStoredForToken[stor155[idx]] += (10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply
                else:
                    if periodFinishForToken[stor155[idx]] < lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                        revert with 0, 17
                    rewardPerTokenStoredForToken[stor155[idx]] += (10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply
            mem[0] = rewardTokens[idx]
            mem[32] = 159
            if block.timestamp < periodFinishForToken[stor155[idx]]:
                lastUpdateTimeForToken[stor155[idx]] = block.timestamp
            else:
                lastUpdateTimeForToken[stor155[idx]] = periodFinishForToken[stor155[idx]]
            if msg.sender:
                if not totalSupply:
                    if rewardPerTokenStoredForToken[stor155[idx]] < userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)]:
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] and rewardPerTokenStoredForToken[stor155[idx]] - userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewardsForToken[stor155[idx]][address(msg.sender)]:
                        revert with 0, 17
                    rewardsForToken[stor155[idx]][address(msg.sender)] += (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if block.timestamp < periodFinishForToken[stor155[idx]]:
                        if block.timestamp < lastUpdateTimeForToken[stor155[idx]]:
                            revert with 0, 17
                        if block.timestamp - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / block.timestamp - lastUpdateTimeForToken[stor155[idx]]:
                            revert with 0, 17
                        if (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                            revert with 0, 17
                        if rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) < userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) - userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewardsForToken[stor155[idx]][address(msg.sender)]:
                            revert with 0, 17
                        rewardsForToken[stor155[idx]][address(msg.sender)] += (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if periodFinishForToken[stor155[idx]] < lastUpdateTimeForToken[stor155[idx]]:
                            revert with 0, 17
                        if periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]]:
                            revert with 0, 17
                        if (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                            revert with 0, 17
                        if rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) < userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) - userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewardsForToken[stor155[idx]][address(msg.sender)]:
                            revert with 0, 17
                        rewardsForToken[stor155[idx]][address(msg.sender)] += (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                mem[0] = msg.sender
                mem[32] = sha3(rewardTokens[idx], 161)
                userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] = rewardPerTokenStoredForToken[stor155[idx]]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < rewardTokens.length:
            if not totalSupply:
                if rewardPerTokenStoredForToken[stor155[idx]] < userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)]:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 51
                if balanceOf[address(msg.sender)] and rewardPerTokenStoredForToken[stor155[idx]] - userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewardsForToken[stor155[idx]][address(msg.sender)]:
                    revert with 0, 17
                if ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]:
                    mem[0] = msg.sender
                    mem[32] = sha3(rewardTokens[idx], 162)
                    rewardsForToken[stor155[idx]][msg.sender] = 0
                    _1297 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                    _1300 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1300 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1300 + 36 len 28]
                    mem[64] = _1297 + 164
                    mem[_1297 + 100] = 32
                    mem[_1297 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(rewardTokens[idx]):
                        revert with 0, 'Address: call to non-contract'
                    _1317 = mem[_1300]
                    s = 0
                    while s < _1317:
                        mem[s + _1297 + 164] = mem[s + _1300 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1317) > _1317:
                        mem[_1317 + _1297 + 164] = 0
                    call rewardTokens[idx].mem[_1297 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1297 + 168 len _1317 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1297 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1297 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1297 + 232] = mem[idx + _1297 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1297 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1297 + 164] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                    else:
                        mem[64] = _1297 + ceil32(return_data.size) + 165
                        mem[_1297 + 164] = return_data.size
                        mem[_1297 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1297 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1297 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1297 + ceil32(return_data.size) + 233] = mem[idx + _1297 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1297 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1297 + 196] == bool(mem[_1297 + 196])
                            if not mem[_1297 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1297 + ceil32(return_data.size) + 165] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                    emit RewardPaid((((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]), msg.sender, rewardTokens[idx]);
            else:
                if block.timestamp < periodFinishForToken[stor155[idx]]:
                    if block.timestamp < lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if block.timestamp - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / block.timestamp - lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                        revert with 0, 17
                    if rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) < userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)]:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 51
                    if balanceOf[address(msg.sender)] and rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) - userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewardsForToken[stor155[idx]][address(msg.sender)]:
                        revert with 0, 17
                    if ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]:
                        mem[0] = msg.sender
                        mem[32] = sha3(rewardTokens[idx], 162)
                        rewardsForToken[stor155[idx]][msg.sender] = 0
                        _1447 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                        _1465 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1465 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1465 + 36 len 28]
                        mem[64] = _1447 + 164
                        mem[_1447 + 100] = 32
                        mem[_1447 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(rewardTokens[idx]):
                            revert with 0, 'Address: call to non-contract'
                        _1497 = mem[_1465]
                        s = 0
                        while s < _1497:
                            mem[s + _1447 + 164] = mem[s + _1465 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1497) > _1497:
                            mem[_1497 + _1447 + 164] = 0
                        call rewardTokens[idx].mem[_1447 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1447 + 168 len _1497 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1447 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1447 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1447 + 232] = mem[idx + _1447 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1447 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1447 + 164] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                        else:
                            mem[64] = _1447 + ceil32(return_data.size) + 165
                            mem[_1447 + 164] = return_data.size
                            mem[_1447 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1447 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1447 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1447 + ceil32(return_data.size) + 233] = mem[idx + _1447 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1447 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1447 + 196] == bool(mem[_1447 + 196])
                                if not mem[_1447 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1447 + ceil32(return_data.size) + 165] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                        emit RewardPaid((((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]), msg.sender, rewardTokens[idx]);
                else:
                    if periodFinishForToken[stor155[idx]] < lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                        revert with 0, 17
                    if rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) < userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)]:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 51
                    if balanceOf[address(msg.sender)] and rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) - userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewardsForToken[stor155[idx]][address(msg.sender)]:
                        revert with 0, 17
                    if ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]:
                        mem[0] = msg.sender
                        mem[32] = sha3(rewardTokens[idx], 162)
                        rewardsForToken[stor155[idx]][msg.sender] = 0
                        _1467 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                        _1480 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1480 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1480 + 36 len 28]
                        mem[64] = _1467 + 164
                        mem[_1467 + 100] = 32
                        mem[_1467 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(rewardTokens[idx]):
                            revert with 0, 'Address: call to non-contract'
                        _1507 = mem[_1480]
                        s = 0
                        while s < _1507:
                            mem[s + _1467 + 164] = mem[s + _1480 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1507) > _1507:
                            mem[_1507 + _1467 + 164] = 0
                        call rewardTokens[idx].mem[_1467 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1467 + 168 len _1507 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1467 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1467 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1467 + 232] = mem[idx + _1467 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1467 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1467 + 164] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                        else:
                            mem[64] = _1467 + ceil32(return_data.size) + 165
                            mem[_1467 + 164] = return_data.size
                            mem[_1467 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1467 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1467 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1467 + ceil32(return_data.size) + 233] = mem[idx + _1467 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1467 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1467 + 196] == bool(mem[_1467 + 196])
                                if not mem[_1467 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1467 + ceil32(return_data.size) + 165] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                        emit RewardPaid((((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]), msg.sender, rewardTokens[idx]);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        require ext_code.size(address(storA7EC))
        staticcall address(storA7EC).0xf77c4791 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x9b19251a with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Vault: This smart contract is not whitelisted'
        idx = 0
        while idx < rewardTokens.length:
            if totalSupply:
                if block.timestamp < periodFinishForToken[stor155[idx]]:
                    if block.timestamp < lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if block.timestamp - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / block.timestamp - lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                        revert with 0, 17
                    rewardPerTokenStoredForToken[stor155[idx]] += (10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply
                else:
                    if periodFinishForToken[stor155[idx]] < lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                        revert with 0, 17
                    rewardPerTokenStoredForToken[stor155[idx]] += (10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply
            mem[0] = rewardTokens[idx]
            mem[32] = 159
            if block.timestamp < periodFinishForToken[stor155[idx]]:
                lastUpdateTimeForToken[stor155[idx]] = block.timestamp
            else:
                lastUpdateTimeForToken[stor155[idx]] = periodFinishForToken[stor155[idx]]
            if msg.sender:
                if not totalSupply:
                    if rewardPerTokenStoredForToken[stor155[idx]] < userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)]:
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] and rewardPerTokenStoredForToken[stor155[idx]] - userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewardsForToken[stor155[idx]][address(msg.sender)]:
                        revert with 0, 17
                    rewardsForToken[stor155[idx]][address(msg.sender)] += (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if block.timestamp < periodFinishForToken[stor155[idx]]:
                        if block.timestamp < lastUpdateTimeForToken[stor155[idx]]:
                            revert with 0, 17
                        if block.timestamp - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / block.timestamp - lastUpdateTimeForToken[stor155[idx]]:
                            revert with 0, 17
                        if (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                            revert with 0, 17
                        if rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) < userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) - userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewardsForToken[stor155[idx]][address(msg.sender)]:
                            revert with 0, 17
                        rewardsForToken[stor155[idx]][address(msg.sender)] += (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if periodFinishForToken[stor155[idx]] < lastUpdateTimeForToken[stor155[idx]]:
                            revert with 0, 17
                        if periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]]:
                            revert with 0, 17
                        if (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                            revert with 0, 17
                        if rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) < userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) - userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewardsForToken[stor155[idx]][address(msg.sender)]:
                            revert with 0, 17
                        rewardsForToken[stor155[idx]][address(msg.sender)] += (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                mem[0] = msg.sender
                mem[32] = sha3(rewardTokens[idx], 161)
                userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] = rewardPerTokenStoredForToken[stor155[idx]]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < rewardTokens.length:
            if not totalSupply:
                if rewardPerTokenStoredForToken[stor155[idx]] < userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)]:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 51
                if balanceOf[address(msg.sender)] and rewardPerTokenStoredForToken[stor155[idx]] - userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewardsForToken[stor155[idx]][address(msg.sender)]:
                    revert with 0, 17
                if ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]:
                    mem[0] = msg.sender
                    mem[32] = sha3(rewardTokens[idx], 162)
                    rewardsForToken[stor155[idx]][msg.sender] = 0
                    _1298 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                    _1303 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1303 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1303 + 36 len 28]
                    mem[64] = _1298 + 164
                    mem[_1298 + 100] = 32
                    mem[_1298 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(rewardTokens[idx]):
                        revert with 0, 'Address: call to non-contract'
                    _1319 = mem[_1303]
                    s = 0
                    while s < _1319:
                        mem[s + _1298 + 164] = mem[s + _1303 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1319) > _1319:
                        mem[_1319 + _1298 + 164] = 0
                    call rewardTokens[idx].mem[_1298 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1298 + 168 len _1319 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1298 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1298 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1298 + 232] = mem[idx + _1298 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1298 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1298 + 164] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                    else:
                        mem[64] = _1298 + ceil32(return_data.size) + 165
                        mem[_1298 + 164] = return_data.size
                        mem[_1298 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1298 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1298 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1298 + ceil32(return_data.size) + 233] = mem[idx + _1298 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1298 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1298 + 196] == bool(mem[_1298 + 196])
                            if not mem[_1298 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1298 + ceil32(return_data.size) + 165] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                    emit RewardPaid((((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]), msg.sender, rewardTokens[idx]);
            else:
                if block.timestamp < periodFinishForToken[stor155[idx]]:
                    if block.timestamp < lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if block.timestamp - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / block.timestamp - lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (block.timestamp * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                        revert with 0, 17
                    if rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) < userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)]:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 51
                    if balanceOf[address(msg.sender)] and rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) - userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewardsForToken[stor155[idx]][address(msg.sender)]:
                        revert with 0, 17
                    if ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]:
                        mem[0] = msg.sender
                        mem[32] = sha3(rewardTokens[idx], 162)
                        rewardsForToken[stor155[idx]][msg.sender] = 0
                        _1456 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                        _1472 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1472 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1472 + 36 len 28]
                        mem[64] = _1456 + 164
                        mem[_1456 + 100] = 32
                        mem[_1456 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(rewardTokens[idx]):
                            revert with 0, 'Address: call to non-contract'
                        _1502 = mem[_1472]
                        s = 0
                        while s < _1502:
                            mem[s + _1456 + 164] = mem[s + _1472 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1502) > _1502:
                            mem[_1502 + _1456 + 164] = 0
                        call rewardTokens[idx].mem[_1456 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1456 + 168 len _1502 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1456 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1456 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1456 + 232] = mem[idx + _1456 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1456 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1456 + 164] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                        else:
                            mem[64] = _1456 + ceil32(return_data.size) + 165
                            mem[_1456 + 164] = return_data.size
                            mem[_1456 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1456 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1456 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1456 + ceil32(return_data.size) + 233] = mem[idx + _1456 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1456 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1456 + 196] == bool(mem[_1456 + 196])
                                if not mem[_1456 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1456 + ceil32(return_data.size) + 165] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                        emit RewardPaid((((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]), msg.sender, rewardTokens[idx]);
                else:
                    if periodFinishForToken[stor155[idx]] < lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]] and rewardRateForToken[stor155[idx]] > -1 / periodFinishForToken[stor155[idx]] - lastUpdateTimeForToken[stor155[idx]]:
                        revert with 0, 17
                    if (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) and 10^18 > -1 / (periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]):
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if rewardPerTokenStoredForToken[stor155[idx]] > !((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply):
                        revert with 0, 17
                    if rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) < userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)]:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 51
                    if balanceOf[address(msg.sender)] and rewardPerTokenStoredForToken[stor155[idx]] + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply) - userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if (rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewardsForToken[stor155[idx]][address(msg.sender)]:
                        revert with 0, 17
                    if ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]:
                        mem[0] = msg.sender
                        mem[32] = sha3(rewardTokens[idx], 162)
                        rewardsForToken[stor155[idx]][msg.sender] = 0
                        _1474 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                        _1483 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1483 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1483 + 36 len 28]
                        mem[64] = _1474 + 164
                        mem[_1474 + 100] = 32
                        mem[_1474 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(rewardTokens[idx]):
                            revert with 0, 'Address: call to non-contract'
                        _1509 = mem[_1483]
                        s = 0
                        while s < _1509:
                            mem[s + _1474 + 164] = mem[s + _1483 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1509) > _1509:
                            mem[_1509 + _1474 + 164] = 0
                        call rewardTokens[idx].mem[_1474 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1474 + 168 len _1509 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1474 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1474 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1474 + 232] = mem[idx + _1474 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1474 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1474 + 164] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                        else:
                            mem[64] = _1474 + ceil32(return_data.size) + 165
                            mem[_1474 + 164] = return_data.size
                            mem[_1474 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1474 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1474 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1474 + ceil32(return_data.size) + 233] = mem[idx + _1474 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1474 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1474 + 196] == bool(mem[_1474 + 196])
                                if not mem[_1474 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1474 + ceil32(return_data.size) + 165] = ((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]
                        emit RewardPaid((((rewardPerTokenStoredForToken[stor155[idx]] * balanceOf[address(msg.sender)]) + ((10^18 * periodFinishForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) - (10^18 * lastUpdateTimeForToken[stor155[idx]] * rewardRateForToken[stor155[idx]]) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaidForToken[stor155[idx]][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewardsForToken[stor155[idx]][address(msg.sender)]), msg.sender, rewardTokens[idx]);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
