contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
uint256 depositId;
array of struct allDepositIds;
array of struct depositsByWithdrawal;
mapping of struct lockedToken;
mapping of uint256 tokenBalanceBy;

function getTokenBalanceByAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return tokenBalanceBy[address(arg1)][address(arg2)]
}

function depositsByWithdrawalAddress(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < depositsByWithdrawal[arg1].field_0
    return depositsByWithdrawal[arg1][arg2].field_0
}

function getDepositDetails(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lockedToken[arg1].field_0, 
           lockedToken[arg1].field_256,
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(lockedToken[arg1].field_1024)
}

function owner() payable {
    return owner
}

function depositId() payable {
    return depositId
}

function walletTokenBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return tokenBalanceBy[arg1][arg2]
}

function lockedToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lockedToken[arg1].field_0, 
           lockedToken[arg1].field_256,
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(lockedToken[arg1].field_1024)
}

function allDepositIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allDepositIds.length
    return allDepositIds[arg1].field_0
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function claimOwnership() payable {
    require msg.sender == pendingOwner
    owner = pendingOwner
    pendingOwner = 0
    emit LogOwnerShipTransferred(pendingOwner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pendingOwner = arg1
    emit LogOwnerShipTransferInitiated(owner, arg1);
}

function getTotalTokenBalance(address arg1) payable {
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

function getAllDepositIds() payable {
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

function getDepositsByWithdrawalAddress(address arg1) payable {
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

function lockTokens(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 <= 0:
        revert with 0, 'token amount is Zero'
    if arg3 >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe456e74657220616e20756e69782074696d657374616d7020696e207365636f6e64732c206e6f74206d696c697365636f6e64,
                    mem[215 len 13]
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Approve tokens failed'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer of tokens failed'
    if arg2 + tokenBalanceBy[address(arg1)][msg.sender] < tokenBalanceBy[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    tokenBalanceBy[address(arg1)][msg.sender] += arg2
    depositId++
    lockedToken[stor2 + 1].field_0 = arg1
    lockedToken[stor2 + 1].field_256 = msg.sender or Mask(96, 160, lockedToken[stor2 + 1].field_256)
    lockedToken[stor2 + 1].field_512 = arg2
    lockedToken[stor2 + 1].field_768 = arg3
    lockedToken[stor2 + 1].field_1024 = 0
    allDepositIds.length++
    allDepositIds[allDepositIds.length].field_0 = depositId + 1
    depositsByWithdrawal[msg.sender].field_0++
    depositsByWithdrawal[msg.sender][depositsByWithdrawal[msg.sender].field_0].field_0 = depositId + 1
    return (depositId + 1)
}

function withdrawTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < lockedToken[arg1].field_768:
        revert with 0, 'Tokens are locked'
    if lockedToken[arg1].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7343616e207769746864726177206279207769746864726177616c2041646472657373206f6e6c,
                    mem[203 len 25]
    if lockedToken[arg1].field_1024:
        revert with 0, 'Tokens already withdrawn'
    require ext_code.size(lockedToken[arg1].field_0)
    call lockedToken[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, lockedToken[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer of tokens failed'
    lockedToken[arg1].field_1024 = 1
    if lockedToken[arg1].field_512 > tokenBalanceBy[stor5[arg1].field_0][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    tokenBalanceBy[stor5[arg1].field_0][msg.sender] -= lockedToken[arg1].field_512
    idx = 0
    while idx < depositsByWithdrawal[stor5[arg1].field_256].field_0:
        require idx < depositsByWithdrawal[stor5[arg1].field_256].field_0
        if depositsByWithdrawal[stor5[arg1].field_256][idx].field_0 != arg1:
            mem[0] = lockedToken[arg1].field_256
            mem[32] = 4
            idx = idx + 1
            continue 
        s = idx
        while s < depositsByWithdrawal[stor5[arg1].field_256].field_0 - 1:
            require s + 1 < depositsByWithdrawal[stor5[arg1].field_256].field_0
            require s < depositsByWithdrawal[stor5[arg1].field_256].field_0
            depositsByWithdrawal[stor5[arg1].field_256][s].field_0 = depositsByWithdrawal[stor5[arg1].field_256][s].field_256
            mem[0] = lockedToken[arg1].field_256
            mem[32] = 4
            s = s + 1
            continue 
        require depositsByWithdrawal[stor5[arg1].field_256].field_0
        depositsByWithdrawal[stor5[arg1].field_256][depositsByWithdrawal[stor5[arg1].field_256].field_0].field_0 = 0
        depositsByWithdrawal[stor5[arg1].field_256].field_0--
        emit LogWithdrawal(msg.sender, lockedToken[arg1].field_512);
    emit LogWithdrawal(msg.sender, lockedToken[arg1].field_512);
}



}
