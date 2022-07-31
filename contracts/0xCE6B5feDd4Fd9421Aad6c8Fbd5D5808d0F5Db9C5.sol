contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#  - increaseLockAmount(uint256 arg1)
#  - createLock(uint256 arg1, uint256 arg2)
#
const decimals = 18

const MAXTIME = (35040 * 24 * 3600)


uint256 stor0;
uint256 minimumLockTime;
uint8 stor2;
address stakingTokenAddress; offset 8
mapping of struct locked;
array of uint256 name;
array of uint256 symbol;
address aAddress;
address minerAddress;

function name() payable {
    return name[0 len name.length]
}

function a() payable {
    return aAddress
}

function miner() payable {
    return minerAddress
}

function expired() payable {
    return bool(stor2)
}

function stakingToken() payable {
    return stakingTokenAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function locked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return locked[arg1].field_0, locked[arg1].field_256
}

function minimumLockTime() payable {
    return minimumLockTime
}

function _fallback() payable {
    revert
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must pass block timestamp in the future'
    if arg2 >= locked[address(arg1)].field_256:
        return 0
    if arg2 > locked[address(arg1)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    if not locked[address(arg1)].field_0:
        return 0
    if locked[address(arg1)].field_256 - arg2 <= 35040 * 24 * 3600:
        if (locked[address(arg1)].field_256 * locked[address(arg1)].field_0) - (arg2 * locked[address(arg1)].field_0) / locked[address(arg1)].field_0 != locked[address(arg1)].field_256 - arg2:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((locked[address(arg1)].field_256 * locked[address(arg1)].field_0) - (arg2 * locked[address(arg1)].field_0) / 35040 * 24 * 3600)
    if 35040 * 24 * 3600 * locked[address(arg1)].field_0 / locked[address(arg1)].field_0 != 35040 * 24 * 3600:
        revert with 0, 'SafeMath: multiplication overflow'
    return (35040 * 24 * 3600 * locked[address(arg1)].field_0 / 35040 * 24 * 3600)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must pass block timestamp in the future'
    if block.timestamp >= locked[address(arg1)].field_256:
        return 0
    if block.timestamp > locked[address(arg1)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    if not locked[address(arg1)].field_0:
        return 0
    if locked[address(arg1)].field_256 - block.timestamp <= 35040 * 24 * 3600:
        if (locked[address(arg1)].field_256 * locked[address(arg1)].field_0) - (block.timestamp * locked[address(arg1)].field_0) / locked[address(arg1)].field_0 != locked[address(arg1)].field_256 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((locked[address(arg1)].field_256 * locked[address(arg1)].field_0) - (block.timestamp * locked[address(arg1)].field_0) / 35040 * 24 * 3600)
    if 35040 * 24 * 3600 * locked[address(arg1)].field_0 / locked[address(arg1)].field_0 != 35040 * 24 * 3600:
        revert with 0, 'SafeMath: multiplication overflow'
    return (35040 * 24 * 3600 * locked[address(arg1)].field_0 / 35040 * 24 * 3600)
}

function expireContract() payable {
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    if stor2:
        revert with 0, 'Contract is expired'
    stor2 = 1
    emit Expired()
}

function setMinimumLockTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    if stor2:
        revert with 0, 'Contract is expired'
    minimumLockTime = arg1
}

function setMiner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    if stor2:
        revert with 0, 'Contract is expired'
    minerAddress = arg1
}

function increaseLockLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor2:
        revert with 0, 'Contract is expired'
    if not locked[msg.sender].field_0:
        revert with 0, 'Nothing is locked'
    if locked[msg.sender].field_256 <= block.timestamp:
        revert with 0, 'Lock expired'
    if arg1 <= locked[msg.sender].field_256:
        revert with 0, 'Can only increase lock time'
    if locked[msg.sender].field_256 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 - locked[msg.sender].field_256 <= minimumLockTime:
        revert with 0, 'Lock duration should be larger than minimum locktime'
    if locked[msg.sender].field_0 < locked[msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    locked[address(msg.sender)].field_0 = locked[msg.sender].field_0
    if not arg1:
        locked[address(msg.sender)].field_256 = locked[msg.sender].field_256
        require ext_code.size(minerAddress)
        call minerAddress.0x60ed390a with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xbe9cf0e9: 0, locked[msg.sender].field_256, block.timestamp, msg.sender, 2
    else:
        locked[address(msg.sender)].field_256 = arg1
        require ext_code.size(minerAddress)
        call minerAddress.0x60ed390a with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xbe9cf0e9: 0, arg1, block.timestamp, msg.sender, 2
    stor0 = 1
}



}
