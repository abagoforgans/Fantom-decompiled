contract main {




// =====================  Runtime code  =====================


const EXECUTOR_ROLE = 0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e

const TIMELOCK_ADMIN_ROLE = 0x5f58e3a2316349923ce3780f8d587db2d72378aed66a8261c916544fa6846ca5

const PROPOSER_ROLE = 0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
uint256 stor1;
mapping of uint256 timestamp;
uint256 minDelay;
uint256 minDelayReduced;
uint32 stor5;
address devWalletAddress;
uint256 stor5;

function devWalletAddress() {
    return address(devWalletAddress)
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function minDelayReduced() {
    return minDelayReduced
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function minDelay() {
    return minDelay
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function getTimestamp(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return timestamp[arg1]
}

function getMinDelay() {
    return minDelay
}

function _fallback() payable {
    revert
}

function isOperationDone(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return (1 == timestamp[arg1])
}

function isOperationPending(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return (1 < timestamp[arg1])
}

function isOperationReady(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if 1 >= timestamp[arg1]:
        return (1 < timestamp[arg1])
    return block.timestamp >= timestamp[arg1]
}

function updateMinDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    emit MinDelayChange(minDelay, arg1);
    minDelay = arg1
}

function updateMinDelayReduced(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    emit MinDelayReducedChange(minDelayReduced, arg1);
    minDelayReduced = arg1
}

function withdrawBNB() payable {
    if address(devWalletAddress) != msg.sender:
        revert with 0, '!devWalletAddress'
    call address(devWalletAddress) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDevWalletAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    if address(devWalletAddress) != tx.origin:
        revert with 0, 'tx.origin != devWalletAddress'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_devWalletAddress can not be zero address'
    address(devWalletAddress) = arg1
}

function hashOperation(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 320] = sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5)
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 352 len -arg3.length + ceil32(arg3.length)]
}

function farm(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.farm() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function earn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.earn() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reset(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.reset() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pause(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wrapBNB(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.wrapBNB() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unpause(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cancel(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][1][address(msg.sender)].field_0:
        if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if 1 >= timestamp[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: operation cannot be cancelled'
    timestamp[arg1] = 0
    emit Cancelled(arg1);
}

function noTimeLockFunc1(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.noTimeLockFunc1() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function noTimeLockFunc2(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.noTimeLockFunc2() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function noTimeLockFunc3(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.noTimeLockFunc3() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function enterDrawingPhase(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.enterDrawingPhase() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drawing(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.drawing(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drawAndEnter(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.drawAndEnter(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drawAndReset(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.drawAndReset(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rebalance(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.rebalance(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deleverageOnce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(arg1)
    call arg1.deleverageOnce() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function sub_5c537047(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    require arg5 == address(arg5)
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(address(arg1))
    call address(arg1).0xe4aa64f4 with:
         gas gas_remaining wei
        args 0, arg2, address(arg3), bool(arg4), address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function scheduleSet(address arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32 arg5, bytes32 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 == arg4
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6]:
        revert with 0, 'TimelockController: operation already scheduled'
    if minDelayReduced + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] = minDelayReduced + block.timestamp
    emit SetScheduled(arg2, arg3, arg4, arg5, minDelayReduced, sha3(address(arg1), arg2, arg3, arg4, arg5, arg6), 0);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function executeSet(address arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 == arg4
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg5:
        if timestamp[arg5] != 1:
            revert with 0, 'TimelockController: missing dependency'
    require ext_code.size(arg1)
    call arg1.set(uint256 arg1, uint256 arg2, bool arg3) with:
         gas gas_remaining wei
        args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 >= timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6]:
        revert with 0, 'TimelockController: operation is not ready'
    if block.timestamp < timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6]:
        revert with 0, 'TimelockController: operation is not ready'
    timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] = 1
    stor1 = 1
}

function schedule(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][1][address(msg.sender)].field_0:
        if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5]:
        revert with 0, 'TimelockController: operation already scheduled'
    if arg6 < minDelay:
        revert with 0, 'TimelockController: insufficient delay'
    if arg6 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] = arg6 + block.timestamp
    mem[ceil32(arg3.length) + 320] = arg1
    mem[ceil32(arg3.length) + 352] = arg2
    mem[ceil32(arg3.length) + 384] = 160
    mem[ceil32(arg3.length) + 480] = arg3.length
    mem[ceil32(arg3.length) + 416] = arg4
    mem[ceil32(arg3.length) + 448] = arg6
    emit CallScheduled(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5, bytes32 arg6, uint256 arg7):
                       Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                       mem[arg3.length + 352 len (2 * ceil32(arg3.length)) + -arg3.length + 160],
                       sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5),
                       0,
}

function hashOperationBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128] = 160
    mem[288] = arg1.length
    idx = 0
    s = 320
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[160] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 320] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
    idx = 0
    s = arg3 + 36
    t = (32 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
    u = (32 * arg1.length) + (32 * arg2.length) + 384
    while idx < arg3.length:
        mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
        require cd[s] < calldata.size + -arg3 - 67
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
        mem[t] = cd[(arg3 + cd[s] + 36)]
        mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    mem[224] = arg4
    mem[256] = arg5
    _12 = mem[64]
    mem[mem[64]] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 352
    mem[64] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
    mem[(64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384] = sha3(mem[_12 + 32 len mem[_12]])
    return memory
      from (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
       len 32
}

function execute(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[arg3.length + 320] = 0
    if arg4:
        if timestamp[arg4] != 1:
            revert with 0, 'TimelockController: missing dependency'
    mem[ceil32(arg3.length) + 320 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg3.length) + 320] = 0
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 324 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'TimelockController: underlying transaction reverted'
    if return_data.size:
        emit CallExecuted(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5), 0);
    else:
        mem[ceil32(arg3.length) + 320] = arg1
        mem[ceil32(arg3.length) + 352] = arg2
        mem[ceil32(arg3.length) + 384] = 96
        mem[ceil32(arg3.length) + 416] = arg3.length
        emit CallExecuted(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5):
                          Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                          mem[arg3.length + 352 len (2 * ceil32(arg3.length)) + -arg3.length + 96],
                          sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5),
                          0,
    if 1 >= timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5]:
        revert with 0, 'TimelockController: operation is not ready'
    if block.timestamp < timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5]:
        revert with 0, 'TimelockController: operation is not ready'
    timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] = 1
    stor1 = 1
}

function withdrawBEP20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(devWalletAddress) != msg.sender:
        revert with 0, '!devWalletAddress'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(devWalletAddress)
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(devWalletAddress)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(2 * ceil32(return_data.size)) + 132] = address(devWalletAddress)
    mem[(2 * ceil32(return_data.size)) + 164] = 2 * ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor5)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 2 * ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 2 * ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 2 * ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
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
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(devWalletAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function scheduleBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c, 0) + 1
    if roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][1][address(msg.sender)].field_0:
        if arg2.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg3.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        mem[128] = 160
        mem[288] = arg1.length
        idx = 0
        s = 320
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[160] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
        idx = 0
        s = arg3 + 36
        t = (32 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[s] + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
            mem[t] = cd[(arg3 + cd[s] + 36)]
            mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
            mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[224] = arg4
        mem[256] = arg5
        _71 = mem[64]
        mem[mem[64]] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 352
        mem[64] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        _73 = sha3(mem[_71 + 32 len mem[_71]])
        mem[0] = sha3(mem[_71 + 32 len mem[_71]])
        if timestamp[mem[0]]:
            revert with 0, 'TimelockController: operation already scheduled'
        if arg6 < minDelay:
            revert with 0, 'TimelockController: insufficient delay'
        if arg6 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        timestamp[_73] = arg6 + block.timestamp
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            require idx < arg3.length
            require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] + 64] = 160
            mem[mem[64] + 160] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 192 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 192] = 0
            mem[mem[64] + 96] = arg4
            mem[mem[64] + 128] = arg6
            emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _73, idx);
            idx = idx + 1
            continue 
    else:
        mem[0] = 0
        mem[32] = sha3(0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c, 0) + 1
        if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
        if arg2.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg3.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        mem[128] = 160
        mem[288] = arg1.length
        idx = 0
        s = 320
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[160] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
        idx = 0
        s = arg3 + 36
        t = (32 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[s] + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
            mem[t] = cd[(arg3 + cd[s] + 36)]
            mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
            mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[224] = arg4
        mem[256] = arg5
        _74 = mem[64]
        mem[mem[64]] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 352
        mem[64] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        _76 = sha3(mem[_74 + 32 len mem[_74]])
        mem[0] = sha3(mem[_74 + 32 len mem[_74]])
        if timestamp[mem[0]]:
            revert with 0, 'TimelockController: operation already scheduled'
        if arg6 < minDelay:
            revert with 0, 'TimelockController: insufficient delay'
        if arg6 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        timestamp[_76] = arg6 + block.timestamp
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            require idx < arg3.length
            require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] + 64] = 160
            mem[mem[64] + 160] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 192 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 192] = 0
            mem[mem[64] + 96] = arg4
            mem[mem[64] + 128] = arg6
            emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _76, idx);
            idx = idx + 1
            continue 
}

function executeBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e, 0) + 1
    if roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
        if arg2.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg3.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        mem[128] = 160
        mem[288] = arg1.length
        idx = 0
        s = 320
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[160] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
        idx = 0
        s = arg3 + 36
        t = (32 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[s] + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
            mem[t] = cd[(arg3 + cd[s] + 36)]
            mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
            mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[224] = arg4
        mem[256] = arg5
        _191 = mem[64]
        mem[mem[64]] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 352
        mem[64] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        _193 = sha3(mem[_191 + 32 len mem[_191]])
        if not arg4:
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require idx < arg2.length
                require idx < arg3.length
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]) with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _311 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_311] = return_data.size
                    mem[_311 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _193, idx);
                idx = idx + 1
                continue 
        else:
            mem[0] = arg4
            if timestamp[arg4] != 1:
                revert with 0, 'TimelockController: missing dependency'
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require idx < arg2.length
                require idx < arg3.length
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                _304 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + _304 + -mem[64] - 4]
                if return_data.size:
                    _312 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_312] = return_data.size
                    mem[_312 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _193, idx);
                idx = idx + 1
                continue 
        if 1 >= timestamp[_193]:
            revert with 0, 'TimelockController: operation is not ready'
        if block.timestamp < timestamp[_193]:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_193] = 1
    else:
        mem[0] = 0
        mem[32] = sha3(0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e, 0) + 1
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
        if arg2.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg3.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        mem[128] = 160
        mem[288] = arg1.length
        idx = 0
        s = 320
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[160] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
        idx = 0
        s = arg3 + 36
        t = (32 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[s] + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
            mem[t] = cd[(arg3 + cd[s] + 36)]
            mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
            mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[224] = arg4
        mem[256] = arg5
        _194 = mem[64]
        mem[mem[64]] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 352
        mem[64] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        _196 = sha3(mem[_194 + 32 len mem[_194]])
        if not arg4:
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require idx < arg2.length
                require idx < arg3.length
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]) with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _313 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_313] = return_data.size
                    mem[_313 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _196, idx);
                idx = idx + 1
                continue 
        else:
            mem[0] = arg4
            if timestamp[arg4] != 1:
                revert with 0, 'TimelockController: missing dependency'
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require idx < arg2.length
                require idx < arg3.length
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                _306 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + _306 + -mem[64] - 4]
                if return_data.size:
                    _314 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_314] = return_data.size
                    mem[_314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _196, idx);
                idx = idx + 1
                continue 
        if 1 >= timestamp[_196]:
            revert with 0, 'TimelockController: operation is not ready'
        if block.timestamp < timestamp[_196]:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_196] = 1
    stor1 = 1
}



}
