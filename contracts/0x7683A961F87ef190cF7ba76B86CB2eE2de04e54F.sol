contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 depositId;
array of struct allDepositIds;
array of struct depositsByWithdrawal;
mapping of struct lockedToken;
mapping of uint256 tokenBalanceBy;

function getTokenBalanceByAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return tokenBalanceBy[address(arg1)][address(arg2)]
}

function depositsByWithdrawalAddress(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < depositsByWithdrawal[arg1].field_0
    return depositsByWithdrawal[arg1][arg2].field_0
}

function getDepositDetails(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(lockedToken[arg1].field_0), 
           address(lockedToken[arg1].field_256),
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(uint8(lockedToken[arg1].field_1024))
}

function owner() payable {
    return owner
}

function depositId() payable {
    return depositId
}

function walletTokenBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return tokenBalanceBy[arg1][arg2]
}

function lockedToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(lockedToken[arg1].field_0), 
           address(lockedToken[arg1].field_256),
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(uint8(lockedToken[arg1].field_1024))
}

function allDepositIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < allDepositIds.length
    return allDepositIds[arg1].field_0
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function getTotalTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getAllDepositIds() payable {
    if allDepositIds.length:
        mem[128] = uint256(allDepositIds.field_0)
        idx = 128
        s = 0
        while (32 * allDepositIds.length) + 96 > idx:
            mem[idx + 32] = allDepositIds[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=allDepositIds.length, data=mem[128 len 32 * allDepositIds.length])
    mem[(32 * allDepositIds.length) + 128] = 32
    mem[(32 * allDepositIds.length) + 160] = allDepositIds.length
    mem[(32 * allDepositIds.length) + 192 len 32 * allDepositIds.length] = mem[128 len 32 * allDepositIds.length]
    return memory
      from (32 * allDepositIds.length) + 128
       len (96 * allDepositIds.length) + 64
}

function getDepositsByWithdrawalAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if depositsByWithdrawal[address(arg1)].field_0:
        mem[128] = depositsByWithdrawal[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * depositsByWithdrawal[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = depositsByWithdrawal[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=depositsByWithdrawal[address(arg1)].field_0, data=mem[128 len 32 * depositsByWithdrawal[address(arg1)].field_0]), 
    mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 128] = 32
    mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 160] = depositsByWithdrawal[address(arg1)].field_0
    mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 192 len 32 * depositsByWithdrawal[address(arg1)].field_0] = mem[128 len 32 * depositsByWithdrawal[address(arg1)].field_0]
    return memory
      from (32 * depositsByWithdrawal[address(arg1)].field_0) + 128
       len (96 * depositsByWithdrawal[address(arg1)].field_0) + 64
}

function lockTokens(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 <= 0:
        revert with 0, 'token amount is Zero'
    if arg3 >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Enter an unix timestamp in seconds, not miliseconds'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Approve tokens failed'
    require ext_code.size(arg1)
    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer of tokens failed'
    require arg2 + tokenBalanceBy[address(arg1)][msg.sender] >= tokenBalanceBy[address(arg1)][msg.sender]
    tokenBalanceBy[address(arg1)][msg.sender] += arg2
    depositId++
    address(lockedToken[stor2 + 1].field_0) = arg1
    lockedToken[stor2 + 1].field_256 = msg.sender or Mask(96, 160, lockedToken[stor2 + 1].field_256)
    lockedToken[stor2 + 1].field_512 = arg2
    lockedToken[stor2 + 1].field_768 = arg3
    uint8(lockedToken[stor2 + 1].field_1024) = 0
    allDepositIds.length++
    allDepositIds[allDepositIds.length].field_0 = depositId + 1
    depositsByWithdrawal[msg.sender].field_0++
    depositsByWithdrawal[msg.sender][depositsByWithdrawal[msg.sender].field_0].field_0 = depositId + 1
    return (depositId + 1)
}

function withdrawTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.timestamp < lockedToken[arg1].field_768:
        revert with 0, 'Tokens are locked'
    if address(lockedToken[arg1].field_256) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can withdraw by withdrawal Address only'
    if uint8(lockedToken[arg1].field_1024):
        revert with 0, 'Tokens already withdrawn'
    uint8(lockedToken[arg1].field_1024) = 1
    require ext_code.size(address(lockedToken[arg1].field_0))
    call address(lockedToken[arg1].field_0).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, lockedToken[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer of tokens failed'
    require lockedToken[arg1].field_512 <= tokenBalanceBy[address(stor5[arg1].field_0)][msg.sender]
    tokenBalanceBy[address(stor5[arg1].field_0)][msg.sender] -= lockedToken[arg1].field_512
    mem[0] = address(lockedToken[arg1].field_256)
    idx = 0
    while idx < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0:
        require idx < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0
        if depositsByWithdrawal[address(stor5[arg1].field_256)][idx].field_0 != arg1:
            mem[0] = address(lockedToken[arg1].field_256)
            mem[32] = 4
            idx = idx + 1
            continue 
        s = idx
        while s < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 - 1:
            require s + 1 < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0
            require s < depositsByWithdrawal[address(stor5[arg1].field_256)].field_0
            depositsByWithdrawal[address(stor5[arg1].field_256)][s].field_0 = depositsByWithdrawal[address(stor5[arg1].field_256)][s].field_256
            mem[0] = address(lockedToken[arg1].field_256)
            mem[32] = 4
            s = s + 1
            continue 
        depositsByWithdrawal[address(stor5[arg1].field_256)].field_0--
        if depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 > depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 - 1:
            mem[0] = sha3(address(lockedToken[arg1].field_256), 4)
            idx = depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 + sha3(mem[0]) - 1
            while sha3(sha3(address(lockedToken[arg1].field_256), 4)) + depositsByWithdrawal[address(stor5[arg1].field_256)].field_0 > idx:
                stor[idx] = 0
                mem[0] = address(lockedToken[arg1].field_256)
                mem[32] = 4
                idx = idx + 1
                continue 
        emit LogWithdrawal(msg.sender, lockedToken[arg1].field_512);
        stor1 = 1
    emit LogWithdrawal(msg.sender, lockedToken[arg1].field_512);
    stor1 = 1
}

function getAllTokens() payable {
    mem[96] = depositId
    mem[64] = (32 * depositId) + 128
    if not depositId:
        idx = 1
        while idx < depositId + 1:
            _29 = mem[64]
            mem[64] = mem[64] + 64
            mem[0] = idx
            mem[_29] = address(lockedToken[idx].field_0)
            mem[0] = idx
            mem[32] = 5
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(lockedToken[idx].field_0))
            staticcall address(lockedToken[idx].field_0).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_40] == mem[_40]
            mem[_29 + 32] = mem[_40]
            require idx - 1 < mem[96]
            mem[(32 * idx - 1) + 128] = _29
            idx = idx + 1
            continue 
        _33 = mem[64]
        mem[mem[64]] = 32
        _34 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _34:
            _57 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_57 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _33 + (64 * _34) + -mem[64] + 64
    mem[64] = (32 * depositId) + 192
    mem[(32 * depositId) + 128] = 0
    mem[(32 * depositId) + 160] = 0
    mem[var7001] = (32 * depositId) + 128
    s = var7001
    idx = var7002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * depositId) + 128] = 0
        mem[(32 * depositId) + 160] = 0
        mem[s + 32] = (32 * depositId) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 1
    while idx < depositId + 1:
        _74 = mem[64]
        mem[64] = mem[64] + 64
        mem[0] = idx
        mem[_74] = address(lockedToken[idx].field_0)
        mem[0] = idx
        mem[32] = 5
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(lockedToken[idx].field_0))
        staticcall address(lockedToken[idx].field_0).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _80 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_80] == mem[_80]
        mem[_74 + 32] = mem[_80]
        require idx - 1 < mem[96]
        mem[(32 * idx - 1) + 128] = _74
        idx = idx + 1
        continue 
    _77 = mem[64]
    mem[mem[64]] = 32
    _78 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _78:
        _87 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_87 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _77 + (64 * _78) + -mem[64] + 64
}

function getLockedTokenDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = depositId
    mem[64] = (32 * depositId) + 128
    if not depositId:
        idx = 1
        s = 0
        while idx < depositId + 1:
            mem[0] = idx
            mem[32] = 5
            if address(lockedToken[idx].field_0) != arg1:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 5
            _33 = mem[64]
            mem[64] = mem[64] + 160
            mem[_33] = address(lockedToken[idx].field_0)
            mem[_33 + 32] = address(lockedToken[idx].field_256)
            mem[_33 + 64] = lockedToken[idx].field_512
            mem[_33 + 96] = lockedToken[idx].field_768
            mem[_33 + 128] = bool(uint8(lockedToken[idx].field_1024))
            require s < mem[96]
            mem[(32 * s) + 128] = _33
            idx = idx + 1
            s = s + 1
            continue 
        if not s:
            _35 = mem[64]
            mem[mem[64]] = 32
            _37 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _37:
                _71 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_71 + 44 len 20]
                mem[t + 64] = mem[_71 + 64]
                mem[t + 96] = mem[_71 + 96]
                mem[t + 128] = bool(mem[_71 + 128])
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _35 + (160 * _37) + -mem[64] + 64
        _31 = mem[64]
        mem[mem[64]] = s
        _104 = mem[64] + (32 * s) + 32
        mem[64] = mem[64] + (32 * s) + 192
        mem[_104] = 0
        mem[_104 + 32] = 0
        mem[_104 + 64] = 0
        mem[_104 + 96] = 0
        mem[_104 + 128] = 0
        mem[var24001] = _104
        t = var24001
        idx = var24002
        while idx - 1:
            _104 = mem[64]
            mem[64] = mem[64] + 160
            mem[_104] = 0
            mem[_104 + 32] = 0
            mem[_104 + 64] = 0
            mem[_104 + 96] = 0
            mem[_104 + 128] = 0
            mem[t + 32] = _104
            t = t + 32
            idx = idx - 1
            continue 
        t = 0
        while t < s:
            require t < mem[96]
            require t < mem[_31]
            mem[(32 * t) + _31 + 32] = mem[(32 * t) + 128]
            t = t + 1
            continue 
        _149 = mem[64]
        mem[mem[64]] = 32
        _152 = mem[_31]
        mem[mem[64] + 32] = mem[_31]
        idx = 0
        s = _31 + 32
        t = mem[64] + 64
        while idx < _152:
            _177 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_177 + 44 len 20]
            mem[t + 64] = mem[_177 + 64]
            mem[t + 96] = mem[_177 + 96]
            mem[t + 128] = bool(mem[_177 + 128])
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _149 + (160 * _152) + -mem[64] + 64
    mem[64] = (32 * depositId) + 288
    mem[(32 * depositId) + 128] = 0
    mem[(32 * depositId) + 160] = 0
    mem[(32 * depositId) + 192] = 0
    mem[(32 * depositId) + 224] = 0
    mem[(32 * depositId) + 256] = 0
    mem[var19001] = (32 * depositId) + 128
    s = var19001
    idx = var19002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * depositId) + 128] = 0
        mem[(32 * depositId) + 160] = 0
        mem[(32 * depositId) + 192] = 0
        mem[(32 * depositId) + 224] = 0
        mem[(32 * depositId) + 256] = 0
        mem[s + 32] = (32 * depositId) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 1
    s = 0
    while idx < depositId + 1:
        mem[0] = idx
        mem[32] = 5
        if address(lockedToken[idx].field_0) != arg1:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 5
        _108 = mem[64]
        mem[64] = mem[64] + 160
        mem[_108] = address(lockedToken[idx].field_0)
        mem[_108 + 32] = address(lockedToken[idx].field_256)
        mem[_108 + 64] = lockedToken[idx].field_512
        mem[_108 + 96] = lockedToken[idx].field_768
        mem[_108 + 128] = bool(uint8(lockedToken[idx].field_1024))
        require s < mem[96]
        mem[(32 * s) + 128] = _108
        idx = idx + 1
        s = s + 1
        continue 
    if not s:
        _110 = mem[64]
        mem[mem[64]] = 32
        _115 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _115:
            _145 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_145 + 44 len 20]
            mem[t + 64] = mem[_145 + 64]
            mem[t + 96] = mem[_145 + 96]
            mem[t + 128] = bool(mem[_145 + 128])
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _110 + (160 * _115) + -mem[64] + 64
    _106 = mem[64]
    mem[mem[64]] = s
    _176 = mem[64] + (32 * s) + 32
    mem[64] = mem[64] + (32 * s) + 192
    mem[_176] = 0
    mem[_176 + 32] = 0
    mem[_176 + 64] = 0
    mem[_176 + 96] = 0
    mem[_176 + 128] = 0
    mem[var31001] = _176
    t = var31001
    idx = var31002
    while idx - 1:
        _176 = mem[64]
        mem[64] = mem[64] + 160
        mem[_176] = 0
        mem[_176 + 32] = 0
        mem[_176 + 64] = 0
        mem[_176 + 96] = 0
        mem[_176 + 128] = 0
        mem[t + 32] = _176
        t = t + 32
        idx = idx - 1
        continue 
    t = 0
    while t < s:
        require t < mem[96]
        require t < mem[_106]
        mem[(32 * t) + _106 + 32] = mem[(32 * t) + 128]
        t = t + 1
        continue 
    _199 = mem[64]
    mem[mem[64]] = 32
    _200 = mem[_106]
    mem[mem[64] + 32] = mem[_106]
    idx = 0
    s = _106 + 32
    t = mem[64] + 64
    while idx < _200:
        _208 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_208 + 44 len 20]
        mem[t + 64] = mem[_208 + 64]
        mem[t + 96] = mem[_208 + 96]
        mem[t + 128] = bool(mem[_208 + 128])
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _199 + (160 * _200) + -mem[64] + 64
}



}
