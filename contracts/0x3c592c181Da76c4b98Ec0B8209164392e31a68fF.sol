contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 5721]
}



// =====================  Runtime code  =====================


address owner;
uint256 depositId;
array of struct allDepositIds;
array of struct sub_3fd97b9b;
array of struct depositsByWithdrawal;
mapping of struct lockedToken;
mapping of uint256 tokenBalanceBy;

function getTokenBalanceByAddress(address arg1, address arg2) {
    return tokenBalanceBy[address(arg1)][address(arg2)]
}

function sub_3fd97b9b(?) {
    require arg2 < sub_3fd97b9b[arg1].field_0
    return sub_3fd97b9b[arg1][arg2].field_0
}

function depositsByWithdrawalAddress(address arg1, uint256 arg2) {
    require arg2 < depositsByWithdrawal[arg1].field_0
    return depositsByWithdrawal[arg1][arg2].field_0
}

function getDepositDetails(uint256 arg1) {
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

function walletTokenBalance(address arg1, address arg2) {
    return tokenBalanceBy[arg1][arg2]
}

function lockedToken(uint256 arg1) {
    return address(lockedToken[arg1].field_0), 
           address(lockedToken[arg1].field_256),
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(uint8(lockedToken[arg1].field_1024))
}

function allDepositIds(uint256 arg1) {
    require arg1 < allDepositIds.length
    return allDepositIds[arg1].field_0
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function getTotalTokenBalance(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function extendLockDuration(uint256 arg1, uint256 arg2) {
    require arg2 < 10^10
    require arg2 > lockedToken[arg1].field_768
    require not uint8(lockedToken[arg1].field_1024)
    require address(lockedToken[arg1].field_256) == msg.sender
    lockedToken[arg1].field_768 = arg2
}

function getDepositsByTokenAddress(address arg1) {
    if sub_3fd97b9b[address(arg1)].field_0:
        mem[160] = sub_3fd97b9b[address(arg1)].field_0
        if (32 * sub_3fd97b9b[address(arg1)].field_0) + 32 > 64:
            mem[192] = sub_3fd97b9b[address(arg1)].field_256
            idx = 192
            s = 1
            while (32 * sub_3fd97b9b[address(arg1)].field_0) + 128 > idx:
                mem[idx + 32] = sub_3fd97b9b[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_3fd97b9b[address(arg1)].field_0) + 160] = 32
    mem[(32 * sub_3fd97b9b[address(arg1)].field_0) + 192] = sub_3fd97b9b[address(arg1)].field_0
    mem[(32 * sub_3fd97b9b[address(arg1)].field_0) + 224 len floor32(sub_3fd97b9b[address(arg1)].field_0)] = mem[160 len floor32(sub_3fd97b9b[address(arg1)].field_0)]
    return memory
      from (32 * sub_3fd97b9b[address(arg1)].field_0) + 160
       len (96 * sub_3fd97b9b[address(arg1)].field_0) + 64
}

function getAllDepositIds() {
    if not allDepositIds.length:
        mem[(32 * allDepositIds.length) + 160] = 32
        mem[(32 * allDepositIds.length) + 192] = allDepositIds.length
        mem[(32 * allDepositIds.length) + 224 len floor32(allDepositIds.length)] = mem[160 len floor32(allDepositIds.length)]
        return memory
          from (32 * allDepositIds.length) + 160
           len (96 * allDepositIds.length) + 64
    mem[160] = uint256(allDepositIds.field_0)
    idx = 160
    s = 0
    while (32 * allDepositIds.length) + 128 > idx:
        mem[idx + 32] = allDepositIds[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allDepositIds.length) + 224 len floor32(allDepositIds.length)] = mem[160 len floor32(allDepositIds.length)]
    return Array(len=allDepositIds.length, data=mem[160 len floor32(allDepositIds.length)], mem[(32 * allDepositIds.length) + floor32(allDepositIds.length) + 224 len (32 * allDepositIds.length) - floor32(allDepositIds.length)]), 
}

function getDepositsByWithdrawalAddress(address arg1) {
    if not depositsByWithdrawal[address(arg1)].field_0:
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 160] = 32
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 192] = depositsByWithdrawal[address(arg1)].field_0
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 224 len floor32(depositsByWithdrawal[address(arg1)].field_0)] = mem[160 len floor32(depositsByWithdrawal[address(arg1)].field_0)]
        return memory
          from (32 * depositsByWithdrawal[address(arg1)].field_0) + 160
           len (96 * depositsByWithdrawal[address(arg1)].field_0) + 64
    mem[160] = depositsByWithdrawal[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * depositsByWithdrawal[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = depositsByWithdrawal[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 224 len floor32(depositsByWithdrawal[address(arg1)].field_0)] = mem[160 len floor32(depositsByWithdrawal[address(arg1)].field_0)]
    return Array(len=depositsByWithdrawal[address(arg1)].field_0, data=mem[160 len floor32(depositsByWithdrawal[address(arg1)].field_0)], mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + floor32(depositsByWithdrawal[address(arg1)].field_0) + 224 len (32 * depositsByWithdrawal[address(arg1)].field_0) - floor32(depositsByWithdrawal[address(arg1)].field_0)]), 
}

function lockTokens(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require arg3 > 0
    require arg4 < 10^10
    require arg3 + tokenBalanceBy[address(arg1)][address(arg2)] >= tokenBalanceBy[address(arg1)][address(arg2)]
    tokenBalanceBy[address(arg1)][address(arg2)] += arg3
    depositId++
    address(lockedToken[stor1 + 1].field_0) = arg1
    address(lockedToken[stor1 + 1].field_256) = arg2
    lockedToken[stor1 + 1].field_512 = arg3
    lockedToken[stor1 + 1].field_768 = arg4
    uint8(lockedToken[stor1 + 1].field_1024) = 0
    allDepositIds.length++
    if not allDepositIds.length <= allDepositIds.length + 1:
        idx = allDepositIds.length + 1
        while allDepositIds.length > idx:
            allDepositIds[idx].field_0 = 0
            idx = idx + 1
            continue 
    allDepositIds[allDepositIds.length].field_0 = depositId + 1
    depositsByWithdrawal[address(arg2)].field_0++
    if not depositsByWithdrawal[address(arg2)].field_0 <= depositsByWithdrawal[address(arg2)].field_0 + 1:
        idx = depositsByWithdrawal[address(arg2)].field_0 + 1
        while depositsByWithdrawal[address(arg2)].field_0 > idx:
            depositsByWithdrawal[address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
    sub_3fd97b9b[address(arg1)].field_0++
    if not sub_3fd97b9b[address(arg1)].field_0 <= sub_3fd97b9b[address(arg1)].field_0 + 1:
        idx = sub_3fd97b9b[address(arg1)].field_0 + 1
        while sub_3fd97b9b[address(arg1)].field_0 > idx:
            sub_3fd97b9b[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_3fd97b9b[address(arg1)][sub_3fd97b9b[address(arg1)].field_0].field_0 = depositId + 1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg3
    require ext_call.success
    require ext_call.return_data[0]
    return (depositId + 1)
}

function withdrawTokens(uint256 arg1) {
    require block.timestamp >= lockedToken[arg1].field_768
    require address(lockedToken[arg1].field_256) == msg.sender
    require not uint8(lockedToken[arg1].field_1024)
    uint8(lockedToken[arg1].field_1024) = 1
    require lockedToken[arg1].field_512 <= tokenBalanceBy[address(stor5[arg1].field_0)][address(msg.sender)]
    tokenBalanceBy[address(stor5[arg1].field_0)][address(msg.sender)] -= lockedToken[arg1].field_512
    idx = 0
    while idx < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0:
        mem[32] = 4
        require idx < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0
        mem[0] = sha3(address(lockedToken[arg1].field_256), 4)
        if depositsByWithdrawal[address(stor5[arg1].field_256)][idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 - 1 < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0
        require idx < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0
        depositsByWithdrawal[address(stor5[arg1].field_256)][idx].field_0 = depositsByWithdrawal[address(stor5[arg1].field_256)][depositsByWithdrawal[address(stor5[arg1].field_256)].field_0].field_0
        depositsByWithdrawal[address(stor5[arg1].field_256)].field_0--
        if not depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 <= depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 - 1:
            idx = depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 + sha3(sha3(address(lockedToken[arg1].field_256), 4)) - 1
            while sha3(sha3(address(lockedToken[arg1].field_256), 4)) + depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        require ext_code.size(address(lockedToken[arg1].field_0))
        call address(lockedToken[arg1].field_0).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, lockedToken[arg1].field_512
        require ext_call.success
        require ext_call.return_data[0]
        emit LogWithdrawal(msg.sender, lockedToken[arg1].field_512);
    require ext_code.size(address(lockedToken[arg1].field_0))
    call address(lockedToken[arg1].field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, lockedToken[arg1].field_512
    require ext_call.success
    require ext_call.return_data[0]
    emit LogWithdrawal(msg.sender, lockedToken[arg1].field_512);
}

function transferLocks(uint256 arg1, address arg2) {
    require not uint8(lockedToken[arg1].field_1024)
    require address(lockedToken[arg1].field_256) == msg.sender
    require lockedToken[arg1].field_512 <= tokenBalanceBy[address(stor5[arg1].field_0)][address(msg.sender)]
    tokenBalanceBy[address(stor5[arg1].field_0)][address(msg.sender)] -= lockedToken[arg1].field_512
    require lockedToken[arg1].field_512 + tokenBalanceBy[address(stor5[arg1].field_0)][address(arg2)] >= tokenBalanceBy[address(stor5[arg1].field_0)][address(arg2)]
    tokenBalanceBy[address(stor5[arg1].field_0)][address(arg2)] += lockedToken[arg1].field_512
    idx = 0
    while idx < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0:
        mem[32] = 4
        require idx < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0
        mem[0] = sha3(address(lockedToken[arg1].field_256), 4)
        if depositsByWithdrawal[address(stor5[arg1].field_256)][idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 - 1 < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0
        require idx < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0
        depositsByWithdrawal[address(stor5[arg1].field_256)][idx].field_0 = depositsByWithdrawal[address(stor5[arg1].field_256)][depositsByWithdrawal[address(stor5[arg1].field_256)].field_0].field_0
        depositsByWithdrawal[address(stor5[arg1].field_256)].field_0--
        if not depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 <= depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 - 1:
            idx = depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 + sha3(sha3(address(lockedToken[arg1].field_256), 4)) - 1
            while sha3(sha3(address(lockedToken[arg1].field_256), 4)) + depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        address(lockedToken[arg1].field_256) = arg2
        depositsByWithdrawal[address(arg2)].field_0++
        if not depositsByWithdrawal[address(arg2)].field_0 <= depositsByWithdrawal[address(arg2)].field_0 + 1:
            idx = depositsByWithdrawal[address(arg2)].field_0 + sha3(sha3(address(arg2), 4)) + 1
            while sha3(sha3(address(arg2), 4)) + depositsByWithdrawal[address(arg2)].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = arg1
    address(lockedToken[arg1].field_256) = arg2
    depositsByWithdrawal[address(arg2)].field_0++
    if not depositsByWithdrawal[address(arg2)].field_0 <= depositsByWithdrawal[address(arg2)].field_0 + 1:
        idx = depositsByWithdrawal[address(arg2)].field_0 + 1
        while depositsByWithdrawal[address(arg2)].field_0 > idx:
            depositsByWithdrawal[address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = arg1
}

function createMultipleLocks(address arg1, address arg2, uint256[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg3.length > 0
    require arg3.length == arg4.length
    idx = 0
    s = 0
    while idx < arg3.length:
        require idx < arg3.length
        require mem[(32 * idx) + 128] > 0
        require idx < arg4.length
        require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
        require idx < arg3.length
        require mem[(32 * idx) + 128] + tokenBalanceBy[address(arg1)][address(arg2)] >= tokenBalanceBy[address(arg1)][address(arg2)]
        tokenBalanceBy[address(arg1)][address(arg2)] += mem[(32 * idx) + 128]
        depositId++
        address(lockedToken[stor1 + 1].field_0) = arg1
        address(lockedToken[stor1 + 1].field_256) = arg2
        require idx < arg3.length
        lockedToken[stor1 + 1].field_512 = mem[(32 * idx) + 128]
        require idx < arg4.length
        lockedToken[stor1 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
        uint8(lockedToken[stor1 + 1].field_1024) = 0
        allDepositIds.length++
        if not allDepositIds.length > allDepositIds.length + 1:
            allDepositIds[allDepositIds.length].field_0 = depositId + 1
            depositsByWithdrawal[address(arg2)].field_0++
            if not depositsByWithdrawal[address(arg2)].field_0 > depositsByWithdrawal[address(arg2)].field_0 + 1:
                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                mem[32] = 3
                sub_3fd97b9b[address(arg1)].field_0++
                if not sub_3fd97b9b[address(arg1)].field_0 > sub_3fd97b9b[address(arg1)].field_0 + 1:
                    mem[0] = sha3(address(arg1), 3)
                    sub_3fd97b9b[address(arg1)][sub_3fd97b9b[address(arg1)].field_0].field_0 = depositId + 1
                    require idx < arg3.length
                    _143 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + (32 * arg4.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg4.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _143
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), _143
                else:
                    s = sub_3fd97b9b[address(arg1)].field_0 + sha3(sha3(address(arg1), 3)) + 1
                    while sha3(sha3(address(arg1), 3)) + sub_3fd97b9b[address(arg1)].field_0 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[0] = sha3(address(arg1), 3)
                    sub_3fd97b9b[address(arg1)][sub_3fd97b9b[address(arg1)].field_0].field_0 = depositId + 1
                    require idx < arg3.length
                    _218 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + (32 * arg4.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg4.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _218
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), _218
            else:
                s = depositsByWithdrawal[address(arg2)].field_0 + sha3(sha3(address(arg2), 4)) + 1
                while sha3(sha3(address(arg2), 4)) + depositsByWithdrawal[address(arg2)].field_0 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                mem[32] = 3
                sub_3fd97b9b[address(arg1)].field_0++
                if not sub_3fd97b9b[address(arg1)].field_0 > sub_3fd97b9b[address(arg1)].field_0 + 1:
                    mem[0] = sha3(address(arg1), 3)
                    sub_3fd97b9b[address(arg1)][sub_3fd97b9b[address(arg1)].field_0].field_0 = depositId + 1
                    require idx < arg3.length
                    _230 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + (32 * arg4.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg4.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _230
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), _230
                else:
                    s = sub_3fd97b9b[address(arg1)].field_0 + sha3(sha3(address(arg1), 3)) + 1
                    while sha3(sha3(address(arg1), 3)) + sub_3fd97b9b[address(arg1)].field_0 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[0] = sha3(address(arg1), 3)
                    sub_3fd97b9b[address(arg1)][sub_3fd97b9b[address(arg1)].field_0].field_0 = depositId + 1
                    require idx < arg3.length
                    _286 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + (32 * arg4.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg4.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _286
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), _286
        else:
            s = allDepositIds.length + sha3(2) + 1
            while sha3(2) + allDepositIds.length > s:
                stor[s] = 0
                s = s + 1
                continue 
            allDepositIds[allDepositIds.length].field_0 = depositId + 1
            depositsByWithdrawal[address(arg2)].field_0++
            if not depositsByWithdrawal[address(arg2)].field_0 > depositsByWithdrawal[address(arg2)].field_0 + 1:
                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                mem[32] = 3
                sub_3fd97b9b[address(arg1)].field_0++
                if not sub_3fd97b9b[address(arg1)].field_0 > sub_3fd97b9b[address(arg1)].field_0 + 1:
                    mem[0] = sha3(address(arg1), 3)
                    sub_3fd97b9b[address(arg1)][sub_3fd97b9b[address(arg1)].field_0].field_0 = depositId + 1
                    require idx < arg3.length
                    _242 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + (32 * arg4.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg4.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _242
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), _242
                else:
                    s = sub_3fd97b9b[address(arg1)].field_0 + sha3(sha3(address(arg1), 3)) + 1
                    while sha3(sha3(address(arg1), 3)) + sub_3fd97b9b[address(arg1)].field_0 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[0] = sha3(address(arg1), 3)
                    sub_3fd97b9b[address(arg1)][sub_3fd97b9b[address(arg1)].field_0].field_0 = depositId + 1
                    require idx < arg3.length
                    _290 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + (32 * arg4.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg4.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _290
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), _290
            else:
                s = depositsByWithdrawal[address(arg2)].field_0 + sha3(sha3(address(arg2), 4)) + 1
                while sha3(sha3(address(arg2), 4)) + depositsByWithdrawal[address(arg2)].field_0 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                mem[32] = 3
                sub_3fd97b9b[address(arg1)].field_0++
                if not sub_3fd97b9b[address(arg1)].field_0 > sub_3fd97b9b[address(arg1)].field_0 + 1:
                    mem[0] = sha3(address(arg1), 3)
                    sub_3fd97b9b[address(arg1)][sub_3fd97b9b[address(arg1)].field_0].field_0 = depositId + 1
                    require idx < arg3.length
                    _301 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + (32 * arg4.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg4.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _301
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), _301
                else:
                    s = sub_3fd97b9b[address(arg1)].field_0 + sha3(sha3(address(arg1), 3)) + 1
                    while sha3(sha3(address(arg1), 3)) + sub_3fd97b9b[address(arg1)].field_0 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[0] = sha3(address(arg1), 3)
                    sub_3fd97b9b[address(arg1)][sub_3fd97b9b[address(arg1)].field_0].field_0 = depositId + 1
                    require idx < arg3.length
                    _317 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + (32 * arg4.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg4.length) + 196] = this.address
                    mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _317
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), _317
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        idx = idx + 1
        s = depositId + 1
        continue 
    return s
}



}
