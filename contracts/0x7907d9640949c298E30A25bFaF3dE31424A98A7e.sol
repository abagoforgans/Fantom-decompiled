contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_ad5f9cab;
uint256 lpFeePercent;
uint256 sub_f48f870b;
uint256 sub_ec540c48;
array of address stor6;
mapping of uint256 sub_0cff87f1;
uint256 depositId;
array of struct allDepositIds;
mapping of struct lockedToken;
array of struct depositsByWithdrawal;
array of struct sub_3fd97b9b;
mapping of uint256 tokenBalanceBy;

function sub_0cff87f1(?) {
    require calldata.size - 4 >= 32
    return sub_0cff87f1[arg1]
}

function getTokenBalanceByAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return tokenBalanceBy[address(arg1)][address(arg2)]
}

function sub_3fd97b9b(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_3fd97b9b[arg1].field_0
    return sub_3fd97b9b[arg1][arg2].field_0
}

function depositsByWithdrawalAddress(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < depositsByWithdrawal[arg1].field_0
    return depositsByWithdrawal[arg1][arg2].field_0
}

function getDepositDetails(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(lockedToken[arg1].field_0), 
           address(lockedToken[arg1].field_256),
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(uint8(lockedToken[arg1].field_1024))
}

function owner() {
    return owner
}

function depositId() {
    return depositId
}

function sub_ad5f9cab(?) {
    return sub_ad5f9cab
}

function walletTokenBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return tokenBalanceBy[arg1][arg2]
}

function lockedToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(lockedToken[arg1].field_0), 
           address(lockedToken[arg1].field_256),
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(uint8(lockedToken[arg1].field_1024))
}

function allDepositIds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allDepositIds.length
    return allDepositIds[arg1].field_0
}

function lpFeePercent() {
    return lpFeePercent
}

function sub_ec540c48(?) {
    return sub_ec540c48
}

function sub_f48f870b(?) {
    return sub_f48f870b
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_895986e1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Fee is too small'
    sub_ad5f9cab = arg1
}

function setLpFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Percent is too small'
    lpFeePercent = arg1
}

function getTotalTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAllDepositIds() {
    if not allDepositIds.length:
        mem[(32 * allDepositIds.length) + 128] = 32
        mem[(32 * allDepositIds.length) + 160] = allDepositIds.length
        mem[(32 * allDepositIds.length) + 192 len floor32(allDepositIds.length)] = mem[128 len floor32(allDepositIds.length)]
        return memory
          from (32 * allDepositIds.length) + 128
           len (96 * allDepositIds.length) + 64
    mem[128] = uint256(allDepositIds.field_0)
    idx = 128
    s = 0
    while (32 * allDepositIds.length) + 96 > idx:
        mem[idx + 32] = allDepositIds[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allDepositIds.length) + 192 len floor32(allDepositIds.length)] = mem[128 len floor32(allDepositIds.length)]
    return Array(len=allDepositIds.length, data=mem[128 len floor32(allDepositIds.length)], mem[(32 * allDepositIds.length) + floor32(allDepositIds.length) + 192 len (32 * allDepositIds.length) - floor32(allDepositIds.length)]), 
}

function getDepositsByTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not sub_3fd97b9b[address(arg1)].field_0:
        mem[(32 * sub_3fd97b9b[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_3fd97b9b[address(arg1)].field_0) + 160] = sub_3fd97b9b[address(arg1)].field_0
        mem[(32 * sub_3fd97b9b[address(arg1)].field_0) + 192 len floor32(sub_3fd97b9b[address(arg1)].field_0)] = mem[128 len floor32(sub_3fd97b9b[address(arg1)].field_0)]
        return memory
          from (32 * sub_3fd97b9b[address(arg1)].field_0) + 128
           len (96 * sub_3fd97b9b[address(arg1)].field_0) + 64
    mem[128] = sub_3fd97b9b[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_3fd97b9b[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_3fd97b9b[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_3fd97b9b[address(arg1)].field_0) + 192 len floor32(sub_3fd97b9b[address(arg1)].field_0)] = mem[128 len floor32(sub_3fd97b9b[address(arg1)].field_0)]
    return Array(len=sub_3fd97b9b[address(arg1)].field_0, data=mem[128 len floor32(sub_3fd97b9b[address(arg1)].field_0)], mem[(32 * sub_3fd97b9b[address(arg1)].field_0) + floor32(sub_3fd97b9b[address(arg1)].field_0) + 192 len (32 * sub_3fd97b9b[address(arg1)].field_0) - floor32(sub_3fd97b9b[address(arg1)].field_0)]), 
}

function getDepositsByWithdrawalAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not depositsByWithdrawal[address(arg1)].field_0:
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 128] = 32
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 160] = depositsByWithdrawal[address(arg1)].field_0
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 192 len floor32(depositsByWithdrawal[address(arg1)].field_0)] = mem[128 len floor32(depositsByWithdrawal[address(arg1)].field_0)]
        return memory
          from (32 * depositsByWithdrawal[address(arg1)].field_0) + 128
           len (96 * depositsByWithdrawal[address(arg1)].field_0) + 64
    mem[128] = depositsByWithdrawal[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * depositsByWithdrawal[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = depositsByWithdrawal[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 192 len floor32(depositsByWithdrawal[address(arg1)].field_0)] = mem[128 len floor32(depositsByWithdrawal[address(arg1)].field_0)]
    return Array(len=depositsByWithdrawal[address(arg1)].field_0, data=mem[128 len floor32(depositsByWithdrawal[address(arg1)].field_0)], mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + floor32(depositsByWithdrawal[address(arg1)].field_0) + 192 len (32 * depositsByWithdrawal[address(arg1)].field_0) - floor32(depositsByWithdrawal[address(arg1)].field_0)]), 
}

function withdrawFees(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_ec540c48 > 0:
        call arg1 with:
           value sub_ec540c48 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_ec540c48 = 0
    idx = 1
    while idx <= stor6.length:
        require stor6.length - idx < stor6.length
        if sub_0cff87f1[address(stor[('name', 'stor6', 6) + stor6.length - idx])] > 0:
            mem[100] = arg1
            mem[132] = sub_0cff87f1[address(stor[('name', 'stor6', 6) + stor6.length - idx])]
            require ext_code.size(address(stor[('name', 'stor6', 6) + stor6.length - idx]))
            call address(stor[('name', 'stor6', 6) + stor6.length - idx]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), sub_0cff87f1[address(stor[('name', 'stor6', 6) + stor6.length - idx])]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        mem[32] = 7
        sub_0cff87f1[address(stor[('name', 'stor6', 6) + stor6.length - idx])] = 0
        require stor6.length
        mem[0] = 6
        address(stor6[stor6.length]) = 0
        stor6.length--
        idx = idx + 1
        continue 
    stor6.length = 0
    idx = 0
    while stor6.length > idx:
        uint256(stor6[idx]) = 0
        idx = idx + 1
        continue 
}

function lockTokens(address arg1, uint256 arg2, uint256 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x73546f6b656e7320616d6f756e74206d7573742062652067726561746572207468616e20,
                    mem[200 len 28]
    if arg3 >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x67556e69782074696d657374616d70206d75737420626520696e207365636f6e64732c206e6f74206d696c6c697365636f6e64,
                    mem[215 len 13]
    if arg3 <= block.timestamp:
        revert with 0, 'Unlock time must be in future'
    if arg4:
        if msg.value <= sub_ad5f9cab:
            revert with 0, 'FANTOM fee not provided'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to approve tokens'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x734661696c656420746f207472616e7366657220746f6b656e7320746f206c6f636b65,
                    mem[199 len 29]
    if arg4:
        if sub_f48f870b + msg.value < sub_f48f870b:
            revert with 0, 'SafeMath: addition overflow'
        sub_f48f870b += msg.value
        if sub_ec540c48 + msg.value < sub_ec540c48:
            revert with 0, 'SafeMath: addition overflow'
        sub_ec540c48 += msg.value
        if tokenBalanceBy[address(arg1)][address(msg.sender)] + arg2 < tokenBalanceBy[address(arg1)][address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        tokenBalanceBy[address(arg1)][address(msg.sender)] += arg2
        depositId++
        address(lockedToken[stor8 + 1].field_0) = arg1
        address(lockedToken[stor8 + 1].field_256) = msg.sender
        lockedToken[stor8 + 1].field_512 = arg2
    else:
        if not arg2:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_0cff87f1[address(arg1)]:
                stor6.length++
                address(stor6[stor6.length]) = arg1
            if sub_0cff87f1[address(arg1)] < sub_0cff87f1[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if tokenBalanceBy[address(arg1)][address(msg.sender)] + arg2 < tokenBalanceBy[address(arg1)][address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            tokenBalanceBy[address(arg1)][address(msg.sender)] += arg2
            depositId++
            address(lockedToken[stor8 + 1].field_0) = arg1
            address(lockedToken[stor8 + 1].field_256) = msg.sender
            lockedToken[stor8 + 1].field_512 = arg2
        else:
            require arg2
            if arg2 * lpFeePercent / arg2 != lpFeePercent:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg2 * lpFeePercent / 1000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_0cff87f1[address(arg1)]:
                stor6.length++
                address(stor6[stor6.length]) = arg1
            if sub_0cff87f1[address(arg1)] + (arg2 * lpFeePercent / 1000) < sub_0cff87f1[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_0cff87f1[address(arg1)] += arg2 * lpFeePercent / 1000
            if tokenBalanceBy[address(arg1)][address(msg.sender)] + arg2 < tokenBalanceBy[address(arg1)][address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            tokenBalanceBy[address(arg1)][address(msg.sender)] += arg2
            depositId++
            address(lockedToken[stor8 + 1].field_0) = arg1
            address(lockedToken[stor8 + 1].field_256) = msg.sender
            lockedToken[stor8 + 1].field_512 = arg2 - (arg2 * lpFeePercent / 1000)
    lockedToken[stor8 + 1].field_768 = arg3
    uint8(lockedToken[stor8 + 1].field_1024) = 0
    allDepositIds.length++
    allDepositIds[allDepositIds.length].field_0 = depositId + 1
    depositsByWithdrawal[address(msg.sender)].field_0++
    depositsByWithdrawal[address(msg.sender)][depositsByWithdrawal[address(msg.sender)].field_0].field_0 = depositId + 1
    sub_3fd97b9b[address(arg1)].field_0++
    sub_3fd97b9b[address(arg1)][sub_3fd97b9b[address(arg1)].field_0].field_0 = depositId + 1
    emit TokensLocked(arg2, arg3, depositId, arg1, msg.sender);
    return (depositId + 1)
}

function withdrawTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp < lockedToken[arg1].field_768:
        revert with 0, 'Tokens are locked'
    if uint8(lockedToken[arg1].field_1024):
        revert with 0, 'Tokens already withdrawn'
    if address(lockedToken[arg1].field_256) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7743616e2077697468647261772066726f6d207468652061646472657373207573656420666f72206c6f636b696e,
                    mem[210 len 18]
    require ext_code.size(address(lockedToken[arg1].field_0))
    call address(lockedToken[arg1].field_0).0xa9059cbb with:
         gas gas_remaining wei
        args address(lockedToken[arg1].field_256), lockedToken[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer tokens'
    uint8(lockedToken[arg1].field_1024) = 1
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if lockedToken[arg1].field_512 > tokenBalanceBy[address(stor10[arg1].field_0)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    tokenBalanceBy[address(stor10[arg1].field_0)][address(msg.sender)] -= lockedToken[arg1].field_512
    mem[0] = address(lockedToken[arg1].field_256)
    mem[32] = 11
    require depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1 <= test266151307()
    mem[160] = depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1
    mem[64] = (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192
    if depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1:
        mem[192 len 32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1] = call.data[calldata.size len 32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1]
    idx = 0
    while idx < depositsByWithdrawal[address(stor10[arg1].field_256)].field_0:
        require idx < depositsByWithdrawal[address(stor10[arg1].field_256)].field_0
        if depositsByWithdrawal[address(stor10[arg1].field_256)][idx].field_0 != arg1:
            mem[32] = 11
            require idx < depositsByWithdrawal[address(stor10[arg1].field_256)].field_0
            mem[0] = sha3(address(lockedToken[arg1].field_256), 11)
            require idx < depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1
            mem[(32 * idx) + 192] = depositsByWithdrawal[address(stor10[arg1].field_256)][idx].field_0
            idx = idx + 1
            continue 
        s = idx
        while s < depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1:
            mem[32] = 11
            require s + 1 < depositsByWithdrawal[address(stor10[arg1].field_256)].field_0
            mem[0] = sha3(address(lockedToken[arg1].field_256), 11)
            require s < mem[160]
            mem[(32 * s) + 192] = depositsByWithdrawal[address(stor10[arg1].field_256)][s].field_256
            s = s + 1
            continue 
        depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 = mem[160]
        if not mem[160]:
            idx = sha3(sha3(address(lockedToken[arg1].field_256), 11))
            while sha3(sha3(address(lockedToken[arg1].field_256), 11)) + depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(sha3(address(lockedToken[arg1].field_256), 11))
            idx = 192
            while (32 * mem[160]) + 192 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(sha3(address(lockedToken[arg1].field_256), 11)) + (Mask(251, 0, (32 * mem[160]) + 31) >> 5)
            while sha3(sha3(address(lockedToken[arg1].field_256), 11)) + depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        mem[0] = address(lockedToken[arg1].field_0)
        mem[32] = 12
        require sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1 <= test266151307()
        mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192] = sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1
        mem[64] = (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + (32 * sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1) + 224
        if sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1:
            mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 224 len 32 * sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1] = call.data[calldata.size len 32 * sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1]
        idx = 0
        while idx < sub_3fd97b9b[address(stor10[arg1].field_0)].field_0:
            require idx < sub_3fd97b9b[address(stor10[arg1].field_0)].field_0
            if sub_3fd97b9b[address(stor10[arg1].field_0)][idx].field_0 != arg1:
                mem[32] = 12
                require idx < sub_3fd97b9b[address(stor10[arg1].field_0)].field_0
                mem[0] = sha3(address(lockedToken[arg1].field_0), 12)
                require idx < sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1
                mem[(32 * idx) + (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 224] = sub_3fd97b9b[address(stor10[arg1].field_0)][idx].field_0
                idx = idx + 1
                continue 
            s = idx
            while s < sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1:
                mem[32] = 12
                require s + 1 < sub_3fd97b9b[address(stor10[arg1].field_0)].field_0
                mem[0] = sha3(address(lockedToken[arg1].field_0), 12)
                require s < mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192]
                mem[(32 * s) + (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 224] = sub_3fd97b9b[address(stor10[arg1].field_0)][s].field_256
                s = s + 1
                continue 
            mem[32] = 12
            sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 = mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192]
            mem[0] = sha3(address(lockedToken[arg1].field_0), 12)
            if not mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192]:
                idx = sha3(sha3(address(lockedToken[arg1].field_0), 12))
                while sha3(sha3(address(lockedToken[arg1].field_0), 12)) + sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3(sha3(address(lockedToken[arg1].field_0), 12))
                idx = (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 224
                while (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + (32 * mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192]) + 224 > idx:
                    stor[s] = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(sha3(address(lockedToken[arg1].field_0), 12)) + (Mask(251, 0, (32 * mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192]) + 31) >> 5)
                while sha3(sha3(address(lockedToken[arg1].field_0), 12)) + sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            emit TokensWithdrawn(lockedToken[arg1].field_512, address(lockedToken[arg1].field_0), address(lockedToken[arg1].field_256));
        sub_3fd97b9b[address(stor10[arg1].field_0)].field_0--
        if not sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1:
            idx = sha3(sha3(address(lockedToken[arg1].field_0), 12))
            while sha3(sha3(address(lockedToken[arg1].field_0), 12)) + sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(sha3(address(lockedToken[arg1].field_0), 12))
            idx = (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 224
            while (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + (32 * sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1) + 224 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(sha3(address(lockedToken[arg1].field_0), 12)) + (Mask(251, 0, (32 * sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1) + 31) >> 5)
            while sha3(sha3(address(lockedToken[arg1].field_0), 12)) + sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit TokensWithdrawn(lockedToken[arg1].field_512, address(lockedToken[arg1].field_0), address(lockedToken[arg1].field_256));
    depositsByWithdrawal[address(stor10[arg1].field_256)].field_0--
    if not depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1:
        idx = 0
        while depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 > idx:
            depositsByWithdrawal[address(stor10[arg1].field_256)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 192
        while (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192 > idx:
            depositsByWithdrawal[address(stor10[arg1].field_256)][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 31) >> 5
        while depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 > idx:
            depositsByWithdrawal[address(stor10[arg1].field_256)][idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[0] = address(lockedToken[arg1].field_0)
    mem[32] = 12
    require sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1 <= test266151307()
    mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192] = sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1
    mem[64] = (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + (32 * sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1) + 224
    if sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1:
        mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 224 len 32 * sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1] = call.data[calldata.size len 32 * sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1]
    idx = 0
    while idx < sub_3fd97b9b[address(stor10[arg1].field_0)].field_0:
        require idx < sub_3fd97b9b[address(stor10[arg1].field_0)].field_0
        if sub_3fd97b9b[address(stor10[arg1].field_0)][idx].field_0 != arg1:
            mem[32] = 12
            require idx < sub_3fd97b9b[address(stor10[arg1].field_0)].field_0
            mem[0] = sha3(address(lockedToken[arg1].field_0), 12)
            require idx < sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1
            mem[(32 * idx) + (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 224] = sub_3fd97b9b[address(stor10[arg1].field_0)][idx].field_0
            idx = idx + 1
            continue 
        s = idx
        while s < sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1:
            mem[32] = 12
            require s + 1 < sub_3fd97b9b[address(stor10[arg1].field_0)].field_0
            mem[0] = sha3(address(lockedToken[arg1].field_0), 12)
            require s < mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192]
            mem[(32 * s) + (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 224] = sub_3fd97b9b[address(stor10[arg1].field_0)][s].field_256
            s = s + 1
            continue 
        mem[32] = 12
        sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 = mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192]
        mem[0] = sha3(address(lockedToken[arg1].field_0), 12)
        if not mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192]:
            idx = sha3(sha3(address(lockedToken[arg1].field_0), 12))
            while sha3(sha3(address(lockedToken[arg1].field_0), 12)) + sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(sha3(address(lockedToken[arg1].field_0), 12))
            idx = (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 224
            while (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + (32 * mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192]) + 224 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(sha3(address(lockedToken[arg1].field_0), 12)) + (Mask(251, 0, (32 * mem[(32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 192]) + 31) >> 5)
            while sha3(sha3(address(lockedToken[arg1].field_0), 12)) + sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit TokensWithdrawn(lockedToken[arg1].field_512, address(lockedToken[arg1].field_0), address(lockedToken[arg1].field_256));
    sub_3fd97b9b[address(stor10[arg1].field_0)].field_0--
    if not sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1:
        idx = 0
        while sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 > idx:
            sub_3fd97b9b[address(stor10[arg1].field_0)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + 224
        while (32 * depositsByWithdrawal[address(stor10[arg1].field_256)].field_0 - 1) + (32 * sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1) + 224 > idx:
            sub_3fd97b9b[address(stor10[arg1].field_0)][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 - 1) + 31) >> 5
        while sub_3fd97b9b[address(stor10[arg1].field_0)].field_0 > idx:
            sub_3fd97b9b[address(stor10[arg1].field_0)][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit TokensWithdrawn(lockedToken[arg1].field_512, address(lockedToken[arg1].field_0), address(lockedToken[arg1].field_256));
}



}
