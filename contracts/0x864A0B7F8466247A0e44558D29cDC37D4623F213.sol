contract main {




// =====================  Runtime code  =====================


#
#  - convertTokensToWBNB(address arg1, address[] arg2, uint256[] arg3)
#
const EXECUTOR_ROLE = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63

const TIMELOCK_ADMIN_ROLE = 0x5f58e3a2316349923ce3780f8d587db2d72378aed66a8261c916544fa6846ca5

const PROPOSER_ROLE = 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
uint256 stor1;
mapping of uint256 timestamp;
uint256 minDelay;
uint256 minDelayReduced;
address devWalletAddress;
array of address beneficiary;
array of uint256 beneficiaryRewardFactors;
address wbnbAddress;

function beneficiaryAddresses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < beneficiary.length
    return beneficiary[arg1]
}

function devWalletAddress() {
    return devWalletAddress
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_512
}

function beneficiaryRewardFactors(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < beneficiaryRewardFactors.length
    return beneficiaryRewardFactors[arg1]
}

function wbnbAddress() {
    return wbnbAddress
}

function minDelayReduced() {
    return minDelayReduced
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require arg2 < roleAdmin[arg1].field_0
    return roleAdmin[arg1][arg2].field_0
}

function minDelay() {
    return minDelay
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_0
}

function getTimestamp(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg1 == arg1
    return (timestamp[arg1] == 1)
}

function isOperationPending(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (timestamp[arg1] > 1)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function isOperationReady(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timestamp[arg1] <= 1:
        return (timestamp[arg1] > 1)
    return timestamp[arg1] <= block.timestamp
}

function updateMinDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    emit MinDelayChange(minDelay, arg1);
    minDelay = arg1
}

function updateMinDelayReduced(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    emit MinDelayReducedChange(minDelayReduced, arg1);
    minDelayReduced = arg1
}

function setDevWalletAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    if devWalletAddress != tx.origin:
        revert with 0, 'tx.origin != devWalletAddress'
    devWalletAddress = arg1
}

function hashOperation(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    mem[ceil32(arg3.length) + 320] = sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5)
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 352 len -arg3.length + ceil32(arg3.length)]
}

function farm(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
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
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.earn() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pause(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
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
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
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
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function noTimeLockFunc1(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.noTimeLockFunc1() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cancel(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][1][address(msg.sender)].field_0:
        if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[arg1] <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: operation cannot be cancelled'
    timestamp[arg1] = 0
    emit Cancelled(arg1);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function add(address arg1, address arg2, bool arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.0x5f70edcf with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function scheduleSet(address arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32 arg5, bytes32 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6]:
        revert with 0, 'TimelockController: operation already scheduled'
    if block.timestamp + minDelayReduced < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] = block.timestamp + minDelayReduced
    emit SetScheduled(arg2, arg3, arg4, arg5, minDelayReduced, sha3(address(arg1), arg2, arg3, arg4, arg5, arg6), 0);
}

function executeSet(address arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] <= 1:
        revert with 0, 'TimelockController: operation is not ready'
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] > block.timestamp:
        revert with 0, 'TimelockController: operation is not ready'
    if arg5:
        if timestamp[arg5] != 1:
            revert with 0, 'TimelockController: missing dependency'
    require ext_code.size(arg1)
    call arg1.0x64482f79 with:
         gas gas_remaining wei
        args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] <= 1:
        revert with 0, 'TimelockController: operation is not ready'
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] > block.timestamp:
        revert with 0, 'TimelockController: operation is not ready'
    timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] = 1
    stor1 = 1
}

function schedule(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][1][address(msg.sender)].field_0:
        if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5]:
        revert with 0, 'TimelockController: operation already scheduled'
    if arg6 < minDelay:
        revert with 0, 'TimelockController: insufficient delay'
    if block.timestamp + arg6 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] = block.timestamp + arg6
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

function hashOperationBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5) {
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
    require arg4 == arg4
    require arg5 == arg5
    idx = 0
    s = arg1 + 36
    t = 320
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg1.length) + 320] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    idx = 0
    s = arg3 + 36
    t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
    u = (32 * arg1.length) + (32 * arg2.length) + 384
    while idx < arg3.length:
        mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
        require cd[s] < calldata.size + -arg3 - 67
        require cd[(cd[s] + arg3 + 36)] <= test266151307()
        require arg3 + 36 <= calldata.size - cd[(cd[s] + arg3 + 36)]
        mem[t] = cd[(cd[s] + arg3 + 36)]
        mem[t + 32 len cd[(cd[s] + arg3 + 36)]] = call.data[cd[s] + arg3 + 68 len cd[(cd[s] + arg3 + 36)]]
        mem[t + cd[(cd[s] + arg3 + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[s] + arg3 + 36)]) + 32
        u = u + 32
        continue 
    return sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
}

function execute(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[arg3.length + 320] = 0
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] <= 1:
        revert with 0, 'TimelockController: operation is not ready'
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] > block.timestamp:
        revert with 0, 'TimelockController: operation is not ready'
    if arg4:
        if timestamp[arg4] != 1:
            revert with 0, 'TimelockController: missing dependency'
    mem[ceil32(arg3.length) + 320 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + arg3.length + 320] = 0
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
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] <= 1:
        revert with 0, 'TimelockController: operation is not ready'
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] > block.timestamp:
        revert with 0, 'TimelockController: operation is not ready'
    timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] = 1
    stor1 = 1
}

function setBeneficiaries(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if this.address != msg.sender:
        revert with 0, 'TimelockController: caller must be timelock'
    if arg1.length != arg2.length:
        revert with 0, 'TimelockController: arrays diff length'
    idx = 0
    s = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        if s + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        continue 
    if s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None > 10000:
        revert with 0, 'TimelockController: rewardFactorsTotal must be max 1000'
    beneficiary.length = arg1.length
    if not arg1.length:
        idx = 0
        while beneficiary.length > idx:
            beneficiary[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            beneficiary[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while beneficiary.length > idx:
            beneficiary[idx] = 0
            idx = idx + 1
            continue 
    beneficiaryRewardFactors.length = arg2.length
    if not arg2.length:
        idx = 0
        while beneficiaryRewardFactors.length > idx:
            beneficiaryRewardFactors[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            beneficiaryRewardFactors[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while beneficiaryRewardFactors.length > idx:
            beneficiaryRewardFactors[idx] = 0
            idx = idx + 1
            continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 64
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = beneficiary.length
    idx = 0
    s = 0
    t = mem[64] + 96
    while idx < beneficiary.length:
        mem[t] = beneficiary[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = (32 * beneficiary.length) + 96
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * beneficiary.length) + 256] = beneficiaryRewardFactors.length
    idx = 0
    s = 0
    t = (32 * arg1.length) + (32 * arg2.length) + (32 * beneficiary.length) + 288
    while idx < beneficiaryRewardFactors.length:
        mem[t] = beneficiaryRewardFactors[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0x1f89e8dd: mem[mem[64] len (32 * arg1.length) + (32 * arg2.length) + (32 * beneficiary.length) + (32 * beneficiaryRewardFactors.length) + -mem[64] + 288]
}

function scheduleBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
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
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][1][address(msg.sender)].field_0:
        if arg1.length != arg2.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg1.length != arg3.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        idx = 0
        s = arg1 + 36
        t = 320
        while idx < arg1.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        idx = 0
        s = arg3 + 36
        t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(cd[s] + arg3 + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(cd[s] + arg3 + 36)]
            mem[t] = cd[(cd[s] + arg3 + 36)]
            mem[t + 32 len cd[(cd[s] + arg3 + 36)]] = call.data[cd[s] + arg3 + 68 len cd[(cd[s] + arg3 + 36)]]
            mem[t + cd[(cd[s] + arg3 + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[s] + arg3 + 36)]) + 32
            u = u + 32
            continue 
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _71 = sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
        if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5]:
            revert with 0, 'TimelockController: operation already scheduled'
        if arg6 < minDelay:
            revert with 0, 'TimelockController: insufficient delay'
        if block.timestamp + arg6 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] = block.timestamp + arg6
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
            emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _71, idx);
            idx = idx + 1
            continue 
    else:
        if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
        if arg1.length != arg2.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg1.length != arg3.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        idx = 0
        s = arg1 + 36
        t = 320
        while idx < arg1.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        idx = 0
        s = arg3 + 36
        t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(cd[s] + arg3 + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(cd[s] + arg3 + 36)]
            mem[t] = cd[(cd[s] + arg3 + 36)]
            mem[t + 32 len cd[(cd[s] + arg3 + 36)]] = call.data[cd[s] + arg3 + 68 len cd[(cd[s] + arg3 + 36)]]
            mem[t + cd[(cd[s] + arg3 + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[s] + arg3 + 36)]) + 32
            u = u + 32
            continue 
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _74 = sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
        if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5]:
            revert with 0, 'TimelockController: operation already scheduled'
        if arg6 < minDelay:
            revert with 0, 'TimelockController: insufficient delay'
        if block.timestamp + arg6 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] = block.timestamp + arg6
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
            emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _74, idx);
            idx = idx + 1
            continue 
}

function executeBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5) payable {
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
    require arg4 == arg4
    require arg5 == arg5
    if roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
        if arg1.length != arg2.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg1.length != arg3.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        idx = 0
        s = arg1 + 36
        t = 320
        while idx < arg1.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        idx = 0
        s = arg3 + 36
        t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(cd[s] + arg3 + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(cd[s] + arg3 + 36)]
            mem[t] = cd[(cd[s] + arg3 + 36)]
            mem[t + 32 len cd[(cd[s] + arg3 + 36)]] = call.data[cd[s] + arg3 + 68 len cd[(cd[s] + arg3 + 36)]]
            mem[t + cd[(cd[s] + arg3 + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[s] + arg3 + 36)]) + 32
            u = u + 32
            continue 
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _215 = sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
        if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
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
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]) with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_345] = return_data.size
                    mem[_345 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _215, idx);
                idx = idx + 1
                continue 
        else:
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
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]) with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _346 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_346] = return_data.size
                    mem[_346 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _215, idx);
                idx = idx + 1
                continue 
        if timestamp[_215] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[_215] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_215] = 1
    else:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
        if arg1.length != arg2.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg1.length != arg3.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        idx = 0
        s = arg1 + 36
        t = 320
        while idx < arg1.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        idx = 0
        s = arg3 + 36
        t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(cd[s] + arg3 + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(cd[s] + arg3 + 36)]
            mem[t] = cd[(cd[s] + arg3 + 36)]
            mem[t + 32 len cd[(cd[s] + arg3 + 36)]] = call.data[cd[s] + arg3 + 68 len cd[(cd[s] + arg3 + 36)]]
            mem[t + cd[(cd[s] + arg3 + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[s] + arg3 + 36)]) + 32
            u = u + 32
            continue 
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _218 = sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
        if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
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
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]) with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _347 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_347] = return_data.size
                    mem[_347 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _218, idx);
                idx = idx + 1
                continue 
        else:
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
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]) with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _348 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_348] = return_data.size
                    mem[_348 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _218, idx);
                idx = idx + 1
                continue 
        if timestamp[_218] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[_218] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_218] = 1
    stor1 = 1
}

function distributeRewards() {
    mem[0] = msg.sender
    mem[32] = sha3(0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, 0) + 1
    if roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        mem[100] = this.address
        require ext_code.size(wbnbAddress)
        staticcall wbnbAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while uint8(idx) < beneficiary.length:
            require uint8(idx) < beneficiaryRewardFactors.length
            mem[0] = 7
            if not ext_call.return_data[0]:
                _298 = mem[64]
                mem[64] = mem[64] + 64
                mem[_298] = 26
                mem[_298 + 32] = 'SafeMath: division by zero'
                _306 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = beneficiary[uint8(idx)]
                mem[mem[64] + 100] = 0
                _311 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_311 + 32] = mem[_311 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[64] = _306 + 196
                mem[_306 + 132] = 32
                mem[_306 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(wbnbAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _335 = mem[_311]
                s = 0
                while s < _335:
                    mem[_306 + s + 196] = mem[_311 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_335) > _335:
                    mem[_306 + _335 + 196] = 0
                call wbnbAddress.mem[_306 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_306 + 200 len _335 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_306 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_306 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[_306 + idx + 264] = mem[_306 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_306 + 264]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _306 + ceil32(return_data.size) + 197
                    mem[_306 + 196] = return_data.size
                    mem[_306 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_306 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_306 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[_306 + ceil32(return_data.size) + idx + 265] = mem[_306 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_306 + ceil32(return_data.size) + 265]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_306 + 228] == bool(mem[_306 + 228])
                        if not mem[_306 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * beneficiaryRewardFactors[uint8(idx)] / ext_call.return_data[0] != beneficiaryRewardFactors[uint8(idx)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _301 = mem[64]
                mem[64] = mem[64] + 64
                mem[_301] = 26
                mem[_301 + 32] = 'SafeMath: division by zero'
                _309 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = beneficiary[uint8(idx)]
                mem[mem[64] + 100] = ext_call.return_data[0] * beneficiaryRewardFactors[uint8(idx)] / 10000
                _317 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_317 + 32] = mem[_317 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[64] = _309 + 196
                mem[_309 + 132] = 32
                mem[_309 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(wbnbAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _339 = mem[_317]
                s = 0
                while s < _339:
                    mem[_309 + s + 196] = mem[_317 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_339) > _339:
                    mem[_309 + _339 + 196] = 0
                call wbnbAddress.mem[_309 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_309 + 200 len _339 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_309 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_309 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[_309 + idx + 264] = mem[_309 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_309 + 264]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _309 + ceil32(return_data.size) + 197
                    mem[_309 + 196] = return_data.size
                    mem[_309 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_309 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_309 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[_309 + ceil32(return_data.size) + idx + 265] = mem[_309 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_309 + ceil32(return_data.size) + 265]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_309 + 228] == bool(mem[_309 + 228])
                        if not mem[_309 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            idx = idx + 1
            continue 
    else:
        mem[0] = 0
        mem[32] = sha3(0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, 0) + 1
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
        mem[100] = this.address
        require ext_code.size(wbnbAddress)
        staticcall wbnbAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while uint8(idx) < beneficiary.length:
            require uint8(idx) < beneficiaryRewardFactors.length
            mem[0] = 7
            if not ext_call.return_data[0]:
                _300 = mem[64]
                mem[64] = mem[64] + 64
                mem[_300] = 26
                mem[_300 + 32] = 'SafeMath: division by zero'
                _308 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = beneficiary[uint8(idx)]
                mem[mem[64] + 100] = 0
                _313 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_313 + 32] = mem[_313 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[64] = _308 + 196
                mem[_308 + 132] = 32
                mem[_308 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(wbnbAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _337 = mem[_313]
                s = 0
                while s < _337:
                    mem[_308 + s + 196] = mem[_313 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_337) > _337:
                    mem[_308 + _337 + 196] = 0
                call wbnbAddress.mem[_308 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_308 + 200 len _337 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_308 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_308 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[_308 + idx + 264] = mem[_308 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_308 + 264]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _308 + ceil32(return_data.size) + 197
                    mem[_308 + 196] = return_data.size
                    mem[_308 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_308 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_308 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[_308 + ceil32(return_data.size) + idx + 265] = mem[_308 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_308 + ceil32(return_data.size) + 265]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_308 + 228] == bool(mem[_308 + 228])
                        if not mem[_308 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * beneficiaryRewardFactors[uint8(idx)] / ext_call.return_data[0] != beneficiaryRewardFactors[uint8(idx)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _302 = mem[64]
                mem[64] = mem[64] + 64
                mem[_302] = 26
                mem[_302 + 32] = 'SafeMath: division by zero'
                _310 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = beneficiary[uint8(idx)]
                mem[mem[64] + 100] = ext_call.return_data[0] * beneficiaryRewardFactors[uint8(idx)] / 10000
                _319 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_319 + 32] = mem[_319 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[64] = _310 + 196
                mem[_310 + 132] = 32
                mem[_310 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(wbnbAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _341 = mem[_319]
                s = 0
                while s < _341:
                    mem[_310 + s + 196] = mem[_319 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_341) > _341:
                    mem[_310 + _341 + 196] = 0
                call wbnbAddress.mem[_310 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_310 + 200 len _341 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_310 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_310 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[_310 + idx + 264] = mem[_310 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_310 + 264]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _310 + ceil32(return_data.size) + 197
                    mem[_310 + 196] = return_data.size
                    mem[_310 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_310 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_310 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[_310 + ceil32(return_data.size) + idx + 265] = mem[_310 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_310 + ceil32(return_data.size) + 265]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_310 + 228] == bool(mem[_310 + 228])
                        if not mem[_310 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            idx = idx + 1
            continue 
    emit DistributeRewards(ext_call.return_data[0]);
    return 0
}



}
