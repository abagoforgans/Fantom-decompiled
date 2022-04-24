contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_a2a784a8(?)
#  - transfer(address arg1, uint256 arg2)
#  - sub_d0e36335(?)
#
const sub_070b93a7(?) = (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / 10^9)


uint256 stor0;
uint8 isRefundEnabled; offset 160
uint8 liquidityAdded; offset 168
uint8 moonMissionStarted; offset 176
uint8 stor1; offset 184
address owner;
uint256 stor2;
uint256 sub_84f44adf;
address stor4;
address stor5;
address poolAddress;
uint256 stor6;
uint256 liquidityUnlock;
uint256 ethSent;
uint256 sub_49a6a335;
uint256 sub_42d70631;
uint256 lockedLiquidityAmount;
uint256 refundTime;
uint256 presaleTime;
uint256 sub_8a3be0b6;
uint256 presaleHardcap;
uint256 sub_1b2cabba;
uint256 timeBetweenRounds;
uint256 sub_be71ce9f;
mapping of uint256 sub_536c8c02;
uint256 sub_9907c215;
uint256 sub_d10c98f4;
uint256 sub_87359823;
uint256 sub_a19036da;
mapping of uint256 stor26;
mapping of uint256 stor27;
mapping of uint256 allowance;
mapping of uint8 stor29;
array of address stor30;
uint256 _tTotal;
uint256 stor32;
uint256 _tFeeTotal;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 _maxTxAmount;
array of address stor36516136433507714556481507284757523525550975291680945358964353894568634540880;

function lockedLiquidityAmount() {
    return lockedLiquidityAmount
}

function name() {
    return name[0 len name.length]
}

function liquidityUnlock() {
    return liquidityUnlock
}

function totalFees() {
    return _tFeeTotal
}

function pool() {
    return address(poolAddress)
}

function totalSupply() {
    return _tTotal
}

function sub_1b2cabba(?) {
    return sub_1b2cabba
}

function decimals() {
    return decimals
}

function moonMissionStarted() {
    return bool(moonMissionStarted)
}

function sub_42d70631(?) {
    return sub_42d70631
}

function sub_49a6a335(?) {
    return sub_49a6a335
}

function sub_536c8c02(?) {
    require calldata.size - 4 >= 32
    return sub_536c8c02[address(arg1)]
}

function timeBetweenRounds() {
    return timeBetweenRounds
}

function _maxTxAmount() {
    return _maxTxAmount
}

function sub_84f44adf(?) {
    return sub_84f44adf
}

function sub_87359823(?) {
    return sub_87359823
}

function isRefundEnabled() {
    return bool(isRefundEnabled)
}

function sub_8a3be0b6(?) {
    return sub_8a3be0b6
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9907c215(?) {
    return sub_9907c215
}

function refundTime() {
    return refundTime
}

function sub_a19036da(?) {
    return sub_a19036da
}

function _tTotal() {
    return _tTotal
}

function sub_be71ce9f(?) {
    return sub_be71ce9f
}

function presaleTime() {
    return presaleTime
}

function isExcluded(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor29[address(arg1)])
}

function presaleHardcap() {
    return presaleHardcap
}

function sub_d10c98f4(?) {
    return sub_d10c98f4
}

function liquidityAdded() {
    return bool(liquidityAdded)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function ethSent() {
    return ethSent
}

function _tFeeTotal() {
    return _tFeeTotal
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_c29bf895(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    timeBetweenRounds = arg1
}

function setPresaleTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    presaleTime = arg1
}

function allowRefunds() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    isRefundEnabled = 1
    presaleTime = 0
    stor0 = 1
}

function sub_043ce033(?) {
    if not sub_84f44adf:
        return 0
    if 2 * sub_84f44adf / sub_84f44adf != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (2 * sub_84f44adf / 10^9)
}

function recoverToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require block.timestamp >= liquidityUnlock
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor4, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_60605da2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x734c61756e636820636f756e74646f776e2074696d652063616e206f6e6c7920626520736574207768656e207061757365,
                    mem[213 len 15]
    stor2 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_21b387b2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if presaleTime:
        if presaleTime <= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7243616e6e6f74206368616e6765207768696c652070726573616c65206973206163746976,
                        mem[201 len 27]
    sub_49a6a335 = arg1
}

function getRefund() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require tx.origin == msg.sender
    require not moonMissionStarted
    if not isRefundEnabled:
        if block.timestamp < refundTime:
            revert with 0, 'Cannot refund'
    sub_536c8c02[msg.sender] = 0
    call msg.sender with:
       value sub_536c8c02[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not _tTotal:
        _maxTxAmount = 0
    else:
        if arg1 * _tTotal / _tTotal != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        _maxTxAmount = arg1 * _tTotal / 100
}

function includeAccount(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor29[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor30.length:
        mem[0] = 30
        if stor30[idx] != arg1:
            idx = idx + 1
            continue 
        require stor30.length - 1 < stor30.length
        require idx < stor30.length
        stor30[idx] = stor30[stor30.length]
        stor27[address(arg1)] = 0
        stor29[address(arg1)] = 0
        require stor30.length
        stor30[stor30.length] = 0
        stor30.length--
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getTokenReserves(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
    staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6e45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function createPool() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
    call 0xef45d134b73241eda7703fa787148d9c9f4950b0.createPair(address rg1, address rg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor32:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = _tTotal
    t = stor32
    while idx < stor30.length:
        mem[0] = stor30[idx]
        mem[32] = 26
        if stor26[stor30[idx]] > t:
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _156 + 32]
                    idx = idx + 32
                    continue 
            else:
                _198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_198] = 26
                mem[_198 + 32] = 'SafeMath: division by zero'
                if stor32 / _tTotal:
                    return (arg1 / stor32 / _tTotal)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _198 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor30.length
        mem[0] = stor30[idx]
        mem[32] = 27
        if stor27[stor30[idx]] > s:
            _166 = mem[64]
            mem[64] = mem[64] + 64
            mem[_166] = 26
            mem[_166 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _166 + 32]
                    idx = idx + 32
                    continue 
            else:
                _220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_220] = 26
                mem[_220 + 32] = 'SafeMath: division by zero'
                if stor32 / _tTotal:
                    return (arg1 / stor32 / _tTotal)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _220 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor30.length
        mem[0] = stor30[idx]
        mem[32] = 26
        _161 = mem[64]
        mem[64] = mem[64] + 64
        mem[_161] = 30
        mem[_161 + 32] = 'SafeMath: subtraction overflow'
        if stor26[stor30[idx]] > t:
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _168 + 68] = mem[idx + _161 + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 70 len 30]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        require idx < stor30.length
        mem[0] = stor30[idx]
        mem[32] = 27
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 30
        mem[_200 + 32] = 'SafeMath: subtraction overflow'
        if stor27[stor30[idx]] <= s:
            idx = idx + 1
            s = s - stor27[stor30[idx]]
            t = t - stor26[stor30[idx]]
            continue 
        _217 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _217 + 68] = mem[idx + _200 + 32]
            idx = idx + 32
            continue 
        mem[_217 + 68] = mem[_217 + 70 len 30]
        revert with memory
          from mem[64]
           len _217 + -mem[64] + 100
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor32 / _tTotal:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (arg1 / t / s)
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero'
    if not stor32 / _tTotal:
        revert with 0, 'SafeMath: division by zero'
    return (arg1 / stor32 / _tTotal)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor29[address(arg1)]:
        return stor27[address(arg1)]
    mem[0] = arg1
    mem[32] = 26
    if stor26[address(arg1)] > stor32:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = _tTotal
    t = stor32
    while idx < stor30.length:
        mem[0] = stor30[idx]
        mem[32] = 26
        if stor26[stor30[idx]] > t:
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _161 + 32]
                    idx = idx + 32
                    continue 
            else:
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = 26
                mem[_203 + 32] = 'SafeMath: division by zero'
                if stor32 / _tTotal:
                    return (stor26[address(arg1)] / stor32 / _tTotal)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _203 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor30.length
        mem[0] = stor30[idx]
        mem[32] = 27
        if stor27[stor30[idx]] > s:
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 26
            mem[_171 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
            else:
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if stor32 / _tTotal:
                    return (stor26[address(arg1)] / stor32 / _tTotal)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _225 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor30.length
        mem[0] = stor30[idx]
        mem[32] = 26
        _166 = mem[64]
        mem[64] = mem[64] + 64
        mem[_166] = 30
        mem[_166 + 32] = 'SafeMath: subtraction overflow'
        if stor26[stor30[idx]] > t:
            _173 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _173 + 68] = mem[idx + _166 + 32]
                idx = idx + 32
                continue 
            mem[_173 + 68] = mem[_173 + 70 len 30]
            revert with memory
              from mem[64]
               len _173 + -mem[64] + 100
        require idx < stor30.length
        mem[0] = stor30[idx]
        mem[32] = 27
        _205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_205] = 30
        mem[_205 + 32] = 'SafeMath: subtraction overflow'
        if stor27[stor30[idx]] <= s:
            idx = idx + 1
            s = s - stor27[stor30[idx]]
            t = t - stor26[stor30[idx]]
            continue 
        _222 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _222 + 68] = mem[idx + _205 + 32]
            idx = idx + 32
            continue 
        mem[_222 + 68] = mem[_222 + 70 len 30]
        revert with memory
          from mem[64]
           len _222 + -mem[64] + 100
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor32 / _tTotal:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (stor26[address(arg1)] / t / s)
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero'
    if not stor32 / _tTotal:
        revert with 0, 'SafeMath: division by zero'
    return (stor26[address(arg1)] / stor32 / _tTotal)
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor29[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor26[address(arg1)]:
        mem[0] = arg1
        mem[32] = 26
        if stor26[address(arg1)] > stor32:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = _tTotal
        t = stor32
        while idx < stor30.length:
            mem[0] = stor30[idx]
            mem[32] = 26
            if stor26[stor30[idx]] > t:
                _166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_166] = 26
                mem[_166 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _166 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_208] = 26
                    mem[_208 + 32] = 'SafeMath: division by zero'
                    if stor32 / _tTotal:
                        stor27[address(arg1)] = stor26[address(arg1)] / stor32 / _tTotal
                        stor29[address(arg1)] = 1
                        stor30.length++
                        stor50BB[stor30.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _208 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 27
            if stor27[stor30[idx]] > s:
                _176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_176] = 26
                mem[_176 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _176 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _230 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_230] = 26
                    mem[_230 + 32] = 'SafeMath: division by zero'
                    if stor32 / _tTotal:
                        stor27[address(arg1)] = stor26[address(arg1)] / stor32 / _tTotal
                        stor29[address(arg1)] = 1
                        stor30.length++
                        stor50BB[stor30.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _230 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 26
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 30
            mem[_171 + 32] = 'SafeMath: subtraction overflow'
            if stor26[stor30[idx]] > t:
                _178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _178 + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
                mem[_178 + 68] = mem[_178 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _178 + -mem[64] + 100
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 27
            _210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_210] = 30
            mem[_210 + 32] = 'SafeMath: subtraction overflow'
            if stor27[stor30[idx]] <= s:
                idx = idx + 1
                s = s - stor27[stor30[idx]]
                t = t - stor26[stor30[idx]]
                continue 
            _227 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _227 + 68] = mem[idx + _210 + 32]
                idx = idx + 32
                continue 
            mem[_227 + 68] = mem[_227 + 70 len 30]
            revert with memory
              from mem[64]
               len _227 + -mem[64] + 100
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor32 / _tTotal:
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero'
            stor27[address(arg1)] = stor26[address(arg1)] / t / s
        else:
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero'
            if not stor32 / _tTotal:
                revert with 0, 'SafeMath: division by zero'
            stor27[address(arg1)] = stor26[address(arg1)] / stor32 / _tTotal
    stor29[address(arg1)] = 1
    stor30.length++
    stor50BB[stor30.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 > _tTotal:
        revert with 0, 'Amount must be less than supply'
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if arg2:
        if not arg1 / 50:
            mem[64] = 224
            mem[160] = 30
            mem[192] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = _tTotal
            t = stor32
            while idx < stor30.length:
                mem[0] = stor30[idx]
                mem[32] = 26
                if stor26[stor30[idx]] > t:
                    _876 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_876] = 26
                    mem[_876 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _876 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1209 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1209] = 30
                    mem[_1209 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor32 / _tTotal * arg1:
                        return (stor32 / _tTotal * arg1)
                    _1237 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1237 + 68] = mem[idx + _1209 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1237 + 68] = mem[_1237 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1237 + -mem[64] + 100
                require idx < stor30.length
                mem[0] = stor30[idx]
                mem[32] = 27
                if stor27[stor30[idx]] > s:
                    _910 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_910] = 26
                    mem[_910 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _910 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1240 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1240] = 30
                    mem[_1240 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor32 / _tTotal * arg1:
                        return (stor32 / _tTotal * arg1)
                    _1296 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1296 + 68] = mem[idx + _1240 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1296 + 68] = mem[_1296 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1296 + -mem[64] + 100
                require idx < stor30.length
                mem[0] = stor30[idx]
                mem[32] = 26
                _894 = mem[64]
                mem[64] = mem[64] + 64
                mem[_894] = 30
                mem[_894 + 32] = 'SafeMath: subtraction overflow'
                if stor26[stor30[idx]] > t:
                    _926 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _926 + 68] = mem[idx + _894 + 32]
                        idx = idx + 32
                        continue 
                    mem[_926 + 68] = mem[_926 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _926 + -mem[64] + 100
                require idx < stor30.length
                mem[0] = stor30[idx]
                mem[32] = 27
                _1047 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1047] = 30
                mem[_1047 + 32] = 'SafeMath: subtraction overflow'
                if stor27[stor30[idx]] <= s:
                    idx = idx + 1
                    s = s - stor27[stor30[idx]]
                    t = t - stor26[stor30[idx]]
                    continue 
                _1101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1101 + 68] = mem[idx + _1047 + 32]
                    idx = idx + 32
                    continue 
                mem[_1101 + 68] = mem[_1101 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1101 + -mem[64] + 100
            _818 = mem[64]
            mem[64] = mem[64] + 64
            mem[_818] = 26
            mem[_818 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor32 / _tTotal:
                _944 = mem[64]
                mem[64] = mem[64] + 64
                mem[_944] = 26
                mem[_944 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _945 = mem[64]
            mem[64] = mem[64] + 64
            mem[_945] = 26
            mem[_945 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                return 0
            if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor32 / _tTotal * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return (stor32 / _tTotal * arg1)
        if 2 * arg1 / 50 / arg1 / 50 != 2:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 2 * arg1 / 50 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = _tTotal
        t = stor32
        while idx < stor30.length:
            mem[0] = stor30[idx]
            mem[32] = 26
            if stor26[stor30[idx]] > t:
                _871 = mem[64]
                mem[64] = mem[64] + 64
                mem[_871] = 26
                mem[_871 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _871 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 2 * arg1 / 50:
                        return 0
                    if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1206 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1206] = 30
                    mem[_1206 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 / _tTotal * 2 * arg1 / 50 <= 0:
                        return (-1 * stor32 / _tTotal * 2 * arg1 / 50)
                    _1232 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1232 + 68] = mem[idx + _1206 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1232 + 68] = mem[_1232 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1232 + -mem[64] + 100
                if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 50:
                    _1205 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1205] = 30
                    mem[_1205 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor32 / _tTotal * arg1:
                        return (stor32 / _tTotal * arg1)
                    _1229 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1229 + 68] = mem[idx + _1205 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1229 + 68] = mem[_1229 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1229 + -mem[64] + 100
                if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1215 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1215] = 30
                mem[_1215 + 32] = 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * 2 * arg1 / 50 <= stor32 / _tTotal * arg1:
                    return ((stor32 / _tTotal * arg1) - (stor32 / _tTotal * 2 * arg1 / 50))
                _1263 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1263 + 68] = mem[idx + _1215 + 32]
                    idx = idx + 32
                    continue 
                mem[_1263 + 68] = mem[_1263 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1263 + -mem[64] + 100
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 27
            if stor27[stor30[idx]] > s:
                _905 = mem[64]
                mem[64] = mem[64] + 64
                mem[_905] = 26
                mem[_905 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _905 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 2 * arg1 / 50:
                        return 0
                    if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1236 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1236] = 30
                    mem[_1236 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 / _tTotal * 2 * arg1 / 50 <= 0:
                        return (-1 * stor32 / _tTotal * 2 * arg1 / 50)
                    _1290 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1290 + 68] = mem[idx + _1236 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1290 + 68] = mem[_1290 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1290 + -mem[64] + 100
                if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 50:
                    _1235 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1235] = 30
                    mem[_1235 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor32 / _tTotal * arg1:
                        return (stor32 / _tTotal * arg1)
                    _1287 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1287 + 68] = mem[idx + _1235 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1287 + 68] = mem[_1287 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1287 + -mem[64] + 100
                if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1266 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1266] = 30
                mem[_1266 + 32] = 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * 2 * arg1 / 50 <= stor32 / _tTotal * arg1:
                    return ((stor32 / _tTotal * arg1) - (stor32 / _tTotal * 2 * arg1 / 50))
                _1324 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1324 + 68] = mem[idx + _1266 + 32]
                    idx = idx + 32
                    continue 
                mem[_1324 + 68] = mem[_1324 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1324 + -mem[64] + 100
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 26
            _891 = mem[64]
            mem[64] = mem[64] + 64
            mem[_891] = 30
            mem[_891 + 32] = 'SafeMath: subtraction overflow'
            if stor26[stor30[idx]] > t:
                _922 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _922 + 68] = mem[idx + _891 + 32]
                    idx = idx + 32
                    continue 
                mem[_922 + 68] = mem[_922 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _922 + -mem[64] + 100
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 27
            _1040 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1040] = 30
            mem[_1040 + 32] = 'SafeMath: subtraction overflow'
            if stor27[stor30[idx]] <= s:
                idx = idx + 1
                s = s - stor27[stor30[idx]]
                t = t - stor26[stor30[idx]]
                continue 
            _1093 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1093 + 68] = mem[idx + _1040 + 32]
                idx = idx + 32
                continue 
            mem[_1093 + 68] = mem[_1093 + 70 len 30]
            revert with memory
              from mem[64]
               len _1093 + -mem[64] + 100
        _813 = mem[64]
        mem[64] = mem[64] + 64
        mem[_813] = 26
        mem[_813 + 32] = 'SafeMath: division by zero'
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor32 / _tTotal:
            _937 = mem[64]
            mem[64] = mem[64] + 64
            mem[_937] = 26
            mem[_937 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 2 * arg1 / 50:
                    return 0
                if t / s * 2 * arg1 / 50 / 2 * arg1 / 50 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t / s * 2 * arg1 / 50 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * t / s * 2 * arg1 / 50)
            if t / s * arg1 / arg1 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 2 * arg1 / 50:
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            if t / s * 2 * arg1 / 50 / 2 * arg1 / 50 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if t / s * 2 * arg1 / 50 > t / s * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((t / s * arg1) - (t / s * 2 * arg1 / 50))
        _938 = mem[64]
        mem[64] = mem[64] + 64
        mem[_938] = 26
        mem[_938 + 32] = 'SafeMath: division by zero'
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if not 2 * arg1 / 50:
                return 0
            if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if stor32 / _tTotal * 2 * arg1 / 50 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-1 * stor32 / _tTotal * 2 * arg1 / 50)
        if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 2 * arg1 / 50:
            if 0 > stor32 / _tTotal * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return (stor32 / _tTotal * arg1)
        if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if stor32 / _tTotal * 2 * arg1 / 50 > stor32 / _tTotal * arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stor32 / _tTotal * arg1) - (stor32 / _tTotal * 2 * arg1 / 50))
    if not arg1 / 50:
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = _tTotal
        t = stor32
        while idx < stor30.length:
            mem[0] = stor30[idx]
            mem[32] = 26
            if stor26[stor30[idx]] > t:
                _886 = mem[64]
                mem[64] = mem[64] + 64
                mem[_886] = 26
                mem[_886 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _886 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1214 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1214] = 30
                mem[_1214 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor32 / _tTotal * arg1:
                    return (stor32 / _tTotal * arg1)
                _1253 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1253 + 68] = mem[idx + _1214 + 32]
                    idx = idx + 32
                    continue 
                mem[_1253 + 68] = mem[_1253 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1253 + -mem[64] + 100
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 27
            if stor27[stor30[idx]] > s:
                _920 = mem[64]
                mem[64] = mem[64] + 64
                mem[_920] = 26
                mem[_920 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _920 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1256 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1256] = 30
                mem[_1256 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor32 / _tTotal * arg1:
                    return (stor32 / _tTotal * arg1)
                _1314 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1314 + 68] = mem[idx + _1256 + 32]
                    idx = idx + 32
                    continue 
                mem[_1314 + 68] = mem[_1314 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1314 + -mem[64] + 100
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 26
            _900 = mem[64]
            mem[64] = mem[64] + 64
            mem[_900] = 30
            mem[_900 + 32] = 'SafeMath: subtraction overflow'
            if stor26[stor30[idx]] > t:
                _934 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _934 + 68] = mem[idx + _900 + 32]
                    idx = idx + 32
                    continue 
                mem[_934 + 68] = mem[_934 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _934 + -mem[64] + 100
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 27
            _1061 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1061] = 30
            mem[_1061 + 32] = 'SafeMath: subtraction overflow'
            if stor27[stor30[idx]] <= s:
                idx = idx + 1
                s = s - stor27[stor30[idx]]
                t = t - stor26[stor30[idx]]
                continue 
            _1117 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1117 + 68] = mem[idx + _1061 + 32]
                idx = idx + 32
                continue 
            mem[_1117 + 68] = mem[_1117 + 70 len 30]
            revert with memory
              from mem[64]
               len _1117 + -mem[64] + 100
        _828 = mem[64]
        mem[64] = mem[64] + 64
        mem[_828] = 26
        mem[_828 + 32] = 'SafeMath: division by zero'
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor32 / _tTotal:
            _958 = mem[64]
            mem[64] = mem[64] + 64
            mem[_958] = 26
            mem[_958 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                return 0
            if t / s * arg1 / arg1 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > t / s * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return (t / s * arg1)
        _959 = mem[64]
        mem[64] = mem[64] + 64
        mem[_959] = 26
        mem[_959 + 32] = 'SafeMath: division by zero'
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            return 0
        if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 0 > stor32 / _tTotal * arg1:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        if 2 * arg1 / 50 / arg1 / 50 != 2:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 2 * arg1 / 50 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = _tTotal
        t = stor32
        while idx < stor30.length:
            mem[0] = stor30[idx]
            mem[32] = 26
            if stor26[stor30[idx]] > t:
                _881 = mem[64]
                mem[64] = mem[64] + 64
                mem[_881] = 26
                mem[_881 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _881 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 2 * arg1 / 50:
                        return 0
                    if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1211 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1211] = 30
                    mem[_1211 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 / _tTotal * 2 * arg1 / 50 <= 0:
                        return 0
                    _1248 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1248 + 68] = mem[idx + _1211 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1248 + 68] = mem[_1248 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1248 + -mem[64] + 100
                if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 50:
                    _1210 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1210] = 30
                    mem[_1210 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor32 / _tTotal * arg1:
                        return (stor32 / _tTotal * arg1)
                    _1245 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1245 + 68] = mem[idx + _1210 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1245 + 68] = mem[_1245 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1245 + -mem[64] + 100
                if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1220] = 30
                mem[_1220 + 32] = 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * 2 * arg1 / 50 <= stor32 / _tTotal * arg1:
                    return (stor32 / _tTotal * arg1)
                _1275 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1275 + 68] = mem[idx + _1220 + 32]
                    idx = idx + 32
                    continue 
                mem[_1275 + 68] = mem[_1275 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1275 + -mem[64] + 100
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 27
            if stor27[stor30[idx]] > s:
                _915 = mem[64]
                mem[64] = mem[64] + 64
                mem[_915] = 26
                mem[_915 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _915 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 2 * arg1 / 50:
                        return 0
                    if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1252 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1252] = 30
                    mem[_1252 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 / _tTotal * 2 * arg1 / 50 <= 0:
                        return 0
                    _1308 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1308 + 68] = mem[idx + _1252 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1308 + 68] = mem[_1308 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1308 + -mem[64] + 100
                if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 50:
                    _1251 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1251] = 30
                    mem[_1251 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor32 / _tTotal * arg1:
                        return (stor32 / _tTotal * arg1)
                    _1305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1305 + 68] = mem[idx + _1251 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1305 + 68] = mem[_1305 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1305 + -mem[64] + 100
                if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1278 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1278] = 30
                mem[_1278 + 32] = 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * 2 * arg1 / 50 <= stor32 / _tTotal * arg1:
                    return (stor32 / _tTotal * arg1)
                _1336 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1336 + 68] = mem[idx + _1278 + 32]
                    idx = idx + 32
                    continue 
                mem[_1336 + 68] = mem[_1336 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1336 + -mem[64] + 100
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 26
            _897 = mem[64]
            mem[64] = mem[64] + 64
            mem[_897] = 30
            mem[_897 + 32] = 'SafeMath: subtraction overflow'
            if stor26[stor30[idx]] > t:
                _930 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _930 + 68] = mem[idx + _897 + 32]
                    idx = idx + 32
                    continue 
                mem[_930 + 68] = mem[_930 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _930 + -mem[64] + 100
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 27
            _1054 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1054] = 30
            mem[_1054 + 32] = 'SafeMath: subtraction overflow'
            if stor27[stor30[idx]] <= s:
                idx = idx + 1
                s = s - stor27[stor30[idx]]
                t = t - stor26[stor30[idx]]
                continue 
            _1109 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1109 + 68] = mem[idx + _1054 + 32]
                idx = idx + 32
                continue 
            mem[_1109 + 68] = mem[_1109 + 70 len 30]
            revert with memory
              from mem[64]
               len _1109 + -mem[64] + 100
        _823 = mem[64]
        mem[64] = mem[64] + 64
        mem[_823] = 26
        mem[_823 + 32] = 'SafeMath: division by zero'
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor32 / _tTotal:
            _951 = mem[64]
            mem[64] = mem[64] + 64
            mem[_951] = 26
            mem[_951 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if 2 * arg1 / 50:
                    if t / s * 2 * arg1 / 50 / 2 * arg1 / 50 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 2 * arg1 / 50 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            if t / s * arg1 / arg1 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 2 * arg1 / 50:
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if t / s * 2 * arg1 / 50 / 2 * arg1 / 50 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t / s * 2 * arg1 / 50 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            return (t / s * arg1)
        _952 = mem[64]
        mem[64] = mem[64] + 64
        mem[_952] = 26
        mem[_952 + 32] = 'SafeMath: division by zero'
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if 2 * arg1 / 50:
                if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor32 / _tTotal * 2 * arg1 / 50 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    return 0
            else:
                return 0
        if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 2 * arg1 / 50:
            if 0 > stor32 / _tTotal * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if stor32 / _tTotal * 2 * arg1 / 50 > stor32 / _tTotal * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
    return (stor32 / _tTotal * arg1)
}

function reflect(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 29
    if stor29[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x644578636c75646564206164647265737365732063616e6e6f742063616c6c20746869732066756e6374696f,
                    mem[208 len 20]
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if not arg1 / 50:
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = _tTotal
        t = stor32
        while idx < stor30.length:
            mem[0] = stor30[idx]
            mem[32] = 26
            if stor26[stor30[idx]] > t:
                _876 = mem[64]
                mem[64] = mem[64] + 64
                mem[_876] = 26
                mem[_876 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _876 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    _1036 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1036] = 30
                    mem[_1036 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    _1136 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1136] = 30
                    mem[_1136 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor26[address(msg.sender)]:
                        _1175 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1175 + 68] = mem[idx + _1136 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1175 + 68] = mem[_1175 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1175 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 26
                    _1272 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1272] = 30
                    mem[_1272 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor32:
                        if arg1 + _tFeeTotal < _tFeeTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        _tFeeTotal += arg1
                    _1346 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1346 + 68] = mem[idx + _1272 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1346 + 68] = mem[_1346 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1346 + -mem[64] + 100
                if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1041 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1041] = 30
                mem[_1041 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor32 / _tTotal * arg1:
                    _1059 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1059 + 68] = mem[idx + _1041 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1059 + 68] = mem[_1059 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1059 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 26
                _1154 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1154] = 30
                mem[_1154 + 32] = 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * arg1 > stor26[address(msg.sender)]:
                    _1209 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1209 + 68] = mem[idx + _1154 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1209 + 68] = mem[_1209 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1209 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 26
                stor26[address(msg.sender)] += -1 * stor32 / _tTotal * arg1
                _1306 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1306] = 30
                mem[_1306 + 32] = 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * arg1 <= stor32:
                    stor32 += -1 * stor32 / _tTotal * arg1
                    if arg1 + _tFeeTotal < _tFeeTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    _tFeeTotal += arg1
                _1384 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1384 + 68] = mem[idx + _1306 + 32]
                    idx = idx + 32
                    continue 
                mem[_1384 + 68] = mem[_1384 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1384 + -mem[64] + 100
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 27
            if stor27[stor30[idx]] <= s:
                require idx < stor30.length
                mem[0] = stor30[idx]
                mem[32] = 26
                _884 = mem[64]
                mem[64] = mem[64] + 64
                mem[_884] = 30
                mem[_884 + 32] = 'SafeMath: subtraction overflow'
                if stor26[stor30[idx]] > t:
                    _900 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _900 + 68] = mem[idx + _884 + 32]
                        idx = idx + 32
                        continue 
                    mem[_900 + 68] = mem[_900 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _900 + -mem[64] + 100
                require idx < stor30.length
                mem[0] = stor30[idx]
                mem[32] = 27
                _963 = mem[64]
                mem[64] = mem[64] + 64
                mem[_963] = 30
                mem[_963 + 32] = 'SafeMath: subtraction overflow'
                if stor27[stor30[idx]] <= s:
                    idx = idx + 1
                    s = s - stor27[stor30[idx]]
                    t = t - stor26[stor30[idx]]
                    continue 
                _991 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _991 + 68] = mem[idx + _963 + 32]
                    idx = idx + 32
                    continue 
                mem[_991 + 68] = mem[_991 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _991 + -mem[64] + 100
            _894 = mem[64]
            mem[64] = mem[64] + 64
            mem[_894] = 26
            mem[_894 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _894 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                _1046 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1046] = 30
                mem[_1046 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 26
                _1180 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1180] = 30
                mem[_1180 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor26[address(msg.sender)]:
                    _1244 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1244 + 68] = mem[idx + _1180 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1244 + 68] = mem[_1244 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1244 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 26
                _1351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1351] = 30
                mem[_1351 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor32:
                    if arg1 + _tFeeTotal < _tFeeTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    _tFeeTotal += arg1
                _1429 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1429 + 68] = mem[idx + _1351 + 32]
                    idx = idx + 32
                    continue 
                mem[_1429 + 68] = mem[_1429 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1429 + -mem[64] + 100
            if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1062 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1062] = 30
            mem[_1062 + 32] = 'SafeMath: subtraction overflow'
            if 0 > stor32 / _tTotal * arg1:
                _1090 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1090 + 68] = mem[idx + _1062 + 32]
                    idx = idx + 32
                    continue 
                mem[_1090 + 68] = mem[_1090 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1090 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 26
            _1212 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1212] = 30
            mem[_1212 + 32] = 'SafeMath: subtraction overflow'
            if stor32 / _tTotal * arg1 > stor26[address(msg.sender)]:
                _1275 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1275 + 68] = mem[idx + _1212 + 32]
                    idx = idx + 32
                    continue 
                mem[_1275 + 68] = mem[_1275 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1275 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 26
            stor26[address(msg.sender)] += -1 * stor32 / _tTotal * arg1
            _1387 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1387] = 30
            mem[_1387 + 32] = 'SafeMath: subtraction overflow'
            if stor32 / _tTotal * arg1 <= stor32:
                stor32 += -1 * stor32 / _tTotal * arg1
                if arg1 + _tFeeTotal < _tFeeTotal:
                    revert with 0, 'SafeMath: addition overflow'
                _tFeeTotal += arg1
            _1472 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1472 + 68] = mem[idx + _1387 + 32]
                idx = idx + 32
                continue 
            mem[_1472 + 68] = mem[_1472 + 70 len 30]
            revert with memory
              from mem[64]
               len _1472 + -mem[64] + 100
        _846 = mem[64]
        mem[64] = mem[64] + 64
        mem[_846] = 26
        mem[_846 + 32] = 'SafeMath: division by zero'
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor32 / _tTotal:
            _910 = mem[64]
            mem[64] = mem[64] + 64
            mem[_910] = 26
            mem[_910 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if 0 > stor26[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor32:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * arg1 > stor26[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor26[address(msg.sender)] += -1 * t / s * arg1
                if t / s * arg1 > stor32:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor32 += -1 * t / s * arg1
        else:
            _911 = mem[64]
            mem[64] = mem[64] + 64
            mem[_911] = 26
            mem[_911 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if 0 > stor26[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor32:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor32 / _tTotal * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * arg1 > stor26[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor26[address(msg.sender)] += -1 * stor32 / _tTotal * arg1
                if stor32 / _tTotal * arg1 > stor32:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor32 += -1 * stor32 / _tTotal * arg1
    else:
        if 2 * arg1 / 50 / arg1 / 50 != 2:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 2 * arg1 / 50 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = _tTotal
        t = stor32
        while idx < stor30.length:
            mem[0] = stor30[idx]
            mem[32] = 26
            if stor26[stor30[idx]] > t:
                _871 = mem[64]
                mem[64] = mem[64] + 64
                mem[_871] = 26
                mem[_871 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _871 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 2 * arg1 / 50:
                        _1035 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1035] = 30
                        mem[_1035 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 26
                        _1125 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1125] = 30
                        mem[_1125 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor26[address(msg.sender)]:
                            _1163 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1163 + 68] = mem[idx + _1125 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1163 + 68] = mem[_1163 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1163 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 26
                        _1259 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1259] = 30
                        mem[_1259 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor32:
                            if arg1 + _tFeeTotal < _tFeeTotal:
                                revert with 0, 'SafeMath: addition overflow'
                            _tFeeTotal += arg1
                        _1329 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1329 + 68] = mem[idx + _1259 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1329 + 68] = mem[_1329 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1329 + -mem[64] + 100
                    if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1038 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1038] = 30
                    mem[_1038 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 / _tTotal * 2 * arg1 / 50 > 0:
                        _1054 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1054 + 68] = mem[idx + _1038 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1054 + 68] = mem[_1054 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1054 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 26
                    _1147 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1147] = 30
                    mem[_1147 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor26[address(msg.sender)]:
                        _1196 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1196 + 68] = mem[idx + _1147 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1196 + 68] = mem[_1196 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1196 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 26
                    _1291 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1291] = 30
                    mem[_1291 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor32:
                        if arg1 + _tFeeTotal < _tFeeTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        _tFeeTotal += arg1
                    _1368 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1368 + 68] = mem[idx + _1291 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1368 + 68] = mem[_1368 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1368 + -mem[64] + 100
                if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 50:
                    _1037 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1037] = 30
                    mem[_1037 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor32 / _tTotal * arg1:
                        _1051 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1051 + 68] = mem[idx + _1037 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1051 + 68] = mem[_1051 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1051 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 26
                    _1146 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1146] = 30
                    mem[_1146 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 / _tTotal * arg1 > stor26[address(msg.sender)]:
                        _1193 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1193 + 68] = mem[idx + _1146 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1193 + 68] = mem[_1193 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1193 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 26
                    stor26[address(msg.sender)] += -1 * stor32 / _tTotal * arg1
                    _1288 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1288] = 30
                    mem[_1288 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 / _tTotal * arg1 <= stor32:
                        stor32 += -1 * stor32 / _tTotal * arg1
                        if arg1 + _tFeeTotal < _tFeeTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        _tFeeTotal += arg1
                    _1365 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1365 + 68] = mem[idx + _1288 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1365 + 68] = mem[_1365 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1365 + -mem[64] + 100
                if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1042 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1042] = 30
                mem[_1042 + 32] = 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * 2 * arg1 / 50 > stor32 / _tTotal * arg1:
                    _1069 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1069 + 68] = mem[idx + _1042 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1069 + 68] = mem[_1069 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1069 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 26
                _1162 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1162] = 30
                mem[_1162 + 32] = 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * arg1 > stor26[address(msg.sender)]:
                    _1227 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1227 + 68] = mem[idx + _1162 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1227 + 68] = mem[_1227 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1227 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 26
                stor26[address(msg.sender)] += -1 * stor32 / _tTotal * arg1
                _1324 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1324] = 30
                mem[_1324 + 32] = 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * arg1 <= stor32:
                    stor32 += -1 * stor32 / _tTotal * arg1
                    if arg1 + _tFeeTotal < _tFeeTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    _tFeeTotal += arg1
                _1405 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1405 + 68] = mem[idx + _1324 + 32]
                    idx = idx + 32
                    continue 
                mem[_1405 + 68] = mem[_1405 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1405 + -mem[64] + 100
            require idx < stor30.length
            mem[0] = stor30[idx]
            mem[32] = 27
            if stor27[stor30[idx]] <= s:
                require idx < stor30.length
                mem[0] = stor30[idx]
                mem[32] = 26
                _881 = mem[64]
                mem[64] = mem[64] + 64
                mem[_881] = 30
                mem[_881 + 32] = 'SafeMath: subtraction overflow'
                if stor26[stor30[idx]] > t:
                    _896 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _896 + 68] = mem[idx + _881 + 32]
                        idx = idx + 32
                        continue 
                    mem[_896 + 68] = mem[_896 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _896 + -mem[64] + 100
                require idx < stor30.length
                mem[0] = stor30[idx]
                mem[32] = 27
                _956 = mem[64]
                mem[64] = mem[64] + 64
                mem[_956] = 30
                mem[_956 + 32] = 'SafeMath: subtraction overflow'
                if stor27[stor30[idx]] <= s:
                    idx = idx + 1
                    s = s - stor27[stor30[idx]]
                    t = t - stor26[stor30[idx]]
                    continue 
                _983 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _983 + 68] = mem[idx + _956 + 32]
                    idx = idx + 32
                    continue 
                mem[_983 + 68] = mem[_983 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _983 + -mem[64] + 100
            _889 = mem[64]
            mem[64] = mem[64] + 64
            mem[_889] = 26
            mem[_889 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _889 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 2 * arg1 / 50:
                    _1045 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1045] = 30
                    mem[_1045 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    _1172 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1172] = 30
                    mem[_1172 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor26[address(msg.sender)]:
                        _1233 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1233 + 68] = mem[idx + _1172 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1233 + 68] = mem[_1233 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1233 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 26
                    _1336 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1336] = 30
                    mem[_1336 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor32:
                        if arg1 + _tFeeTotal < _tFeeTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        _tFeeTotal += arg1
                    _1414 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1414 + 68] = mem[idx + _1336 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1414 + 68] = mem[_1414 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1414 + -mem[64] + 100
                if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1058 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1058] = 30
                mem[_1058 + 32] = 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * 2 * arg1 / 50 > 0:
                    _1084 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1084 + 68] = mem[idx + _1058 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1084 + 68] = mem[_1084 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1084 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 26
                _1202 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1202] = 30
                mem[_1202 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor26[address(msg.sender)]:
                    _1265 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1265 + 68] = mem[idx + _1202 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1265 + 68] = mem[_1265 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1265 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 26
                _1376 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1376] = 30
                mem[_1376 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor32:
                    if arg1 + _tFeeTotal < _tFeeTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    _tFeeTotal += arg1
                _1458 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1458 + 68] = mem[idx + _1376 + 32]
                    idx = idx + 32
                    continue 
                mem[_1458 + 68] = mem[_1458 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1458 + -mem[64] + 100
            if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 2 * arg1 / 50:
                _1057 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1057] = 30
                mem[_1057 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor32 / _tTotal * arg1:
                    _1081 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1081 + 68] = mem[idx + _1057 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1081 + 68] = mem[_1081 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1081 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 26
                _1201 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1201] = 30
                mem[_1201 + 32] = 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * arg1 > stor26[address(msg.sender)]:
                    _1262 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1262 + 68] = mem[idx + _1201 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1262 + 68] = mem[_1262 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1262 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 26
                stor26[address(msg.sender)] += -1 * stor32 / _tTotal * arg1
                _1373 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1373] = 30
                mem[_1373 + 32] = 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * arg1 <= stor32:
                    stor32 += -1 * stor32 / _tTotal * arg1
                    if arg1 + _tFeeTotal < _tFeeTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    _tFeeTotal += arg1
                _1455 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1455 + 68] = mem[idx + _1373 + 32]
                    idx = idx + 32
                    continue 
                mem[_1455 + 68] = mem[_1455 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1455 + -mem[64] + 100
            if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1072 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1072] = 30
            mem[_1072 + 32] = 'SafeMath: subtraction overflow'
            if stor32 / _tTotal * 2 * arg1 / 50 > stor32 / _tTotal * arg1:
                _1101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1101 + 68] = mem[idx + _1072 + 32]
                    idx = idx + 32
                    continue 
                mem[_1101 + 68] = mem[_1101 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1101 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 26
            _1232 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1232] = 30
            mem[_1232 + 32] = 'SafeMath: subtraction overflow'
            if stor32 / _tTotal * arg1 > stor26[address(msg.sender)]:
                _1295 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1295 + 68] = mem[idx + _1232 + 32]
                    idx = idx + 32
                    continue 
                mem[_1295 + 68] = mem[_1295 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1295 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 26
            stor26[address(msg.sender)] += -1 * stor32 / _tTotal * arg1
            _1409 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1409] = 30
            mem[_1409 + 32] = 'SafeMath: subtraction overflow'
            if stor32 / _tTotal * arg1 <= stor32:
                stor32 += -1 * stor32 / _tTotal * arg1
                if arg1 + _tFeeTotal < _tFeeTotal:
                    revert with 0, 'SafeMath: addition overflow'
                _tFeeTotal += arg1
            _1499 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1499 + 68] = mem[idx + _1409 + 32]
                idx = idx + 32
                continue 
            mem[_1499 + 68] = mem[_1499 + 70 len 30]
            revert with memory
              from mem[64]
               len _1499 + -mem[64] + 100
        _841 = mem[64]
        mem[64] = mem[64] + 64
        mem[_841] = 26
        mem[_841 + 32] = 'SafeMath: division by zero'
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor32 / _tTotal:
            _903 = mem[64]
            mem[64] = mem[64] + 64
            mem[_903] = 26
            mem[_903 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if 2 * arg1 / 50:
                    if t / s * 2 * arg1 / 50 / 2 * arg1 / 50 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 2 * arg1 / 50 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor26[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor32:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 50:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * 2 * arg1 / 50 / 2 * arg1 / 50 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 2 * arg1 / 50 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                if t / s * arg1 > stor26[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor26[address(msg.sender)] += -1 * t / s * arg1
                if t / s * arg1 > stor32:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor32 += -1 * t / s * arg1
        else:
            _904 = mem[64]
            mem[64] = mem[64] + 64
            mem[_904] = 26
            mem[_904 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if 2 * arg1 / 50:
                    if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor32 / _tTotal * 2 * arg1 / 50 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor26[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor32:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor32 / _tTotal * arg1 / arg1 != stor32 / _tTotal:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 50:
                    if 0 > stor32 / _tTotal * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor32 / _tTotal * 2 * arg1 / 50 / 2 * arg1 / 50 != stor32 / _tTotal:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor32 / _tTotal * 2 * arg1 / 50 > stor32 / _tTotal * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                if stor32 / _tTotal * arg1 > stor26[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor26[address(msg.sender)] += -1 * stor32 / _tTotal * arg1
                if stor32 / _tTotal * arg1 > stor32:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor32 += -1 * stor32 / _tTotal * arg1
    if arg1 + _tFeeTotal < _tFeeTotal:
        revert with 0, 'SafeMath: addition overflow'
    _tFeeTotal += arg1
}

function addLiquidity() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require not liquidityAdded
    if not eth.balance(this.address):
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not eth.balance(this.address):
            mem[64] = 224
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            call stor4 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor5 with:
                 gas 2300 wei
            liquidityAdded = 1
            require not moonMissionStarted
            if stor29[address(this.address)]:
                if sub_84f44adf > stor27[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(this.address)
                call this.address.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor1 = 0
                stor2 += block.timestamp
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if stor27[address(this.address)] - sub_84f44adf:
                    if stor27[address(this.address)] - sub_84f44adf > stor26[this.address]:
                        revert with 0, 'Burn amount exceeds balance'
                    stor26[this.address] = stor26[this.address] - stor27[address(this.address)] + sub_84f44adf
                    if stor27[address(this.address)] - sub_84f44adf > _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _tTotal = _tTotal - stor27[address(this.address)] + sub_84f44adf
                    emit Transfer((stor27[address(this.address)] - sub_84f44adf), this.address, 0);
            else:
                mem[0] = this.address
                mem[32] = 26
                if stor26[address(this.address)] > stor32:
                    revert with 0, 32, 42, 0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e, mem[334 len 22]
                idx = 0
                s = _tTotal
                t = stor32
                while idx < stor30.length:
                    mem[0] = stor30[idx]
                    mem[32] = 26
                    if stor26[stor30[idx]] > t:
                        _1362 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1362] = 26
                        mem[_1362 + 32] = 'SafeMath: division by zero'
                        if not _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1362 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _1539 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1539] = 26
                        mem[_1539 + 32] = 'SafeMath: division by zero'
                        if not stor32 / _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1539 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _1807 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1807] = 30
                        mem[_1807 + 32] = 'SafeMath: subtraction overflow'
                        if sub_84f44adf > stor26[address(this.address)] / stor32 / _tTotal:
                            _1845 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1845 + 68] = mem[idx + _1807 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1845 + 68] = mem[_1845 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1845 + -mem[64] + 100
                        require ext_code.size(this.address)
                        call this.address.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor1 = 0
                        stor2 += block.timestamp
                        mem[mem[64] + 68] = sub_84f44adf
                        mem[mem[64] + 100] = eth.balance(this.address)
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp + 300
                        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if not (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf:
                            presaleTime = 0
                            moonMissionStarted = 1
                        _2050 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2050] = 27
                        mem[_2050 + 32] = 'Burn amount exceeds balance'
                        mem[32] = 26
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > stor26[this.address]:
                            _2076 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            idx = 0
                            while idx < 27:
                                mem[idx + _2076 + 68] = mem[idx + _2050 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2076 + 68] = mem[_2076 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _2076 + -mem[64] + 100
                        mem[0] = this.address
                        mem[32] = 26
                        stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        _2116 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2116] = 30
                        mem[_2116 + 32] = 'SafeMath: subtraction overflow'
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf <= _tTotal:
                            _tTotal = _tTotal - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                            emit Transfer(((stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf), this.address, 0);
                            presaleTime = 0
                            moonMissionStarted = 1
                        _2175 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2175 + 68] = mem[idx + _2116 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2175 + 68] = mem[_2175 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2175 + -mem[64] + 100
                    require idx < stor30.length
                    mem[0] = stor30[idx]
                    mem[32] = 27
                    if stor27[stor30[idx]] <= s:
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 26
                        _1376 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1376] = 30
                        mem[_1376 + 32] = 'SafeMath: subtraction overflow'
                        if stor26[stor30[idx]] > t:
                            _1410 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1410 + 68] = mem[idx + _1376 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1410 + 68] = mem[_1410 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1410 + -mem[64] + 100
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 27
                        _1541 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1541] = 30
                        mem[_1541 + 32] = 'SafeMath: subtraction overflow'
                        if stor27[stor30[idx]] <= s:
                            idx = idx + 1
                            s = s - stor27[stor30[idx]]
                            t = t - stor26[stor30[idx]]
                            continue 
                        _1612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1612 + 68] = mem[idx + _1541 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1612 + 68] = mem[_1612 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1612 + -mem[64] + 100
                    _1396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1396] = 26
                    mem[_1396 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1396 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _1615 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1615] = 26
                    mem[_1615 + 32] = 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1615 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _1848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1848] = 30
                    mem[_1848 + 32] = 'SafeMath: subtraction overflow'
                    if sub_84f44adf > stor26[address(this.address)] / stor32 / _tTotal:
                        _1878 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1878 + 68] = mem[idx + _1848 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1878 + 68] = mem[_1878 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1878 + -mem[64] + 100
                    require ext_code.size(this.address)
                    call this.address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor1 = 0
                    stor2 += block.timestamp
                    mem[mem[64] + 68] = sub_84f44adf
                    mem[mem[64] + 100] = eth.balance(this.address)
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp + 300
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf:
                        presaleTime = 0
                        moonMissionStarted = 1
                    _2079 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2079] = 27
                    mem[_2079 + 32] = 'Burn amount exceeds balance'
                    mem[32] = 26
                    if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > stor26[this.address]:
                        _2118 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        idx = 0
                        while idx < 27:
                            mem[idx + _2118 + 68] = mem[idx + _2079 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2118 + 68] = mem[_2118 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _2118 + -mem[64] + 100
                    mem[0] = this.address
                    mem[32] = 26
                    stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                    _2179 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2179] = 30
                    mem[_2179 + 32] = 'SafeMath: subtraction overflow'
                    if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf <= _tTotal:
                        _tTotal = _tTotal - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        emit Transfer(((stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf), this.address, 0);
                        presaleTime = 0
                        moonMissionStarted = 1
                    _2237 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2237 + 68] = mem[idx + _2179 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2237 + 68] = mem[_2237 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2237 + -mem[64] + 100
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor32 / _tTotal:
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_84f44adf > stor26[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(this.address)
                    call this.address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor1 = 0
                    stor2 += block.timestamp
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if (stor26[address(this.address)] / t / s) - sub_84f44adf:
                        if (stor26[address(this.address)] / t / s) - sub_84f44adf > stor26[this.address]:
                            revert with 0, 'Burn amount exceeds balance'
                        stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / t / s) + sub_84f44adf
                        if (stor26[address(this.address)] / t / s) - sub_84f44adf > _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _tTotal = _tTotal - (stor26[address(this.address)] / t / s) + sub_84f44adf
                        emit Transfer(((stor26[address(this.address)] / t / s) - sub_84f44adf), this.address, 0);
                else:
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_84f44adf > stor26[address(this.address)] / stor32 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(this.address)
                    call this.address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor1 = 0
                    stor2 += block.timestamp
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf:
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > stor26[this.address]:
                            revert with 0, 'Burn amount exceeds balance'
                        stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _tTotal = _tTotal - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        emit Transfer(((stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf), this.address, 0);
        else:
            if 20 * eth.balance(this.address) / eth.balance(this.address) != 20:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[64] = 224
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            call stor4 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor5 with:
               value 20 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            liquidityAdded = 1
            require not moonMissionStarted
            if stor29[address(this.address)]:
                if sub_84f44adf > stor27[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(this.address)
                call this.address.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor1 = 0
                stor2 += block.timestamp
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if stor27[address(this.address)] - sub_84f44adf:
                    if stor27[address(this.address)] - sub_84f44adf > stor26[this.address]:
                        revert with 0, 'Burn amount exceeds balance'
                    stor26[this.address] = stor26[this.address] - stor27[address(this.address)] + sub_84f44adf
                    if stor27[address(this.address)] - sub_84f44adf > _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _tTotal = _tTotal - stor27[address(this.address)] + sub_84f44adf
                    emit Transfer((stor27[address(this.address)] - sub_84f44adf), this.address, 0);
            else:
                mem[0] = this.address
                mem[32] = 26
                if stor26[address(this.address)] > stor32:
                    revert with 0, 32, 42, 0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e, mem[334 len 22]
                idx = 0
                s = _tTotal
                t = stor32
                while idx < stor30.length:
                    mem[0] = stor30[idx]
                    mem[32] = 26
                    if stor26[stor30[idx]] > t:
                        _1357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1357] = 26
                        mem[_1357 + 32] = 'SafeMath: division by zero'
                        if not _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1357 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _1531 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1531] = 26
                        mem[_1531 + 32] = 'SafeMath: division by zero'
                        if not stor32 / _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1531 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _1801 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1801] = 30
                        mem[_1801 + 32] = 'SafeMath: subtraction overflow'
                        if sub_84f44adf > stor26[address(this.address)] / stor32 / _tTotal:
                            _1839 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1839 + 68] = mem[idx + _1801 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1839 + 68] = mem[_1839 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1839 + -mem[64] + 100
                        require ext_code.size(this.address)
                        call this.address.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor1 = 0
                        stor2 += block.timestamp
                        mem[mem[64] + 68] = sub_84f44adf
                        mem[mem[64] + 100] = eth.balance(this.address)
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp + 300
                        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if not (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf:
                            presaleTime = 0
                            moonMissionStarted = 1
                        _2043 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2043] = 27
                        mem[_2043 + 32] = 'Burn amount exceeds balance'
                        mem[32] = 26
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > stor26[this.address]:
                            _2069 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            idx = 0
                            while idx < 27:
                                mem[idx + _2069 + 68] = mem[idx + _2043 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2069 + 68] = mem[_2069 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _2069 + -mem[64] + 100
                        mem[0] = this.address
                        mem[32] = 26
                        stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        _2107 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2107] = 30
                        mem[_2107 + 32] = 'SafeMath: subtraction overflow'
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf <= _tTotal:
                            _tTotal = _tTotal - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                            emit Transfer(((stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf), this.address, 0);
                            presaleTime = 0
                            moonMissionStarted = 1
                        _2163 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2163 + 68] = mem[idx + _2107 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2163 + 68] = mem[_2163 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2163 + -mem[64] + 100
                    require idx < stor30.length
                    mem[0] = stor30[idx]
                    mem[32] = 27
                    if stor27[stor30[idx]] <= s:
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 26
                        _1373 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1373] = 30
                        mem[_1373 + 32] = 'SafeMath: subtraction overflow'
                        if stor26[stor30[idx]] > t:
                            _1406 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1406 + 68] = mem[idx + _1373 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1406 + 68] = mem[_1406 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1406 + -mem[64] + 100
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 27
                        _1533 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1533] = 30
                        mem[_1533 + 32] = 'SafeMath: subtraction overflow'
                        if stor27[stor30[idx]] <= s:
                            idx = idx + 1
                            s = s - stor27[stor30[idx]]
                            t = t - stor26[stor30[idx]]
                            continue 
                        _1600 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1600 + 68] = mem[idx + _1533 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1600 + 68] = mem[_1600 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1600 + -mem[64] + 100
                    _1391 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1391] = 26
                    mem[_1391 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1391 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _1603 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1603] = 26
                    mem[_1603 + 32] = 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1603 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _1842 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1842] = 30
                    mem[_1842 + 32] = 'SafeMath: subtraction overflow'
                    if sub_84f44adf > stor26[address(this.address)] / stor32 / _tTotal:
                        _1870 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1870 + 68] = mem[idx + _1842 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1870 + 68] = mem[_1870 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1870 + -mem[64] + 100
                    require ext_code.size(this.address)
                    call this.address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor1 = 0
                    stor2 += block.timestamp
                    mem[mem[64] + 68] = sub_84f44adf
                    mem[mem[64] + 100] = eth.balance(this.address)
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp + 300
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf:
                        presaleTime = 0
                        moonMissionStarted = 1
                    _2072 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2072] = 27
                    mem[_2072 + 32] = 'Burn amount exceeds balance'
                    mem[32] = 26
                    if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > stor26[this.address]:
                        _2109 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        idx = 0
                        while idx < 27:
                            mem[idx + _2109 + 68] = mem[idx + _2072 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2109 + 68] = mem[_2109 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _2109 + -mem[64] + 100
                    mem[0] = this.address
                    mem[32] = 26
                    stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                    _2167 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2167] = 30
                    mem[_2167 + 32] = 'SafeMath: subtraction overflow'
                    if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf <= _tTotal:
                        _tTotal = _tTotal - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        emit Transfer(((stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf), this.address, 0);
                        presaleTime = 0
                        moonMissionStarted = 1
                    _2226 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2226 + 68] = mem[idx + _2167 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2226 + 68] = mem[_2226 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2226 + -mem[64] + 100
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor32 / _tTotal:
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_84f44adf > stor26[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(this.address)
                    call this.address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor1 = 0
                    stor2 += block.timestamp
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if (stor26[address(this.address)] / t / s) - sub_84f44adf:
                        if (stor26[address(this.address)] / t / s) - sub_84f44adf > stor26[this.address]:
                            revert with 0, 'Burn amount exceeds balance'
                        stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / t / s) + sub_84f44adf
                        if (stor26[address(this.address)] / t / s) - sub_84f44adf > _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _tTotal = _tTotal - (stor26[address(this.address)] / t / s) + sub_84f44adf
                        emit Transfer(((stor26[address(this.address)] / t / s) - sub_84f44adf), this.address, 0);
                else:
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_84f44adf > stor26[address(this.address)] / stor32 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(this.address)
                    call this.address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor1 = 0
                    stor2 += block.timestamp
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf:
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > stor26[this.address]:
                            revert with 0, 'Burn amount exceeds balance'
                        stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _tTotal = _tTotal - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        emit Transfer(((stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf), this.address, 0);
    else:
        if 30 * eth.balance(this.address) / eth.balance(this.address) != 30:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not eth.balance(this.address):
            mem[64] = 224
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            call stor4 with:
               value 30 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor5 with:
                 gas 2300 wei
            liquidityAdded = 1
            require not moonMissionStarted
            if stor29[address(this.address)]:
                if sub_84f44adf > stor27[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(this.address)
                call this.address.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor1 = 0
                stor2 += block.timestamp
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if stor27[address(this.address)] - sub_84f44adf:
                    if stor27[address(this.address)] - sub_84f44adf > stor26[this.address]:
                        revert with 0, 'Burn amount exceeds balance'
                    stor26[this.address] = stor26[this.address] - stor27[address(this.address)] + sub_84f44adf
                    if stor27[address(this.address)] - sub_84f44adf > _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _tTotal = _tTotal - stor27[address(this.address)] + sub_84f44adf
                    emit Transfer((stor27[address(this.address)] - sub_84f44adf), this.address, 0);
            else:
                mem[0] = this.address
                mem[32] = 26
                if stor26[address(this.address)] > stor32:
                    revert with 0, 32, 42, 0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e, mem[334 len 22]
                idx = 0
                s = _tTotal
                t = stor32
                while idx < stor30.length:
                    mem[0] = stor30[idx]
                    mem[32] = 26
                    if stor26[stor30[idx]] > t:
                        _1352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1352] = 26
                        mem[_1352 + 32] = 'SafeMath: division by zero'
                        if not _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1352 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _1523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1523] = 26
                        mem[_1523 + 32] = 'SafeMath: division by zero'
                        if not stor32 / _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1523 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _1795 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1795] = 30
                        mem[_1795 + 32] = 'SafeMath: subtraction overflow'
                        if sub_84f44adf > stor26[address(this.address)] / stor32 / _tTotal:
                            _1833 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1833 + 68] = mem[idx + _1795 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1833 + 68] = mem[_1833 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1833 + -mem[64] + 100
                        require ext_code.size(this.address)
                        call this.address.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor1 = 0
                        stor2 += block.timestamp
                        mem[mem[64] + 68] = sub_84f44adf
                        mem[mem[64] + 100] = eth.balance(this.address)
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp + 300
                        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if not (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf:
                            presaleTime = 0
                            moonMissionStarted = 1
                        _2036 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2036] = 27
                        mem[_2036 + 32] = 'Burn amount exceeds balance'
                        mem[32] = 26
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > stor26[this.address]:
                            _2062 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            idx = 0
                            while idx < 27:
                                mem[idx + _2062 + 68] = mem[idx + _2036 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2062 + 68] = mem[_2062 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _2062 + -mem[64] + 100
                        mem[0] = this.address
                        mem[32] = 26
                        stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        _2098 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2098] = 30
                        mem[_2098 + 32] = 'SafeMath: subtraction overflow'
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf <= _tTotal:
                            _tTotal = _tTotal - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                            emit Transfer(((stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf), this.address, 0);
                            presaleTime = 0
                            moonMissionStarted = 1
                        _2151 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2151 + 68] = mem[idx + _2098 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2151 + 68] = mem[_2151 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2151 + -mem[64] + 100
                    require idx < stor30.length
                    mem[0] = stor30[idx]
                    mem[32] = 27
                    if stor27[stor30[idx]] <= s:
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 26
                        _1370 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1370] = 30
                        mem[_1370 + 32] = 'SafeMath: subtraction overflow'
                        if stor26[stor30[idx]] > t:
                            _1402 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1402 + 68] = mem[idx + _1370 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1402 + 68] = mem[_1402 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1402 + -mem[64] + 100
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 27
                        _1525 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1525] = 30
                        mem[_1525 + 32] = 'SafeMath: subtraction overflow'
                        if stor27[stor30[idx]] <= s:
                            idx = idx + 1
                            s = s - stor27[stor30[idx]]
                            t = t - stor26[stor30[idx]]
                            continue 
                        _1588 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1588 + 68] = mem[idx + _1525 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1588 + 68] = mem[_1588 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1588 + -mem[64] + 100
                    _1386 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1386] = 26
                    mem[_1386 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1386 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _1591 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1591] = 26
                    mem[_1591 + 32] = 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1591 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _1836 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1836] = 30
                    mem[_1836 + 32] = 'SafeMath: subtraction overflow'
                    if sub_84f44adf > stor26[address(this.address)] / stor32 / _tTotal:
                        _1862 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1862 + 68] = mem[idx + _1836 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1862 + 68] = mem[_1862 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1862 + -mem[64] + 100
                    require ext_code.size(this.address)
                    call this.address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor1 = 0
                    stor2 += block.timestamp
                    mem[mem[64] + 68] = sub_84f44adf
                    mem[mem[64] + 100] = eth.balance(this.address)
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp + 300
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf:
                        presaleTime = 0
                        moonMissionStarted = 1
                    _2065 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2065] = 27
                    mem[_2065 + 32] = 'Burn amount exceeds balance'
                    mem[32] = 26
                    if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > stor26[this.address]:
                        _2100 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        idx = 0
                        while idx < 27:
                            mem[idx + _2100 + 68] = mem[idx + _2065 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2100 + 68] = mem[_2100 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _2100 + -mem[64] + 100
                    mem[0] = this.address
                    mem[32] = 26
                    stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                    _2155 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2155] = 30
                    mem[_2155 + 32] = 'SafeMath: subtraction overflow'
                    if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf <= _tTotal:
                        _tTotal = _tTotal - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        emit Transfer(((stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf), this.address, 0);
                        presaleTime = 0
                        moonMissionStarted = 1
                    _2215 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2215 + 68] = mem[idx + _2155 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2215 + 68] = mem[_2215 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2215 + -mem[64] + 100
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor32 / _tTotal:
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_84f44adf > stor26[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(this.address)
                    call this.address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor1 = 0
                    stor2 += block.timestamp
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if (stor26[address(this.address)] / t / s) - sub_84f44adf:
                        if (stor26[address(this.address)] / t / s) - sub_84f44adf > stor26[this.address]:
                            revert with 0, 'Burn amount exceeds balance'
                        stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / t / s) + sub_84f44adf
                        if (stor26[address(this.address)] / t / s) - sub_84f44adf > _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _tTotal = _tTotal - (stor26[address(this.address)] / t / s) + sub_84f44adf
                        emit Transfer(((stor26[address(this.address)] / t / s) - sub_84f44adf), this.address, 0);
                else:
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_84f44adf > stor26[address(this.address)] / stor32 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(this.address)
                    call this.address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor1 = 0
                    stor2 += block.timestamp
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf:
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > stor26[this.address]:
                            revert with 0, 'Burn amount exceeds balance'
                        stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _tTotal = _tTotal - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        emit Transfer(((stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf), this.address, 0);
        else:
            if 20 * eth.balance(this.address) / eth.balance(this.address) != 20:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[64] = 224
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            call stor4 with:
               value 30 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor5 with:
               value 20 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            liquidityAdded = 1
            require not moonMissionStarted
            if stor29[address(this.address)]:
                if sub_84f44adf > stor27[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(this.address)
                call this.address.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor1 = 0
                stor2 += block.timestamp
                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if stor27[address(this.address)] - sub_84f44adf:
                    if stor27[address(this.address)] - sub_84f44adf > stor26[this.address]:
                        revert with 0, 'Burn amount exceeds balance'
                    stor26[this.address] = stor26[this.address] - stor27[address(this.address)] + sub_84f44adf
                    if stor27[address(this.address)] - sub_84f44adf > _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _tTotal = _tTotal - stor27[address(this.address)] + sub_84f44adf
                    emit Transfer((stor27[address(this.address)] - sub_84f44adf), this.address, 0);
            else:
                mem[0] = this.address
                mem[32] = 26
                if stor26[address(this.address)] > stor32:
                    revert with 0, 32, 42, 0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e, mem[334 len 22]
                idx = 0
                s = _tTotal
                t = stor32
                while idx < stor30.length:
                    mem[0] = stor30[idx]
                    mem[32] = 26
                    if stor26[stor30[idx]] > t:
                        _1347 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1347] = 26
                        mem[_1347 + 32] = 'SafeMath: division by zero'
                        if not _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1347 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _1515 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1515] = 26
                        mem[_1515 + 32] = 'SafeMath: division by zero'
                        if not stor32 / _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1515 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _1789 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1789] = 30
                        mem[_1789 + 32] = 'SafeMath: subtraction overflow'
                        if sub_84f44adf > stor26[address(this.address)] / stor32 / _tTotal:
                            _1827 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1827 + 68] = mem[idx + _1789 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1827 + 68] = mem[_1827 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1827 + -mem[64] + 100
                        require ext_code.size(this.address)
                        call this.address.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor1 = 0
                        stor2 += block.timestamp
                        mem[mem[64] + 68] = sub_84f44adf
                        mem[mem[64] + 100] = eth.balance(this.address)
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp + 300
                        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if not (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf:
                            presaleTime = 0
                            moonMissionStarted = 1
                        _2029 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2029] = 27
                        mem[_2029 + 32] = 'Burn amount exceeds balance'
                        mem[32] = 26
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > stor26[this.address]:
                            _2055 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 27
                            idx = 0
                            while idx < 27:
                                mem[idx + _2055 + 68] = mem[idx + _2029 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2055 + 68] = mem[_2055 + 73 len 27]
                            revert with memory
                              from mem[64]
                               len _2055 + -mem[64] + 100
                        mem[0] = this.address
                        mem[32] = 26
                        stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        _2089 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2089] = 30
                        mem[_2089 + 32] = 'SafeMath: subtraction overflow'
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf <= _tTotal:
                            _tTotal = _tTotal - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                            emit Transfer(((stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf), this.address, 0);
                            presaleTime = 0
                            moonMissionStarted = 1
                        _2139 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2139 + 68] = mem[idx + _2089 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2139 + 68] = mem[_2139 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2139 + -mem[64] + 100
                    require idx < stor30.length
                    mem[0] = stor30[idx]
                    mem[32] = 27
                    if stor27[stor30[idx]] <= s:
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 26
                        _1367 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1367] = 30
                        mem[_1367 + 32] = 'SafeMath: subtraction overflow'
                        if stor26[stor30[idx]] > t:
                            _1398 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1398 + 68] = mem[idx + _1367 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1398 + 68] = mem[_1398 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1398 + -mem[64] + 100
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 27
                        _1517 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1517] = 30
                        mem[_1517 + 32] = 'SafeMath: subtraction overflow'
                        if stor27[stor30[idx]] <= s:
                            idx = idx + 1
                            s = s - stor27[stor30[idx]]
                            t = t - stor26[stor30[idx]]
                            continue 
                        _1576 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1576 + 68] = mem[idx + _1517 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1576 + 68] = mem[_1576 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1576 + -mem[64] + 100
                    _1381 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1381] = 26
                    mem[_1381 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1381 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _1579 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1579] = 26
                    mem[_1579 + 32] = 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1579 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _1830 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1830] = 30
                    mem[_1830 + 32] = 'SafeMath: subtraction overflow'
                    if sub_84f44adf > stor26[address(this.address)] / stor32 / _tTotal:
                        _1854 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1854 + 68] = mem[idx + _1830 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1854 + 68] = mem[_1854 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1854 + -mem[64] + 100
                    require ext_code.size(this.address)
                    call this.address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor1 = 0
                    stor2 += block.timestamp
                    mem[mem[64] + 68] = sub_84f44adf
                    mem[mem[64] + 100] = eth.balance(this.address)
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp + 300
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf:
                        presaleTime = 0
                        moonMissionStarted = 1
                    _2058 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2058] = 27
                    mem[_2058 + 32] = 'Burn amount exceeds balance'
                    mem[32] = 26
                    if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > stor26[this.address]:
                        _2091 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        idx = 0
                        while idx < 27:
                            mem[idx + _2091 + 68] = mem[idx + _2058 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2091 + 68] = mem[_2091 + 73 len 27]
                        revert with memory
                          from mem[64]
                           len _2091 + -mem[64] + 100
                    mem[0] = this.address
                    mem[32] = 26
                    stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                    _2143 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2143] = 30
                    mem[_2143 + 32] = 'SafeMath: subtraction overflow'
                    if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf <= _tTotal:
                        _tTotal = _tTotal - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        emit Transfer(((stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf), this.address, 0);
                        presaleTime = 0
                        moonMissionStarted = 1
                    _2204 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2204 + 68] = mem[idx + _2143 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2204 + 68] = mem[_2204 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2204 + -mem[64] + 100
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor32 / _tTotal:
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_84f44adf > stor26[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(this.address)
                    call this.address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor1 = 0
                    stor2 += block.timestamp
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if (stor26[address(this.address)] / t / s) - sub_84f44adf:
                        if (stor26[address(this.address)] / t / s) - sub_84f44adf > stor26[this.address]:
                            revert with 0, 'Burn amount exceeds balance'
                        stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / t / s) + sub_84f44adf
                        if (stor26[address(this.address)] / t / s) - sub_84f44adf > _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _tTotal = _tTotal - (stor26[address(this.address)] / t / s) + sub_84f44adf
                        emit Transfer(((stor26[address(this.address)] / t / s) - sub_84f44adf), this.address, 0);
                else:
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_84f44adf > stor26[address(this.address)] / stor32 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(this.address)
                    call this.address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, sub_84f44adf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor1 = 0
                    stor2 += block.timestamp
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, sub_84f44adf, sub_84f44adf, eth.balance(this.address), this.address, block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf:
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > stor26[this.address]:
                            revert with 0, 'Burn amount exceeds balance'
                        stor26[this.address] = stor26[this.address] - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        if (stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf > _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _tTotal = _tTotal - (stor26[address(this.address)] / stor32 / _tTotal) + sub_84f44adf
                        emit Transfer(((stor26[address(this.address)] / stor32 / _tTotal) - sub_84f44adf), this.address, 0);
    presaleTime = 0
    moonMissionStarted = 1
}

function buyTokens() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(msg.sender):
        if presaleTime <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6f50726573616c65206e6f74206163746976652c2063616e6e6f7420627579207965,
                        mem[198 len 30]
        if presaleTime > block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6f50726573616c65206e6f74206163746976652c2063616e6e6f7420627579207965,
                        mem[198 len 30]
        if msg.value < 10^18:
            revert with 0, 'You sent less than 1 FTM'
        if msg.value > 1000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x73596f752073656e74206d6f7265207468616e20746865206d617820313030302046544d2070657220757365,
                        mem[208 len 20]
        if ethSent >= 10^18 * presaleHardcap:
            revert with 0, 'Hard cap reached'
        if ethSent + msg.value < msg.value:
            revert with 0, 'SafeMath: addition overflow'
        if ethSent + msg.value >= 10^18 * presaleHardcap:
            revert with 0, 'Hardcap will be breached'
        if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value + sub_536c8c02[msg.sender] > 1000 * 10^18:
            revert with 0, 'You cannot buy that much more'
        if not msg.value:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[64] = 224
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if stor29[address(this.address)]:
                if stor27[address(this.address)] < 0:
                    revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[325 len 31]
                if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_536c8c02[msg.sender] += msg.value
                if msg.value + ethSent < ethSent:
                    revert with 0, 'SafeMath: addition overflow'
                ethSent += msg.value
                if 0 > stor26[this.address]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor26[msg.sender] < stor26[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_1b2cabba:
                    revert with 0, 'SafeMath: division by zero'
                if not sub_8a3be0b6:
                    if ethSent > 0:
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        if sub_be71ce9f > sub_49a6a335:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_49a6a335 -= sub_be71ce9f
                else:
                    if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        if ethSent > 0:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
                    else:
                        if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ethSent > 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
            else:
                mem[0] = this.address
                mem[32] = 26
                if stor26[address(this.address)] > stor32:
                    revert with 0, 32, 42, 0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e, mem[334 len 22]
                idx = 0
                s = _tTotal
                t = stor32
                while idx < stor30.length:
                    mem[0] = stor30[idx]
                    mem[32] = 26
                    if stor26[stor30[idx]] > t:
                        _2334 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2334] = 26
                        mem[_2334 + 32] = 'SafeMath: division by zero'
                        if not _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2334 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _2505 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2505] = 26
                        mem[_2505 + 32] = 'SafeMath: division by zero'
                        if not stor32 / _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2505 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if stor26[address(this.address)] / stor32 / _tTotal < 0:
                            revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                        if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_536c8c02[msg.sender] += msg.value
                        if msg.value + ethSent < ethSent:
                            revert with 0, 'SafeMath: addition overflow'
                        ethSent += msg.value
                        mem[0] = this.address
                        mem[32] = 26
                        _2918 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2918] = 30
                        mem[_2918 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor26[this.address]:
                            _2947 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2947 + 68] = mem[idx + _2918 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2947 + 68] = mem[_2947 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2947 + -mem[64] + 100
                        if stor26[msg.sender] < stor26[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 26
                        _3091 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3091] = 26
                        mem[_3091 + 32] = 'SafeMath: division by zero'
                        if not sub_1b2cabba:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3091 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_8a3be0b6:
                            if ethSent <= 0:
                                emit Transfer(0, this.address, msg.sender);
                                stor0 = 1
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            _3514 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3514] = 30
                            mem[_3514 + 32] = 'SafeMath: subtraction overflow'
                            if sub_be71ce9f <= sub_49a6a335:
                                sub_49a6a335 -= sub_be71ce9f
                                emit Transfer(0, this.address, msg.sender);
                                stor0 = 1
                            _3579 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3579 + 68] = mem[idx + _3514 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3579 + 68] = mem[_3579 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3579 + -mem[64] + 100
                        if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            if ethSent <= 0:
                                emit Transfer(0, this.address, msg.sender);
                                stor0 = 1
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            _3546 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3546] = 30
                            mem[_3546 + 32] = 'SafeMath: subtraction overflow'
                            if sub_be71ce9f <= sub_49a6a335:
                                sub_49a6a335 -= sub_be71ce9f
                                emit Transfer(0, this.address, msg.sender);
                                stor0 = 1
                            _3619 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3619 + 68] = mem[idx + _3546 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3619 + 68] = mem[_3619 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3619 + -mem[64] + 100
                        if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ethSent <= 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            emit Transfer(0, this.address, msg.sender);
                            stor0 = 1
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        _3578 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3578] = 30
                        mem[_3578 + 32] = 'SafeMath: subtraction overflow'
                        if sub_be71ce9f <= sub_49a6a335:
                            sub_49a6a335 -= sub_be71ce9f
                            emit Transfer(0, this.address, msg.sender);
                            stor0 = 1
                        _3659 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3659 + 68] = mem[idx + _3578 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3659 + 68] = mem[_3659 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3659 + -mem[64] + 100
                    require idx < stor30.length
                    mem[0] = stor30[idx]
                    mem[32] = 27
                    if stor27[stor30[idx]] <= s:
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 26
                        _2352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2352] = 30
                        mem[_2352 + 32] = 'SafeMath: subtraction overflow'
                        if stor26[stor30[idx]] > t:
                            _2384 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2384 + 68] = mem[idx + _2352 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2384 + 68] = mem[_2384 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2384 + -mem[64] + 100
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 27
                        _2507 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2507] = 30
                        mem[_2507 + 32] = 'SafeMath: subtraction overflow'
                        if stor27[stor30[idx]] <= s:
                            idx = idx + 1
                            s = s - stor27[stor30[idx]]
                            t = t - stor26[stor30[idx]]
                            continue 
                        _2570 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2570 + 68] = mem[idx + _2507 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2570 + 68] = mem[_2570 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2570 + -mem[64] + 100
                    _2368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2368] = 26
                    mem[_2368 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2368 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _2573 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2573] = 26
                    mem[_2573 + 32] = 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2573 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if stor26[address(this.address)] / stor32 / _tTotal < 0:
                        revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                    if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_536c8c02[msg.sender] += msg.value
                    if msg.value + ethSent < ethSent:
                        revert with 0, 'SafeMath: addition overflow'
                    ethSent += msg.value
                    mem[0] = this.address
                    mem[32] = 26
                    _2950 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2950] = 30
                    mem[_2950 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor26[this.address]:
                        _2988 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2988 + 68] = mem[idx + _2950 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2988 + 68] = mem[_2988 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2988 + -mem[64] + 100
                    if stor26[msg.sender] < stor26[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    _3154 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3154] = 26
                    mem[_3154 + 32] = 'SafeMath: division by zero'
                    if not sub_1b2cabba:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3154 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not sub_8a3be0b6:
                        if ethSent <= 0:
                            emit Transfer(0, this.address, msg.sender);
                            stor0 = 1
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        _3584 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3584] = 30
                        mem[_3584 + 32] = 'SafeMath: subtraction overflow'
                        if sub_be71ce9f <= sub_49a6a335:
                            sub_49a6a335 -= sub_be71ce9f
                            emit Transfer(0, this.address, msg.sender);
                            stor0 = 1
                        _3664 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3664 + 68] = mem[idx + _3584 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3664 + 68] = mem[_3664 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3664 + -mem[64] + 100
                    if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        if ethSent <= 0:
                            emit Transfer(0, this.address, msg.sender);
                            stor0 = 1
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        _3622 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3622] = 30
                        mem[_3622 + 32] = 'SafeMath: subtraction overflow'
                        if sub_be71ce9f <= sub_49a6a335:
                            sub_49a6a335 -= sub_be71ce9f
                            emit Transfer(0, this.address, msg.sender);
                            stor0 = 1
                        _3712 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3712 + 68] = mem[idx + _3622 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3712 + 68] = mem[_3712 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3712 + -mem[64] + 100
                    if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if ethSent <= 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        emit Transfer(0, this.address, msg.sender);
                        stor0 = 1
                    if timeBetweenRounds + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    presaleTime = timeBetweenRounds + block.timestamp
                    sub_8a3be0b6++
                    _3663 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3663] = 30
                    mem[_3663 + 32] = 'SafeMath: subtraction overflow'
                    if sub_be71ce9f <= sub_49a6a335:
                        sub_49a6a335 -= sub_be71ce9f
                        emit Transfer(0, this.address, msg.sender);
                        stor0 = 1
                    _3767 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3767 + 68] = mem[idx + _3663 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3767 + 68] = mem[_3767 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3767 + -mem[64] + 100
                _2236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2236] = 26
                mem[_2236 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor32 / _tTotal:
                    _2402 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2402] = 26
                    mem[_2402 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    _2629 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2629] = 26
                    mem[_2629 + 32] = 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero'
                    if stor26[address(this.address)] / t / s < 0:
                        revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                    if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_536c8c02[msg.sender] += msg.value
                    if msg.value + ethSent < ethSent:
                        revert with 0, 'SafeMath: addition overflow'
                    ethSent += msg.value
                    mem[0] = this.address
                    mem[32] = 26
                    _2983 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2983] = 30
                    mem[_2983 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor26[this.address]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor26[msg.sender] < stor26[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    _3194 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3194] = 26
                    mem[_3194 + 32] = 'SafeMath: division by zero'
                else:
                    _2403 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2403] = 26
                    mem[_2403 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    _2631 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2631] = 26
                    mem[_2631 + 32] = 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if stor26[address(this.address)] / stor32 / _tTotal < 0:
                        revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                    if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_536c8c02[msg.sender] += msg.value
                    if msg.value + ethSent < ethSent:
                        revert with 0, 'SafeMath: addition overflow'
                    ethSent += msg.value
                    mem[0] = this.address
                    mem[32] = 26
                    _2984 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2984] = 30
                    mem[_2984 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor26[this.address]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor26[msg.sender] < stor26[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    _3195 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3195] = 26
                    mem[_3195 + 32] = 'SafeMath: division by zero'
                if not sub_1b2cabba:
                    revert with 0, 'SafeMath: division by zero'
                if not sub_8a3be0b6:
                    if ethSent > 0:
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        if sub_be71ce9f > sub_49a6a335:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_49a6a335 -= sub_be71ce9f
                else:
                    if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        if ethSent > 0:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
                    else:
                        if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ethSent > 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
            emit Transfer(0, this.address, msg.sender);
        else:
            if sub_49a6a335 * msg.value / msg.value != sub_49a6a335:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[64] = 224
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            sub_84f44adf += sub_49a6a335 * msg.value / 10^9 / 2
            if stor29[address(this.address)]:
                if stor27[address(this.address)] < sub_49a6a335 * msg.value / 10^9:
                    revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[325 len 31]
                if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_536c8c02[msg.sender] += msg.value
                if msg.value + ethSent < ethSent:
                    revert with 0, 'SafeMath: addition overflow'
                ethSent += msg.value
                if sub_49a6a335 * msg.value / 10^9 > stor26[this.address]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor26[this.address] -= sub_49a6a335 * msg.value / 10^9
                if (sub_49a6a335 * msg.value / 10^9) + stor26[msg.sender] < stor26[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                stor26[msg.sender] += sub_49a6a335 * msg.value / 10^9
                if not sub_1b2cabba:
                    revert with 0, 'SafeMath: division by zero'
                if not sub_8a3be0b6:
                    if ethSent > 0:
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        if sub_be71ce9f > sub_49a6a335:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_49a6a335 -= sub_be71ce9f
                else:
                    if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        if ethSent > 0:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
                    else:
                        if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ethSent > 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
            else:
                mem[0] = this.address
                mem[32] = 26
                if stor26[address(this.address)] > stor32:
                    revert with 0, 32, 42, 0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e, mem[334 len 22]
                idx = 0
                s = _tTotal
                t = stor32
                while idx < stor30.length:
                    mem[0] = stor30[idx]
                    mem[32] = 26
                    if stor26[stor30[idx]] > t:
                        _2329 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2329] = 26
                        mem[_2329 + 32] = 'SafeMath: division by zero'
                        if not _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2329 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _2497 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2497] = 26
                        mem[_2497 + 32] = 'SafeMath: division by zero'
                        if not stor32 / _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2497 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if stor26[address(this.address)] / stor32 / _tTotal < sub_49a6a335 * msg.value / 10^9:
                            revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                        if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_536c8c02[msg.sender] += msg.value
                        if msg.value + ethSent < ethSent:
                            revert with 0, 'SafeMath: addition overflow'
                        ethSent += msg.value
                        mem[0] = this.address
                        mem[32] = 26
                        _2913 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2913] = 30
                        mem[_2913 + 32] = 'SafeMath: subtraction overflow'
                        if sub_49a6a335 * msg.value / 10^9 > stor26[this.address]:
                            _2939 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2939 + 68] = mem[idx + _2913 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2939 + 68] = mem[_2939 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2939 + -mem[64] + 100
                        stor26[this.address] -= sub_49a6a335 * msg.value / 10^9
                        if (sub_49a6a335 * msg.value / 10^9) + stor26[msg.sender] < stor26[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 26
                        stor26[msg.sender] += sub_49a6a335 * msg.value / 10^9
                        _3081 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3081] = 26
                        mem[_3081 + 32] = 'SafeMath: division by zero'
                        if not sub_1b2cabba:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3081 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_8a3be0b6:
                            if ethSent <= 0:
                                emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                                stor0 = 1
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            _3505 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3505] = 30
                            mem[_3505 + 32] = 'SafeMath: subtraction overflow'
                            if sub_be71ce9f <= sub_49a6a335:
                                sub_49a6a335 -= sub_be71ce9f
                                emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                                stor0 = 1
                            _3568 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3568 + 68] = mem[idx + _3505 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3568 + 68] = mem[_3568 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3568 + -mem[64] + 100
                        if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            if ethSent <= 0:
                                emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                                stor0 = 1
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            _3539 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3539] = 30
                            mem[_3539 + 32] = 'SafeMath: subtraction overflow'
                            if sub_be71ce9f <= sub_49a6a335:
                                sub_49a6a335 -= sub_be71ce9f
                                emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                                stor0 = 1
                            _3611 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3611 + 68] = mem[idx + _3539 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3611 + 68] = mem[_3611 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3611 + -mem[64] + 100
                        if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ethSent <= 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                            stor0 = 1
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        _3567 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3567] = 30
                        mem[_3567 + 32] = 'SafeMath: subtraction overflow'
                        if sub_be71ce9f <= sub_49a6a335:
                            sub_49a6a335 -= sub_be71ce9f
                            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                            stor0 = 1
                        _3645 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3645 + 68] = mem[idx + _3567 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3645 + 68] = mem[_3645 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3645 + -mem[64] + 100
                    require idx < stor30.length
                    mem[0] = stor30[idx]
                    mem[32] = 27
                    if stor27[stor30[idx]] <= s:
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 26
                        _2349 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2349] = 30
                        mem[_2349 + 32] = 'SafeMath: subtraction overflow'
                        if stor26[stor30[idx]] > t:
                            _2380 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2380 + 68] = mem[idx + _2349 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2380 + 68] = mem[_2380 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2380 + -mem[64] + 100
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 27
                        _2499 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2499] = 30
                        mem[_2499 + 32] = 'SafeMath: subtraction overflow'
                        if stor27[stor30[idx]] <= s:
                            idx = idx + 1
                            s = s - stor27[stor30[idx]]
                            t = t - stor26[stor30[idx]]
                            continue 
                        _2558 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2558 + 68] = mem[idx + _2499 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2558 + 68] = mem[_2558 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2558 + -mem[64] + 100
                    _2363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2363] = 26
                    mem[_2363 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2363 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _2561 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2561] = 26
                    mem[_2561 + 32] = 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2561 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if stor26[address(this.address)] / stor32 / _tTotal < sub_49a6a335 * msg.value / 10^9:
                        revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                    if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_536c8c02[msg.sender] += msg.value
                    if msg.value + ethSent < ethSent:
                        revert with 0, 'SafeMath: addition overflow'
                    ethSent += msg.value
                    mem[0] = this.address
                    mem[32] = 26
                    _2942 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2942] = 30
                    mem[_2942 + 32] = 'SafeMath: subtraction overflow'
                    if sub_49a6a335 * msg.value / 10^9 > stor26[this.address]:
                        _2980 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2980 + 68] = mem[idx + _2942 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2980 + 68] = mem[_2980 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2980 + -mem[64] + 100
                    stor26[this.address] -= sub_49a6a335 * msg.value / 10^9
                    if (sub_49a6a335 * msg.value / 10^9) + stor26[msg.sender] < stor26[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    stor26[msg.sender] += sub_49a6a335 * msg.value / 10^9
                    _3144 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3144] = 26
                    mem[_3144 + 32] = 'SafeMath: division by zero'
                    if not sub_1b2cabba:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3144 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not sub_8a3be0b6:
                        if ethSent <= 0:
                            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                            stor0 = 1
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        _3573 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3573] = 30
                        mem[_3573 + 32] = 'SafeMath: subtraction overflow'
                        if sub_be71ce9f <= sub_49a6a335:
                            sub_49a6a335 -= sub_be71ce9f
                            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                            stor0 = 1
                        _3650 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3650 + 68] = mem[idx + _3573 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3650 + 68] = mem[_3650 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3650 + -mem[64] + 100
                    if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        if ethSent <= 0:
                            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                            stor0 = 1
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        _3614 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3614] = 30
                        mem[_3614 + 32] = 'SafeMath: subtraction overflow'
                        if sub_be71ce9f <= sub_49a6a335:
                            sub_49a6a335 -= sub_be71ce9f
                            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                            stor0 = 1
                        _3702 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3702 + 68] = mem[idx + _3614 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3702 + 68] = mem[_3702 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3702 + -mem[64] + 100
                    if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if ethSent <= 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                        stor0 = 1
                    if timeBetweenRounds + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    presaleTime = timeBetweenRounds + block.timestamp
                    sub_8a3be0b6++
                    _3649 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3649] = 30
                    mem[_3649 + 32] = 'SafeMath: subtraction overflow'
                    if sub_be71ce9f <= sub_49a6a335:
                        sub_49a6a335 -= sub_be71ce9f
                        emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                        stor0 = 1
                    _3749 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3749 + 68] = mem[idx + _3649 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3749 + 68] = mem[_3749 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3749 + -mem[64] + 100
                _2223 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2223] = 26
                mem[_2223 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor32 / _tTotal:
                    _2395 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2395] = 26
                    mem[_2395 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    _2619 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2619] = 26
                    mem[_2619 + 32] = 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero'
                    if stor26[address(this.address)] / t / s < sub_49a6a335 * msg.value / 10^9:
                        revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                    if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_536c8c02[msg.sender] += msg.value
                    if msg.value + ethSent < ethSent:
                        revert with 0, 'SafeMath: addition overflow'
                    ethSent += msg.value
                    mem[0] = this.address
                    mem[32] = 26
                    _2975 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2975] = 30
                    mem[_2975 + 32] = 'SafeMath: subtraction overflow'
                    if sub_49a6a335 * msg.value / 10^9 > stor26[this.address]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor26[this.address] -= sub_49a6a335 * msg.value / 10^9
                    if (sub_49a6a335 * msg.value / 10^9) + stor26[msg.sender] < stor26[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    stor26[msg.sender] += sub_49a6a335 * msg.value / 10^9
                    _3187 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3187] = 26
                    mem[_3187 + 32] = 'SafeMath: division by zero'
                else:
                    _2396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2396] = 26
                    mem[_2396 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    _2621 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2621] = 26
                    mem[_2621 + 32] = 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if stor26[address(this.address)] / stor32 / _tTotal < sub_49a6a335 * msg.value / 10^9:
                        revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                    if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_536c8c02[msg.sender] += msg.value
                    if msg.value + ethSent < ethSent:
                        revert with 0, 'SafeMath: addition overflow'
                    ethSent += msg.value
                    mem[0] = this.address
                    mem[32] = 26
                    _2976 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2976] = 30
                    mem[_2976 + 32] = 'SafeMath: subtraction overflow'
                    if sub_49a6a335 * msg.value / 10^9 > stor26[this.address]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor26[this.address] -= sub_49a6a335 * msg.value / 10^9
                    if (sub_49a6a335 * msg.value / 10^9) + stor26[msg.sender] < stor26[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    stor26[msg.sender] += sub_49a6a335 * msg.value / 10^9
                    _3188 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3188] = 26
                    mem[_3188 + 32] = 'SafeMath: division by zero'
                if not sub_1b2cabba:
                    revert with 0, 'SafeMath: division by zero'
                if not sub_8a3be0b6:
                    if ethSent > 0:
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        if sub_be71ce9f > sub_49a6a335:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_49a6a335 -= sub_be71ce9f
                else:
                    if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        if ethSent > 0:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
                    else:
                        if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ethSent > 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
    else:
        if ext_code.hash(msg.sender):
            revert with 0, 'Contracts not allowed'
        if presaleTime <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6f50726573616c65206e6f74206163746976652c2063616e6e6f7420627579207965,
                        mem[198 len 30]
        if presaleTime > block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6f50726573616c65206e6f74206163746976652c2063616e6e6f7420627579207965,
                        mem[198 len 30]
        if msg.value < 10^18:
            revert with 0, 'You sent less than 1 FTM'
        if msg.value > 1000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x73596f752073656e74206d6f7265207468616e20746865206d617820313030302046544d2070657220757365,
                        mem[208 len 20]
        if ethSent >= 10^18 * presaleHardcap:
            revert with 0, 'Hard cap reached'
        if ethSent + msg.value < msg.value:
            revert with 0, 'SafeMath: addition overflow'
        if ethSent + msg.value >= 10^18 * presaleHardcap:
            revert with 0, 'Hardcap will be breached'
        if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value + sub_536c8c02[msg.sender] > 1000 * 10^18:
            revert with 0, 'You cannot buy that much more'
        if not msg.value:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[64] = 224
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if stor29[address(this.address)]:
                if stor27[address(this.address)] < 0:
                    revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[325 len 31]
                if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_536c8c02[msg.sender] += msg.value
                if msg.value + ethSent < ethSent:
                    revert with 0, 'SafeMath: addition overflow'
                ethSent += msg.value
                if 0 > stor26[this.address]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor26[msg.sender] < stor26[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_1b2cabba:
                    revert with 0, 'SafeMath: division by zero'
                if not sub_8a3be0b6:
                    if ethSent > 0:
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        if sub_be71ce9f > sub_49a6a335:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_49a6a335 -= sub_be71ce9f
                else:
                    if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        if ethSent > 0:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
                    else:
                        if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ethSent > 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
            else:
                mem[0] = this.address
                mem[32] = 26
                if stor26[address(this.address)] > stor32:
                    revert with 0, 32, 42, 0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e, mem[334 len 22]
                idx = 0
                s = _tTotal
                t = stor32
                while idx < stor30.length:
                    mem[0] = stor30[idx]
                    mem[32] = 26
                    if stor26[stor30[idx]] > t:
                        _2344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2344] = 26
                        mem[_2344 + 32] = 'SafeMath: division by zero'
                        if not _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2344 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _2521 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2521] = 26
                        mem[_2521 + 32] = 'SafeMath: division by zero'
                        if not stor32 / _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2521 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if stor26[address(this.address)] / stor32 / _tTotal < 0:
                            revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                        if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_536c8c02[msg.sender] += msg.value
                        if msg.value + ethSent < ethSent:
                            revert with 0, 'SafeMath: addition overflow'
                        ethSent += msg.value
                        mem[0] = this.address
                        mem[32] = 26
                        _2928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2928] = 30
                        mem[_2928 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor26[this.address]:
                            _2963 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2963 + 68] = mem[idx + _2928 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2963 + 68] = mem[_2963 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2963 + -mem[64] + 100
                        if stor26[msg.sender] < stor26[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 26
                        _3111 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3111] = 26
                        mem[_3111 + 32] = 'SafeMath: division by zero'
                        if not sub_1b2cabba:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3111 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_8a3be0b6:
                            if ethSent <= 0:
                                emit Transfer(0, this.address, msg.sender);
                                stor0 = 1
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            _3532 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3532] = 30
                            mem[_3532 + 32] = 'SafeMath: subtraction overflow'
                            if sub_be71ce9f <= sub_49a6a335:
                                sub_49a6a335 -= sub_be71ce9f
                                emit Transfer(0, this.address, msg.sender);
                                stor0 = 1
                            _3601 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3601 + 68] = mem[idx + _3532 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3601 + 68] = mem[_3601 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3601 + -mem[64] + 100
                        if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            if ethSent <= 0:
                                emit Transfer(0, this.address, msg.sender);
                                stor0 = 1
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            _3560 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3560] = 30
                            mem[_3560 + 32] = 'SafeMath: subtraction overflow'
                            if sub_be71ce9f <= sub_49a6a335:
                                sub_49a6a335 -= sub_be71ce9f
                                emit Transfer(0, this.address, msg.sender);
                                stor0 = 1
                            _3635 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3635 + 68] = mem[idx + _3560 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3635 + 68] = mem[_3635 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3635 + -mem[64] + 100
                        if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ethSent <= 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            emit Transfer(0, this.address, msg.sender);
                            stor0 = 1
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        _3600 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3600] = 30
                        mem[_3600 + 32] = 'SafeMath: subtraction overflow'
                        if sub_be71ce9f <= sub_49a6a335:
                            sub_49a6a335 -= sub_be71ce9f
                            emit Transfer(0, this.address, msg.sender);
                            stor0 = 1
                        _3687 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3687 + 68] = mem[idx + _3600 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3687 + 68] = mem[_3687 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3687 + -mem[64] + 100
                    require idx < stor30.length
                    mem[0] = stor30[idx]
                    mem[32] = 27
                    if stor27[stor30[idx]] <= s:
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 26
                        _2358 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2358] = 30
                        mem[_2358 + 32] = 'SafeMath: subtraction overflow'
                        if stor26[stor30[idx]] > t:
                            _2392 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2392 + 68] = mem[idx + _2358 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2392 + 68] = mem[_2392 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2392 + -mem[64] + 100
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 27
                        _2523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2523] = 30
                        mem[_2523 + 32] = 'SafeMath: subtraction overflow'
                        if stor27[stor30[idx]] <= s:
                            idx = idx + 1
                            s = s - stor27[stor30[idx]]
                            t = t - stor26[stor30[idx]]
                            continue 
                        _2594 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2594 + 68] = mem[idx + _2523 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2594 + 68] = mem[_2594 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2594 + -mem[64] + 100
                    _2378 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2378] = 26
                    mem[_2378 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2378 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _2597 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2597] = 26
                    mem[_2597 + 32] = 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2597 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if stor26[address(this.address)] / stor32 / _tTotal < 0:
                        revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                    if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_536c8c02[msg.sender] += msg.value
                    if msg.value + ethSent < ethSent:
                        revert with 0, 'SafeMath: addition overflow'
                    ethSent += msg.value
                    mem[0] = this.address
                    mem[32] = 26
                    _2966 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2966] = 30
                    mem[_2966 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor26[this.address]:
                        _3004 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3004 + 68] = mem[idx + _2966 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3004 + 68] = mem[_3004 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3004 + -mem[64] + 100
                    if stor26[msg.sender] < stor26[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    _3174 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3174] = 26
                    mem[_3174 + 32] = 'SafeMath: division by zero'
                    if not sub_1b2cabba:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3174 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not sub_8a3be0b6:
                        if ethSent <= 0:
                            emit Transfer(0, this.address, msg.sender);
                            stor0 = 1
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        _3606 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3606] = 30
                        mem[_3606 + 32] = 'SafeMath: subtraction overflow'
                        if sub_be71ce9f <= sub_49a6a335:
                            sub_49a6a335 -= sub_be71ce9f
                            emit Transfer(0, this.address, msg.sender);
                            stor0 = 1
                        _3692 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3692 + 68] = mem[idx + _3606 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3692 + 68] = mem[_3692 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3692 + -mem[64] + 100
                    if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        if ethSent <= 0:
                            emit Transfer(0, this.address, msg.sender);
                            stor0 = 1
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        _3638 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3638] = 30
                        mem[_3638 + 32] = 'SafeMath: subtraction overflow'
                        if sub_be71ce9f <= sub_49a6a335:
                            sub_49a6a335 -= sub_be71ce9f
                            emit Transfer(0, this.address, msg.sender);
                            stor0 = 1
                        _3732 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3732 + 68] = mem[idx + _3638 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3732 + 68] = mem[_3732 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3732 + -mem[64] + 100
                    if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if ethSent <= 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        emit Transfer(0, this.address, msg.sender);
                        stor0 = 1
                    if timeBetweenRounds + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    presaleTime = timeBetweenRounds + block.timestamp
                    sub_8a3be0b6++
                    _3691 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3691] = 30
                    mem[_3691 + 32] = 'SafeMath: subtraction overflow'
                    if sub_be71ce9f <= sub_49a6a335:
                        sub_49a6a335 -= sub_be71ce9f
                        emit Transfer(0, this.address, msg.sender);
                        stor0 = 1
                    _3803 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3803 + 68] = mem[idx + _3691 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3803 + 68] = mem[_3803 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3803 + -mem[64] + 100
                _2262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2262] = 26
                mem[_2262 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor32 / _tTotal:
                    _2416 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2416] = 26
                    mem[_2416 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    _2649 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2649] = 26
                    mem[_2649 + 32] = 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero'
                    if stor26[address(this.address)] / t / s < 0:
                        revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                    if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_536c8c02[msg.sender] += msg.value
                    if msg.value + ethSent < ethSent:
                        revert with 0, 'SafeMath: addition overflow'
                    ethSent += msg.value
                    mem[0] = this.address
                    mem[32] = 26
                    _2999 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2999] = 30
                    mem[_2999 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor26[this.address]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor26[msg.sender] < stor26[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    _3208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3208] = 26
                    mem[_3208 + 32] = 'SafeMath: division by zero'
                else:
                    _2417 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2417] = 26
                    mem[_2417 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    _2651 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2651] = 26
                    mem[_2651 + 32] = 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if stor26[address(this.address)] / stor32 / _tTotal < 0:
                        revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                    if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_536c8c02[msg.sender] += msg.value
                    if msg.value + ethSent < ethSent:
                        revert with 0, 'SafeMath: addition overflow'
                    ethSent += msg.value
                    mem[0] = this.address
                    mem[32] = 26
                    _3000 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3000] = 30
                    mem[_3000 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor26[this.address]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor26[msg.sender] < stor26[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    _3209 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3209] = 26
                    mem[_3209 + 32] = 'SafeMath: division by zero'
                if not sub_1b2cabba:
                    revert with 0, 'SafeMath: division by zero'
                if not sub_8a3be0b6:
                    if ethSent > 0:
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        if sub_be71ce9f > sub_49a6a335:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_49a6a335 -= sub_be71ce9f
                else:
                    if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        if ethSent > 0:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
                    else:
                        if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ethSent > 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
            emit Transfer(0, this.address, msg.sender);
        else:
            if sub_49a6a335 * msg.value / msg.value != sub_49a6a335:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[64] = 224
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            sub_84f44adf += sub_49a6a335 * msg.value / 10^9 / 2
            if stor29[address(this.address)]:
                if stor27[address(this.address)] < sub_49a6a335 * msg.value / 10^9:
                    revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[325 len 31]
                if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_536c8c02[msg.sender] += msg.value
                if msg.value + ethSent < ethSent:
                    revert with 0, 'SafeMath: addition overflow'
                ethSent += msg.value
                if sub_49a6a335 * msg.value / 10^9 > stor26[this.address]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor26[this.address] -= sub_49a6a335 * msg.value / 10^9
                if (sub_49a6a335 * msg.value / 10^9) + stor26[msg.sender] < stor26[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                stor26[msg.sender] += sub_49a6a335 * msg.value / 10^9
                if not sub_1b2cabba:
                    revert with 0, 'SafeMath: division by zero'
                if not sub_8a3be0b6:
                    if ethSent > 0:
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        if sub_be71ce9f > sub_49a6a335:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_49a6a335 -= sub_be71ce9f
                else:
                    if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        if ethSent > 0:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
                    else:
                        if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ethSent > 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
            else:
                mem[0] = this.address
                mem[32] = 26
                if stor26[address(this.address)] > stor32:
                    revert with 0, 32, 42, 0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e, mem[334 len 22]
                idx = 0
                s = _tTotal
                t = stor32
                while idx < stor30.length:
                    mem[0] = stor30[idx]
                    mem[32] = 26
                    if stor26[stor30[idx]] > t:
                        _2339 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2339] = 26
                        mem[_2339 + 32] = 'SafeMath: division by zero'
                        if not _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2339 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _2513 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2513] = 26
                        mem[_2513 + 32] = 'SafeMath: division by zero'
                        if not stor32 / _tTotal:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2513 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if stor26[address(this.address)] / stor32 / _tTotal < sub_49a6a335 * msg.value / 10^9:
                            revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                        if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_536c8c02[msg.sender] += msg.value
                        if msg.value + ethSent < ethSent:
                            revert with 0, 'SafeMath: addition overflow'
                        ethSent += msg.value
                        mem[0] = this.address
                        mem[32] = 26
                        _2923 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2923] = 30
                        mem[_2923 + 32] = 'SafeMath: subtraction overflow'
                        if sub_49a6a335 * msg.value / 10^9 > stor26[this.address]:
                            _2955 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2955 + 68] = mem[idx + _2923 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2955 + 68] = mem[_2955 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2955 + -mem[64] + 100
                        stor26[this.address] -= sub_49a6a335 * msg.value / 10^9
                        if (sub_49a6a335 * msg.value / 10^9) + stor26[msg.sender] < stor26[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 26
                        stor26[msg.sender] += sub_49a6a335 * msg.value / 10^9
                        _3101 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3101] = 26
                        mem[_3101 + 32] = 'SafeMath: division by zero'
                        if not sub_1b2cabba:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3101 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not sub_8a3be0b6:
                            if ethSent <= 0:
                                emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                                stor0 = 1
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            _3523 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3523] = 30
                            mem[_3523 + 32] = 'SafeMath: subtraction overflow'
                            if sub_be71ce9f <= sub_49a6a335:
                                sub_49a6a335 -= sub_be71ce9f
                                emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                                stor0 = 1
                            _3590 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3590 + 68] = mem[idx + _3523 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3590 + 68] = mem[_3590 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3590 + -mem[64] + 100
                        if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            if ethSent <= 0:
                                emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                                stor0 = 1
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            _3553 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3553] = 30
                            mem[_3553 + 32] = 'SafeMath: subtraction overflow'
                            if sub_be71ce9f <= sub_49a6a335:
                                sub_49a6a335 -= sub_be71ce9f
                                emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                                stor0 = 1
                            _3627 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3627 + 68] = mem[idx + _3553 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3627 + 68] = mem[_3627 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3627 + -mem[64] + 100
                        if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ethSent <= 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                            stor0 = 1
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        _3589 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3589] = 30
                        mem[_3589 + 32] = 'SafeMath: subtraction overflow'
                        if sub_be71ce9f <= sub_49a6a335:
                            sub_49a6a335 -= sub_be71ce9f
                            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                            stor0 = 1
                        _3673 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3673 + 68] = mem[idx + _3589 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3673 + 68] = mem[_3673 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3673 + -mem[64] + 100
                    require idx < stor30.length
                    mem[0] = stor30[idx]
                    mem[32] = 27
                    if stor27[stor30[idx]] <= s:
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 26
                        _2355 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2355] = 30
                        mem[_2355 + 32] = 'SafeMath: subtraction overflow'
                        if stor26[stor30[idx]] > t:
                            _2388 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2388 + 68] = mem[idx + _2355 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2388 + 68] = mem[_2388 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2388 + -mem[64] + 100
                        require idx < stor30.length
                        mem[0] = stor30[idx]
                        mem[32] = 27
                        _2515 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2515] = 30
                        mem[_2515 + 32] = 'SafeMath: subtraction overflow'
                        if stor27[stor30[idx]] <= s:
                            idx = idx + 1
                            s = s - stor27[stor30[idx]]
                            t = t - stor26[stor30[idx]]
                            continue 
                        _2582 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2582 + 68] = mem[idx + _2515 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2582 + 68] = mem[_2582 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2582 + -mem[64] + 100
                    _2373 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2373] = 26
                    mem[_2373 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2373 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _2585 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2585] = 26
                    mem[_2585 + 32] = 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2585 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if stor26[address(this.address)] / stor32 / _tTotal < sub_49a6a335 * msg.value / 10^9:
                        revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                    if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_536c8c02[msg.sender] += msg.value
                    if msg.value + ethSent < ethSent:
                        revert with 0, 'SafeMath: addition overflow'
                    ethSent += msg.value
                    mem[0] = this.address
                    mem[32] = 26
                    _2958 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2958] = 30
                    mem[_2958 + 32] = 'SafeMath: subtraction overflow'
                    if sub_49a6a335 * msg.value / 10^9 > stor26[this.address]:
                        _2996 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2996 + 68] = mem[idx + _2958 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2996 + 68] = mem[_2996 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2996 + -mem[64] + 100
                    stor26[this.address] -= sub_49a6a335 * msg.value / 10^9
                    if (sub_49a6a335 * msg.value / 10^9) + stor26[msg.sender] < stor26[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    stor26[msg.sender] += sub_49a6a335 * msg.value / 10^9
                    _3164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3164] = 26
                    mem[_3164 + 32] = 'SafeMath: division by zero'
                    if not sub_1b2cabba:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3164 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not sub_8a3be0b6:
                        if ethSent <= 0:
                            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                            stor0 = 1
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        _3595 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3595] = 30
                        mem[_3595 + 32] = 'SafeMath: subtraction overflow'
                        if sub_be71ce9f <= sub_49a6a335:
                            sub_49a6a335 -= sub_be71ce9f
                            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                            stor0 = 1
                        _3678 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3678 + 68] = mem[idx + _3595 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3678 + 68] = mem[_3678 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3678 + -mem[64] + 100
                    if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        if ethSent <= 0:
                            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                            stor0 = 1
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        _3630 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3630] = 30
                        mem[_3630 + 32] = 'SafeMath: subtraction overflow'
                        if sub_be71ce9f <= sub_49a6a335:
                            sub_49a6a335 -= sub_be71ce9f
                            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                            stor0 = 1
                        _3722 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3722 + 68] = mem[idx + _3630 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3722 + 68] = mem[_3722 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3722 + -mem[64] + 100
                    if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if ethSent <= 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                        stor0 = 1
                    if timeBetweenRounds + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    presaleTime = timeBetweenRounds + block.timestamp
                    sub_8a3be0b6++
                    _3677 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3677] = 30
                    mem[_3677 + 32] = 'SafeMath: subtraction overflow'
                    if sub_be71ce9f <= sub_49a6a335:
                        sub_49a6a335 -= sub_be71ce9f
                        emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
                        stor0 = 1
                    _3785 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3785 + 68] = mem[idx + _3677 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3785 + 68] = mem[_3785 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3785 + -mem[64] + 100
                _2249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2249] = 26
                mem[_2249 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor32 / _tTotal:
                    _2409 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2409] = 26
                    mem[_2409 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    _2639 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2639] = 26
                    mem[_2639 + 32] = 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero'
                    if stor26[address(this.address)] / t / s < sub_49a6a335 * msg.value / 10^9:
                        revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                    if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_536c8c02[msg.sender] += msg.value
                    if msg.value + ethSent < ethSent:
                        revert with 0, 'SafeMath: addition overflow'
                    ethSent += msg.value
                    mem[0] = this.address
                    mem[32] = 26
                    _2991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2991] = 30
                    mem[_2991 + 32] = 'SafeMath: subtraction overflow'
                    if sub_49a6a335 * msg.value / 10^9 > stor26[this.address]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor26[this.address] -= sub_49a6a335 * msg.value / 10^9
                    if (sub_49a6a335 * msg.value / 10^9) + stor26[msg.sender] < stor26[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    stor26[msg.sender] += sub_49a6a335 * msg.value / 10^9
                    _3201 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3201] = 26
                    mem[_3201 + 32] = 'SafeMath: division by zero'
                else:
                    _2410 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2410] = 26
                    mem[_2410 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    _2641 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2641] = 26
                    mem[_2641 + 32] = 'SafeMath: division by zero'
                    if not stor32 / _tTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if stor26[address(this.address)] / stor32 / _tTotal < sub_49a6a335 * msg.value / 10^9:
                        revert with 0, 32, 33, 0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163, mem[mem[64] + 101 len 31]
                    if msg.value + sub_536c8c02[msg.sender] < sub_536c8c02[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_536c8c02[msg.sender] += msg.value
                    if msg.value + ethSent < ethSent:
                        revert with 0, 'SafeMath: addition overflow'
                    ethSent += msg.value
                    mem[0] = this.address
                    mem[32] = 26
                    _2992 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2992] = 30
                    mem[_2992 + 32] = 'SafeMath: subtraction overflow'
                    if sub_49a6a335 * msg.value / 10^9 > stor26[this.address]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor26[this.address] -= sub_49a6a335 * msg.value / 10^9
                    if (sub_49a6a335 * msg.value / 10^9) + stor26[msg.sender] < stor26[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 26
                    stor26[msg.sender] += sub_49a6a335 * msg.value / 10^9
                    _3202 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3202] = 26
                    mem[_3202 + 32] = 'SafeMath: division by zero'
                if not sub_1b2cabba:
                    revert with 0, 'SafeMath: division by zero'
                if not sub_8a3be0b6:
                    if ethSent > 0:
                        if timeBetweenRounds + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        presaleTime = timeBetweenRounds + block.timestamp
                        sub_8a3be0b6++
                        if sub_be71ce9f > sub_49a6a335:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_49a6a335 -= sub_be71ce9f
                else:
                    if presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / sub_8a3be0b6 != presaleHardcap / sub_1b2cabba:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                        if ethSent > 0:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
                    else:
                        if 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6 / presaleHardcap / sub_1b2cabba * sub_8a3be0b6 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ethSent > 10^18 * presaleHardcap / sub_1b2cabba * sub_8a3be0b6:
                            if timeBetweenRounds + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            presaleTime = timeBetweenRounds + block.timestamp
                            sub_8a3be0b6++
                            if sub_be71ce9f > sub_49a6a335:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_49a6a335 -= sub_be71ce9f
            emit Transfer((sub_49a6a335 * msg.value / 10^9), this.address, msg.sender);
    stor0 = 1
}



}
