contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2, address arg3, address arg4, address arg5, bool arg6, uint256 arg7, uint256 arg8)
#  - initializeStrategy(address arg1, address arg2)
#  - doHardWork()
#  - withdrawAllToVault()
#  - withdrawToVault(uint256 arg1)
#  - sub_ed9a521a(?)
#
const depositArbCheck = 1


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 nTokens;
mapping of address nextImplementation;
mapping of uint8 stor3;
mapping of uint256 bytes32Storage;
array of address sub_25d9b792;
address storA7EC;
uint256 storA7EC;

function bytes32Storage(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bytes32Storage[arg1]
}

function nextImplementation() payable {
    return nextImplementation['nextImplementation']
}

function sub_0f72c628(?) payable {
    return bytes32Storage['rewardToDepositPoolID']
}

function nTokens() payable {
    return nTokens['nTokens']
}

function sub_25d9b792(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_25d9b792.length
    return sub_25d9b792[arg1]
}

function bVault() payable {
    return nextImplementation['bVault']
}

function poolId() payable {
    return nTokens['poolId']
}

function sell() payable {
    return bool(stor3['sell'])
}

function multisig() payable {
    return nextImplementation['multisig']
}

function rewardPool() payable {
    return nextImplementation['rewardPool']
}

function underlying() payable {
    return nextImplementation['underlying']
}

function nextImplementationTimestamp() payable {
    return nTokens['nextImplementationTimestamp']
}

function sellFloor() payable {
    return nTokens['sellFloor']
}

function sub_abb403b2(?) payable {
    return nTokens['depositArrayIndex']
}

function depositToken() payable {
    return nextImplementation['depositToken']
}

function pausedInvesting() payable {
    return bool(stor3['pausedInvesting'])
}

function timelockDelay() payable {
    return nTokens['timelockDelay']
}

function rewardToken() payable {
    return nextImplementation['rewardToken']
}

function vault() payable {
    return nextImplementation['vault']
}

function _fallback() payable {
    revert
}

function unsalvagableTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == nextImplementation['underlying']:
        return True
    if arg1 == nextImplementation['rewardToken']:
        return True
    return (arg1 == nextImplementation['depositToken'])
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

function shouldUpgrade() payable {
    if not nTokens['nextImplementationTimestamp']:
        return not not nTokens['nextImplementationTimestamp'], nextImplementation['nextImplementation']
    if block.timestamp <= nTokens['nextImplementationTimestamp']:
        return block.timestamp > nTokens['nextImplementationTimestamp'], nextImplementation['nextImplementation']
    return not not nextImplementation['nextImplementation'], nextImplementation['nextImplementation']
}

function continueInvesting() payable {
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
    stor3['pausedInvesting'] = 0
}

function setSell(bool arg1) payable {
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
    stor3['sell'] = uint8(arg1)
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
    nextImplementation['nextImplementation'] = 0
    nTokens['nextImplementationTimestamp'] = 0
}

function setSellFloor(uint256 arg1) payable {
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
    nTokens['sellFloor'] = arg1
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
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            uint256(storA7EC) = arg1
            Mask(248, 0, stor0.field_8) = 0
}

function setMultisig(address arg1) payable {
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
    nextImplementation['multisig'] = arg1
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
    nextImplementation['nextImplementation'] = arg1
    if block.timestamp > -nTokens['timelockDelay'] - 1:
        revert with 'NH{q', 17
    nTokens['nextImplementationTimestamp'] = block.timestamp + nTokens['timelockDelay']
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
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                uint256(storA7EC) = arg1
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                uint256(storA7EC) = arg1
                Mask(248, 0, stor0.field_8) = 0
                Mask(248, 0, stor0.field_8) = 0
}

function investedUnderlyingBalance() payable {
    require ext_code.size(nextImplementation['underlying'])
    staticcall nextImplementation['underlying'].balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not nextImplementation['rewardPool']:
        return ext_call.return_data[0]
    mem[ceil32(return_data.size) + 552] = this.address
    require ext_code.size(nextImplementation['rewardPool'])
    staticcall nextImplementation['rewardPool'].userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args nTokens['poolId'], this.address
    mem[ceil32(return_data.size) + 516 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 516] = 2 * ext_call.return_data[0]
    return memory
      from (2 * ceil32(return_data.size)) + 516
       len ceil32(return_data.size) + 32
}

function emergencyExit() payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        stor3['pausedInvesting'] = 1
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).0x5aa6e675 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 200] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == nextImplementation['multisig']:
        stor3['pausedInvesting'] = 1
    mem[(2 * ceil32(return_data.size)) + 200] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 204] = 32
    mem[(2 * ceil32(return_data.size)) + 236] = 43
    mem[(2 * ceil32(return_data.size)) + 268] = 'Strategy: Caller not Governance '
    mem[(2 * ceil32(return_data.size)) + 300] = 'or Multisig'
    revert with memory
      from (2 * ceil32(return_data.size)) + 200
       len ceil32(return_data.size) + 132
}

function salvage(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if nextImplementation['vault'] != msg.sender:
        require ext_code.size(address(storA7EC))
        staticcall address(storA7EC).0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(address(storA7EC))
            staticcall address(storA7EC).0x5aa6e675 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Strategy: The sender has to be the controller, governance, or vault'
    if arg2 == nextImplementation['underlying']:
        revert with 0, 'Strategy: Unsalvagable token'
    if arg2 == nextImplementation['rewardToken']:
        revert with 0, 'Strategy: Unsalvagable token'
    if arg2 == nextImplementation['depositToken']:
        revert with 0, 'Strategy: Unsalvagable token'
    require ext_code.size(arg2)
    call arg2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
