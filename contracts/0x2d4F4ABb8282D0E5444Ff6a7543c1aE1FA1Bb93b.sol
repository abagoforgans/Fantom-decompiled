contract main {




// =====================  Runtime code  =====================


#
#  - withdrawReserve(address arg1, uint256 arg2)
#  - withdraw(uint256 arg1)
#  - sub_2fdee3c3(?)
#  - requestFunds(address arg1, uint256 arg2)
#  - sub_5c17f0ef(?)
#  - updateDebtToken(address arg1, uint256 arg2)
#  - deposit(uint256 arg1)
#  - kill(uint256 arg1)
#  - work(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes arg6)
#  - initialize(address arg1, address arg2, string arg3, string arg4, uint8 arg5, address arg6)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner;
uint256 _IN_EXEC_LOCK;
uint256 POSITION_ID;
address STRATEGYAddress;
uint256 sub_8a53c87e;
uint256 sub_3177e047;
uint256 sub_8d911b22;
uint256 sub_37afb4ae;
uint256 sub_3f7c49ca;
address tokenAddress;
address debtTokenAddress;
address configAddress;
mapping of struct positions;
array of struct sub_aa9d7cf0;
uint256 nextPositionID;
uint256 sub_9ccce2ca;
uint256 vaultDebtShare;
uint256 vaultDebtVal;
uint256 lastAccrueTime;
uint256 reservePool;
uint256 sub_5a9c26ae;
uint256 sub_c99b9116;
address sub_6802d855Address;

function reservePool() {
    return reservePool
}

function name() {
    return name[0 len name.length]
}

function vaultDebtVal() {
    return vaultDebtVal
}

function totalSupply() {
    return totalSupply
}

function STRATEGY() {
    return STRATEGYAddress
}

function nextPositionID() {
    return nextPositionID
}

function decimals() {
    return decimals
}

function sub_3177e047(?) {
    return sub_3177e047
}

function sub_37afb4ae(?) {
    return sub_37afb4ae
}

function sub_3f7c49ca(?) {
    return sub_3f7c49ca
}

function sub_5a9c26ae(?) {
    return sub_5a9c26ae
}

function sub_6802d855(?) {
    return sub_6802d855Address
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function vaultDebtShare() {
    return vaultDebtShare
}

function config() {
    return configAddress
}

function sub_8a53c87e(?) {
    return sub_8a53c87e
}

function sub_8d911b22(?) {
    return sub_8d911b22
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function positions(uint256 arg1) {
    require calldata.size - 4 >= 32
    return positions[arg1].field_0, 
           positions[arg1].field_256,
           positions[arg1].field_512,
           positions[arg1].field_768,
           positions[arg1].field_1024,
           positions[arg1].field_1280,
           positions[arg1].field_1536,
           positions[arg1].field_1792,
           positions[arg1].field_2048,
           positions[arg1].field_2304
}

function sub_9ccce2ca(?) {
    return sub_9ccce2ca
}

function lastAccrueTime() {
    return lastAccrueTime
}

function sub_aa9d7cf0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_aa9d7cf0[arg1].field_0
    return sub_aa9d7cf0[arg1][arg2].field_0, 
           sub_aa9d7cf0[arg1][arg2].field_256,
           sub_aa9d7cf0[arg1][arg2].field_512,
           sub_aa9d7cf0[arg1][arg2].field_768,
           sub_aa9d7cf0[arg1][arg2].field_1024
}

function sub_c99b9116(?) {
    return sub_c99b9116
}

function _IN_EXEC_LOCK() {
    return _IN_EXEC_LOCK
}

function POSITION_ID() {
    return POSITION_ID
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function debtToken() {
    return debtTokenAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_2f4134ff(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_6802d855Address = address(arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x658be007: owner, 0
    owner = 0
}

function updateConfig(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    configAddress = arg1
}

function reduceReserve(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > reservePool:
        revert with 0, 'SafeMath: subtraction overflow', 0
    reservePool -= arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x658be007: owner, arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
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

function debtValToShare(uint256 arg1) {
    require calldata.size - 4 >= 32
    if 0 == vaultDebtShare:
        return arg1
    if not arg1:
        if not vaultDebtVal:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / vaultDebtVal)
    if vaultDebtShare * arg1 / arg1 != vaultDebtShare:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not vaultDebtVal:
        revert with 0, 'SafeMath: division by zero', 0
    return (vaultDebtShare * arg1 / vaultDebtVal)
}

function debtShareToVal(uint256 arg1) {
    require calldata.size - 4 >= 32
    if 0 == vaultDebtShare:
        return arg1
    if not arg1:
        if not vaultDebtShare:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / vaultDebtShare)
    if vaultDebtVal * arg1 / arg1 != vaultDebtVal:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not vaultDebtShare:
        revert with 0, 'SafeMath: division by zero', 0
    return (vaultDebtVal * arg1 / vaultDebtShare)
}

function totalToken() {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if vaultDebtVal + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if reservePool > vaultDebtVal + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (vaultDebtVal + ext_call.return_data[0] - reservePool)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0xef45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xe0ddf252: arg2, msg.sender, arg1
    return 1
}

function positionInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(positions[arg1].field_0)
    staticcall positions[arg1].field_0.health(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == vaultDebtShare:
        return ext_call.return_data[0], positions[arg1].field_512
    if not positions[arg1].field_512:
        if not vaultDebtShare:
            revert with 0, 'SafeMath: division by zero', 0
        return ext_call.return_data[0], 0 / vaultDebtShare
    if vaultDebtVal * positions[arg1].field_512 / positions[arg1].field_512 != vaultDebtVal:
        revert with 0, 'SafeMath: multiplication overflow'
    if not vaultDebtShare:
        revert with 0, 'SafeMath: division by zero', 0
    return ext_call.return_data[0], vaultDebtVal * positions[arg1].field_512 / vaultDebtShare
}

function getKilledPosition(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 263
    mem[64] = (32 * sub_aa9d7cf0[address(arg1)].field_0) + 128
    mem[96] = sub_aa9d7cf0[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < sub_aa9d7cf0[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 263)
        _15 = mem[64]
        mem[64] = mem[64] + 160
        mem[_15] = sub_aa9d7cf0[address(arg1)][idx].field_0
        mem[_15 + 32] = sub_aa9d7cf0[address(arg1)][idx].field_256
        mem[_15 + 64] = sub_aa9d7cf0[address(arg1)][idx].field_512
        mem[_15 + 96] = sub_aa9d7cf0[address(arg1)][idx].field_768
        mem[_15 + 128] = sub_aa9d7cf0[address(arg1)][idx].field_1024
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _17:
        _25 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_25 + 32]
        mem[t + 64] = mem[_25 + 64]
        mem[t + 96] = mem[_25 + 96]
        mem[t + 128] = mem[_25 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _16 + (160 * _17) + -mem[64] + 64
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit 0xe0ddf252: arg3, arg1, arg2
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_93f4173b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(configAddress)
    staticcall configAddress.0x4b96b4dc with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196 len 96] = 0, ext_call.return_data[12 len 20], -1, mem[ceil32(return_data.size) + 196 len 28]
    call debtTokenAddress.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, '!safeApprove'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, '!safeApprove'
    sub_9ccce2ca = arg1
}

function pendingInterest(uint256 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp <= lastAccrueTime:
        return 0
    if lastAccrueTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if reservePool > ext_call.return_data[0] - arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(configAddress)
    staticcall configAddress.getInterestRate(uint256 arg1, uint256 arg2, uint8 arg3) with:
            gas gas_remaining wei
           args vaultDebtVal, ext_call.return_data[0] - arg1 - reservePool, decimals
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not 10^decimals:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / 10^decimals)
    if vaultDebtVal * ext_call.return_data[0] / ext_call.return_data[0] != vaultDebtVal:
        revert with 0, 'SafeMath: multiplication overflow'
    if not vaultDebtVal * ext_call.return_data[0]:
        if not 10^decimals:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / 10^decimals)
    if (block.timestamp * vaultDebtVal * ext_call.return_data[0]) - (lastAccrueTime * vaultDebtVal * ext_call.return_data[0]) / vaultDebtVal * ext_call.return_data[0] != block.timestamp - lastAccrueTime:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^decimals:
        revert with 0, 'SafeMath: division by zero', 0
    return ((block.timestamp * vaultDebtVal * ext_call.return_data[0]) - (lastAccrueTime * vaultDebtVal * ext_call.return_data[0]) / 8760 * 24 * 3600 / 10^18 / 10^decimals)
}



}
