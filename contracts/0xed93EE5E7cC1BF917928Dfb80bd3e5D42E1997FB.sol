contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2, address arg3, address arg4, address arg5, bool arg6, uint256 arg7, uint256 arg8)
#  - sub_32cc4f92(?)
#  - initializeStrategy(address arg1, address arg2)
#  - doHardWork()
#  - withdrawAllToVault()
#  - withdrawToVault(uint256 arg1)
#
const depositArbCheck = 1


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of uint256 nTokens;
mapping of address nextImplementation;
mapping of uint8 stor3;
mapping of uint256 bytes32Storage;
array of address sub_25d9b792;
mapping of uint8 stor1936026732;
mapping of address stor508441226356;
mapping of address stor108123141794932;
mapping of uint256 stor123623913048420;
mapping of uint256 stor2128683903821636661106;
mapping of address stor540221502481122645208940;
mapping of address stor138296704635167414353093998;
mapping of address stor140695575003448815645977716;
mapping of address stor31071133450866564094059308398;
mapping of uint256 stor34163072517407619915162265295536007701880;
mapping of address stor9616880082707858260027875428568578623369070;
mapping of uint256 stor167190457001072052030333354250243238350336333465924;
address storFEA7;
uint256 storFEA7;

function bytes32Storage(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bytes32Storage[arg1]
}

function nextImplementation() payable {
    return stor2[('name', 'stor6E65', 9616880082707858260027875428568578623369070)]
}

function sub_0f72c628(?) payable {
    return stor4[('name', 'stor7265', 167190457001072052030333354250243238350336333465924)]
}

function nTokens() payable {
    return nTokens['nTokens']
}

function targetVault() payable {
    return stor2[('name', 'stor7461', 140695575003448815645977716)]
}

function sub_25d9b792(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_25d9b792.length
    return sub_25d9b792[arg1]
}

function bVault() payable {
    return stor2[('name', 'stor6256', 108123141794932)]
}

function poolId() payable {
    return stor1[('name', 'stor706F', 123623913048420)]
}

function sell() payable {
    return bool(stor3[('name', 'stor7365', 1936026732)])
}

function multisig() payable {
    return nextImplementation['multisig']
}

function rewardPool() payable {
    return stor2[('name', 'stor7265', 540221502481122645208940)]
}

function underlying() payable {
    return nextImplementation['underlying']
}

function nextImplementationTimestamp() payable {
    return nTokens['nextImplementationTimestamp']
}

function sellFloor() payable {
    return stor1[('name', 'stor7365', 2128683903821636661106)]
}

function sub_abb403b2(?) payable {
    return stor1[('name', 'stor6465', 34163072517407619915162265295536007701880)]
}

function depositToken() payable {
    return stor2[('name', 'stor6465', 31071133450866564094059308398)]
}

function pausedInvesting() payable {
    return bool(stor3['pausedInvesting'])
}

function timelockDelay() payable {
    return nTokens['timelockDelay']
}

function rewardToken() payable {
    return stor2[('name', 'stor7265', 138296704635167414353093998)]
}

function vault() payable {
    return stor2[('name', 'stor7661', 508441226356)]
}

function _fallback() payable {
    revert
}

function unsalvagableTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == nextImplementation['underlying']:
        return True
    if arg1 == stor2[('name', 'stor7265', 138296704635167414353093998)]:
        return True
    return (arg1 == stor2[('name', 'stor6465', 31071133450866564094059308398)])
}

function governance() payable {
    require ext_code.size(address(storFEA7))
    staticcall address(storFEA7).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function controller() payable {
    require ext_code.size(address(storFEA7))
    staticcall address(storFEA7).0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function continueInvesting() payable {
    require ext_code.size(address(storFEA7))
    staticcall address(storFEA7).isGovernance(address arg1) with:
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

function __Governable_init_(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        uint256(storFEA7) = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            uint256(storFEA7) = arg1
        else:
            uint16(stor0.field_0) = 257
            uint256(storFEA7) = arg1
            uint8(stor0.field_8) = 0
}

function setSellFloor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storFEA7))
    staticcall address(storFEA7).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor1[('name', 'stor7365', 2128683903821636661106)] = arg1
}

function setMultisig(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storFEA7))
    staticcall address(storFEA7).isGovernance(address arg1) with:
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

function setSell(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storFEA7))
    staticcall address(storFEA7).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor3[('name', 'stor7365', 1936026732)] = uint8(arg1)
}

function finalizeUpgrade() payable {
    require ext_code.size(address(storFEA7))
    staticcall address(storFEA7).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor2[('name', 'stor6E65', 9616880082707858260027875428568578623369070)] = 0
    nTokens['nextImplementationTimestamp'] = 0
}

function shouldUpgrade() payable {
    if not nTokens['nextImplementationTimestamp']:
        return bool(nTokens['nextImplementationTimestamp']), stor2[('name', 'stor6E65', 9616880082707858260027875428568578623369070)]
    if block.timestamp <= nTokens['nextImplementationTimestamp']:
        return block.timestamp > nTokens['nextImplementationTimestamp'], 
               stor2[('name', 'stor6E65', 9616880082707858260027875428568578623369070)]
    return not not stor2[('name', 'stor6E65', 9616880082707858260027875428568578623369070)], 
           stor2[('name', 'stor6E65', 9616880082707858260027875428568578623369070)]
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storFEA7))
    staticcall address(storFEA7).isGovernance(address arg1) with:
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
    uint256(storFEA7) = arg1
}

function scheduleUpgrade(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storFEA7))
    staticcall address(storFEA7).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor2[('name', 'stor6E65', 9616880082707858260027875428568578623369070)] = arg1
    if block.timestamp > !nTokens['timelockDelay']:
        revert with 0, 17
    nTokens['nextImplementationTimestamp'] = block.timestamp + nTokens['timelockDelay']
}

function __Controllable_init(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        uint256(storFEA7) = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            uint256(storFEA7) = arg1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                uint256(storFEA7) = arg1
            else:
                uint16(stor0.field_0) = 257
                uint256(storFEA7) = arg1
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function investedUnderlyingBalance() payable {
    require ext_code.size(nextImplementation['underlying'])
    staticcall nextImplementation['underlying'].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor2[('name', 'stor7265', 540221502481122645208940)]:
        return ext_call.return_data[0]
    mem[ceil32(return_data.size) + 552] = this.address
    require ext_code.size(stor2[('name', 'stor7265', 540221502481122645208940)])
    staticcall stor2[('name', 'stor7265', 540221502481122645208940)].userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor1[('name', 'stor706F', 123623913048420)], this.address
    mem[ceil32(return_data.size) + 516 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 516] = 2 * ext_call.return_data[0]
    return memory
      from (2 * ceil32(return_data.size)) + 516
       len ceil32(return_data.size) + 32
}

function emergencyExit() payable {
    require ext_code.size(address(storFEA7))
    staticcall address(storFEA7).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        stor3['pausedInvesting'] = 1
    require ext_code.size(address(storFEA7))
    staticcall address(storFEA7).0x5aa6e675 with:
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
    mem[(2 * ceil32(return_data.size)) + 300] = 'or Multisig' << 168
    revert with memory
      from (2 * ceil32(return_data.size)) + 200
       len ceil32(return_data.size) + 132
}

function salvage(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor2[('name', 'stor7661', 508441226356)] != msg.sender:
        require ext_code.size(address(storFEA7))
        staticcall address(storFEA7).0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(address(storFEA7))
            staticcall address(storFEA7).0x5aa6e675 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Strategy: The sender has to be the controller, governance, or vault'
    if arg2 == nextImplementation['underlying']:
        revert with 0, 'Strategy: Unsalvagable token'
    if arg2 == stor2[('name', 'stor7265', 138296704635167414353093998)]:
        revert with 0, 'Strategy: Unsalvagable token'
    if arg2 == stor2[('name', 'stor6465', 31071133450866564094059308398)]:
        revert with 0, 'Strategy: Unsalvagable token'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
