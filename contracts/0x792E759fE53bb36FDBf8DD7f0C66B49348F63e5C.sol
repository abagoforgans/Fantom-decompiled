contract main {




// =====================  Runtime code  =====================


uint8 sub_7d521011; offset 160
uint8 sub_8f78e53b; offset 168
uint8 sub_edda32ab; offset 176
uint8 sub_22761717; offset 184
uint8 sub_9e43a3f8; offset 192
uint8 sub_2ef46bb5; offset 200
uint8 sub_04a9a46d; offset 208
address owner;
uint256 saleStartTime;
uint256 saleEndTime;
address depositorAddress;
address allocatorAddress;
address liquidityProviderAddress;
address sub_7edd3da5Address;
uint32 stor7;
address tokenAddress;
address factoryAddress;
address routerAddress;
uint256 totalSupply;
uint256 sub_79aa9db5;
uint256 totalBought;
uint256 pricePerToken;
uint256 sub_ef4593dd;
mapping of uint256 sub_7edd49f8;
mapping of uint256 sub_722b1563;
mapping of uint256 sub_c4980579;
mapping of uint256 sub_6b827f76;
mapping of uint256 tokensBought;
mapping of uint8 stor20;
address sub_e79b79eaAddress;
uint256 stor8037;
uint256 stor45F7;
uint256 stor853B;
uint256 stor9BFB;
uint256 storA74B;
uint256 storB3ED;

function sub_04a9a46d(?) {
    return bool(sub_04a9a46d)
}

function totalSupply() {
    return totalSupply
}

function saleStartTime() {
    return saleStartTime
}

function sub_22761717(?) {
    return bool(sub_22761717)
}

function tokensBought(address arg1) {
    require calldata.size - 4 >= 32
    return tokensBought[arg1]
}

function sub_2ef46bb5(?) {
    return bool(sub_2ef46bb5)
}

function totalBought() {
    return totalBought
}

function liquidityProvider() {
    return liquidityProviderAddress
}

function tokensClaimed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function sub_6b827f76(?) {
    require calldata.size - 4 >= 32
    return sub_6b827f76[arg1]
}

function sub_722b1563(?) {
    require calldata.size - 4 >= 32
    return sub_722b1563[arg1]
}

function sub_79aa9db5(?) {
    return sub_79aa9db5
}

function pricePerToken() {
    return pricePerToken
}

function sub_7d521011(?) {
    return bool(sub_7d521011)
}

function sub_7edd3da5(?) {
    return sub_7edd3da5Address
}

function sub_7edd49f8(?) {
    require calldata.size - 4 >= 32
    return sub_7edd49f8[arg1]
}

function owner() {
    return owner
}

function sub_8f78e53b(?) {
    return bool(sub_8f78e53b)
}

function sub_9e43a3f8(?) {
    return bool(sub_9e43a3f8)
}

function allocator() {
    return allocatorAddress
}

function factory() {
    return factoryAddress
}

function sub_c4980579(?) {
    require calldata.size - 4 >= 32
    return sub_c4980579[arg1]
}

function depositor() {
    return depositorAddress
}

function sub_e79b79ea(?) {
    return sub_e79b79eaAddress
}

function saleEndTime() {
    return saleEndTime
}

function sub_edda32ab(?) {
    return bool(sub_edda32ab)
}

function sub_ef4593dd(?) {
    return sub_ef4593dd
}

function router() {
    return routerAddress
}

function token() {
    return address(tokenAddress)
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

function setAllocator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Address cannot be 0'
    allocatorAddress = arg1
}

function setDepositor(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Address cannot be 0'
    depositorAddress = arg1
}

function setLiquidityProvider(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Address cannot be 0'
    liquidityProviderAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_04808bbf(?) {
    require calldata.size - 4 >= 64
    if liquidityProviderAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x644f6e6c79206c69717569646974792070726f76696465722063616e2070726f76696465206c69717569646974,
                    mem[209 len 19]
    if sub_22761717:
        revert with 0, 'LP provision already done'
    if not sub_9e43a3f8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x734c69717569646974792046544d206861736e2774206265656e2077697468647261776e207965,
                    mem[203 len 25]
    sub_22761717 = 1
    emit 0x37112846: arg1, arg2, msg.sender
}

function availableTokens() {
    require ext_code.size(sub_e79b79eaAddress)
    staticcall sub_e79b79eaAddress.0xae8da9b4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[31 len 1]:
        revert with 0, 'Buying seat is required'
    require ext_code.size(sub_e79b79eaAddress)
    staticcall sub_e79b79eaAddress.0xae8da9b4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if tokensBought[msg.sender] > sub_722b1563[ext_call.return_data[0] << 248]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_722b1563[ext_call.return_data[0] << 248] - tokensBought[msg.sender])
}

function sub_4910f7f1(?) {
    require calldata.size - 4 >= 32
    if depositorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x644f6e6c79206465706f7369746f722063616e206465706f73697420746f6b656e,
                    mem[197 len 31]
    if sub_7d521011:
        revert with 0, 'Deposit already done'
    if block.timestamp >= saleEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x79546f6b656e73206e65656420746f206265206465706f73697465642061667465722073616c6520656e,
                    mem[206 len 22]
    if arg1 <= 0:
        revert with 0, 'Amount has to be higher than 0'
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalSupply = arg1
    sub_7d521011 = 1
    emit 0x7139450d: arg1, msg.sender
}

function depositLiquidityTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if depositorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x644f6e6c79206465706f7369746f722063616e206465706f73697420746f6b656e,
                    mem[197 len 31]
    if sub_8f78e53b:
        revert with 0, 'Liquidity deposit already done'
    if block.timestamp <= saleEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x79546f6b656e73206e65656420746f206265206465706f7369746564206265666f72652073616c652073746172,
                    mem[209 len 19]
    if arg1 <= 0:
        revert with 0, 'Amount has to be higher than 0'
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_79aa9db5 = arg1
    sub_8f78e53b = 1
    emit 0x122137be: arg1, msg.sender
}

function withdrawUnsoldTokens() {
    if depositorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x644f6e6c79206465706f7369746f722063616e206465706f73697420746f6b656e,
                    mem[197 len 31]
    if sub_04a9a46d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79546f6b656e732068617665206265656e2077697468647261776e20616c72656164,
                    mem[198 len 30]
    if not sub_22761717:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6453616c6520616e64204c502070726f766973696f6e206e65656420746f2062652066696e69736865,
                    mem[205 len 23]
    if totalBought > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, totalSupply - totalBought
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_04a9a46d = 1
    emit 0xf06c2ef7: (totalSupply - totalBought), msg.sender
}

function sub_bb585ed6(?) {
    if depositorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x644f6e6c79206465706f7369746f722063616e206465706f73697420746f6b656e,
                    mem[197 len 31]
    if sub_2ef46bb5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x745465616d20616c6c6f636174696f6e20686173206265656e2077697468647261776e20616c72656164,
                    mem[206 len 22]
    if sub_ef4593dd >= 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7931303025206f662046544d20697320616c6c6f636174656420746f206c69717569646974,
                    mem[201 len 27]
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7446544d2062616c616e6365206e6565647320746f20626520686967686572207468616e20,
                    mem[201 len 27]
    if not sub_22761717:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6453616c6520616e64204c502070726f766973696f6e206e65656420746f2062652066696e69736865,
                    mem[205 len 23]
    call depositorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_2ef46bb5 = 1
    emit 0x9d25d75d: eth.balance(this.address), msg.sender
}

function sub_853f3ccf(?) {
    if liquidityProviderAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x644f6e6c79206c69717569646974792070726f76696465722063616e2070726f76696465206c69717569646974,
                    mem[209 len 19]
    if sub_22761717:
        revert with 0, 'LP provision already done'
    if sub_9e43a3f8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x304c69717569646974792046544d2068617320616c7265616479206265656e207769746864726177,
                    mem[204 len 24]
    if block.timestamp <= saleEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x644c69717569646974792046544d2063616e206f6e6c792062652077697468647261776e2061667465722074686520746f6b656e2073616c,
                    mem[220 len 8]
    if not eth.balance(this.address):
        call liquidityProviderAddress with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_9e43a3f8 = 1
        emit 0x5587e51e: 0, msg.sender
    else:
        if sub_ef4593dd * eth.balance(this.address) / eth.balance(this.address) != sub_ef4593dd:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        call liquidityProviderAddress with:
           value sub_ef4593dd * eth.balance(this.address) / 10000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_9e43a3f8 = 1
        emit 0x5587e51e: (sub_ef4593dd * eth.balance(this.address) / 10000), msg.sender
}

function sub_57371aa3(?) {
    require calldata.size - 4 >= 192
    if allocatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x734f6e6c7920616c6c6f6361746f722063616e20706572666f726d20616c6c6f636174696f,
                    mem[201 len 27]
    if sub_edda32ab:
        revert with 0, 'Allocation already done'
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 + arg2 + arg1 != totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6e416c6c6f636174696f6e73206e65656420746f2073756d20757020746f20746f74616c20737570706c,
                    mem[206 len 22]
    if not arg1:
        revert with 0, 'Neither allocation can be 0'
    if not arg2:
        revert with 0, 'Neither allocation can be 0'
    if not arg3:
        revert with 0, 'Neither allocation can be 0'
    if not arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x774e65697468657220706572207365617420616c6c6f636174696f6e2063616e20626520,
                    mem[200 len 28]
    if not arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x774e65697468657220706572207365617420616c6c6f636174696f6e2063616e20626520,
                    mem[200 len 28]
    if not arg6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x774e65697468657220706572207365617420616c6c6f636174696f6e2063616e20626520,
                    mem[200 len 28]
    sub_c4980579[1] = arg1
    stor8037 = arg2
    stor9BFB = arg3
    sub_7edd49f8[1] = arg1
    storA74B = arg2
    stor45F7 = arg3
    sub_722b1563[1] = arg4
    stor853B = arg5
    storB3ED = arg6
    sub_edda32ab = 1
    emit 0x5dc863c4: arg1, arg2, arg3, arg4, arg5, arg6, msg.sender
}

function buyTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_e79b79eaAddress)
    staticcall sub_e79b79eaAddress.0xae8da9b4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[31 len 1]:
        revert with 0, 'Buying seat is required'
    if block.timestamp < saleStartTime:
        revert with 0, 'Sale is not running'
    if block.timestamp >= saleEndTime:
        revert with 0, 'Sale is not running'
    require ext_code.size(sub_e79b79eaAddress)
    staticcall sub_e79b79eaAddress.0xae8da9b4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if tokensBought[msg.sender] > sub_722b1563[ext_call.return_data[0] << 248]:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_722b1563[ext_call.return_data[0] << 248] - tokensBought[msg.sender] < arg1:
        revert with 0, 'Not enough available tokens'
    if not arg1:
        if msg.value != 0:
            revert with 0, 'Not enough FTM'
    else:
        if pricePerToken * arg1 / arg1 != pricePerToken:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if pricePerToken * arg1 / 10^18 != msg.value:
            revert with 0, 'Not enough FTM'
    if arg1 + tokensBought[msg.sender] < tokensBought[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    tokensBought[msg.sender] += arg1
    if msg.value + sub_6b827f76[msg.sender] < sub_6b827f76[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    sub_6b827f76[msg.sender] += msg.value
    if arg1 > sub_c4980579[ext_call.return_data[0] << 248]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_c4980579[ext_call.return_data[0] << 248] -= arg1
    if arg1 + totalBought < totalBought:
        revert with 0, 'SafeMath: addition overflow'
    totalBought += arg1
    if totalSupply <= arg1 + totalBought:
        saleEndTime = block.timestamp
    emit 0x926b0372: ext_call.return_data[0] << 248, arg1, msg.value, msg.sender
}

function claimTokens() {
    require ext_code.size(sub_e79b79eaAddress)
    staticcall sub_e79b79eaAddress.0xae8da9b4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[31 len 1]:
        revert with 0, 'Buying seat is required'
    if not sub_7d521011:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x30546f6b656e206465706f736974206e6565647320746f20626520636f6d706c657465,
                    mem[199 len 29]
    if stor20[msg.sender]:
        revert with 0, 'Tokens cannot be claimed already'
    if not sub_22761717:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x654c502050726f766973696f6e206e6565647320746f20626520636f6d706c657465,
                    mem[198 len 30]
    if not tokensBought[msg.sender]:
        revert with 0, 'Tokens need to be bought'
    require ext_code.size(address(tokenAddress))
    staticcall address(tokenAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > tokensBought[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e417661696c61626c652062616c616e6365206e6565647320746f20626520686967686572207468616e20636c6169,
                    mem[211 len 17]
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, tokensBought[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor20[msg.sender] = 1
    require ext_code.size(sub_e79b79eaAddress)
    staticcall sub_e79b79eaAddress.0xae8da9b4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x693ba418: ext_call.return_data[0] << 248, tokensBought[msg.sender], msg.sender
}

function provideLiquidity() {
    if liquidityProviderAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x644f6e6c79206c69717569646974792070726f76696465722063616e2070726f76696465206c69717569646974,
                    mem[209 len 19]
    if not sub_8f78e53b:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x644c697175696469747920746f6b656e73206e65656420746f206265206465706f73697465,
                    mem[201 len 27]
    if sub_22761717:
        revert with 0, 'LP provision already done'
    if block.timestamp <= saleEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe4c6971756964697479206e6565647320746f2062652070726f76696465642061667465722074686520746f6b656e2073616c,
                    mem[215 len 13]
    if not eth.balance(this.address):
        require ext_code.size(routerAddress)
        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0, uint32(stor7), sub_79aa9db5, 0, 0, this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(tokenAddress), sub_7edd3da5Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            require ext_code.size(factoryAddress)
            call factoryAddress.createPair(address arg1, address arg2) with:
                 gas gas_remaining wei
                args address(tokenAddress), sub_7edd3da5Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 57005, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_22761717 = 1
        emit 0x37112846: sub_79aa9db5, 0, msg.sender
    else:
        if sub_ef4593dd * eth.balance(this.address) / eth.balance(this.address) != sub_ef4593dd:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(routerAddress)
        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value sub_ef4593dd * eth.balance(this.address) / 10000 wei
             gas gas_remaining wei
            args 0, uint32(stor7), sub_79aa9db5, 0, 0, this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(tokenAddress), sub_7edd3da5Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            require ext_code.size(factoryAddress)
            call factoryAddress.createPair(address arg1, address arg2) with:
                 gas gas_remaining wei
                args address(tokenAddress), sub_7edd3da5Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 57005, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_22761717 = 1
        emit 0x37112846: sub_79aa9db5, sub_ef4593dd * eth.balance(this.address) / 10000, msg.sender
}



}
