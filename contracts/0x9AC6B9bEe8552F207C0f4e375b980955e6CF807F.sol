contract main {




// =====================  Runtime code  =====================


#
#  - init2()
#  - liquidatePosition(uint256 arg1, address arg2, address arg3)
#  - sellRewards()
#  - shouldTend()
#  - liquidateAllPositions(address arg1, address arg2)
#  - adjustPosition(uint256 arg1, address arg2)
#
address rewardAddress;
address tokenAAddress;
address tokenBAddress;
address providerAAddress;
address providerBAddress;
address uniswapAddress;
address lbpFactoryAddress;
address lbpAddress;
address bVaultAddress;
array of struct assets;
array of struct stor10;
uint8 stor11;
uint8 stor11; offset 8
uint256 tendBuffer;
uint8 stor13;
uint256 upperBound;
uint256 lowerBound;

function lbp() {
    return lbpAddress
}

function tokenA() {
    return tokenAAddress
}

function reward() {
    return rewardAddress
}

function uniswap() {
    return uniswapAddress
}

function bVault() {
    return bVaultAddress
}

function providerB() {
    return providerBAddress
}

function tokenB() {
    return tokenBAddress
}

function stayDisabled() {
    return bool(stor13)
}

function providerA() {
    return providerAAddress
}

function tendBuffer() {
    return tendBuffer
}

function lowerBound() {
    return lowerBound
}

function upperBound() {
    return upperBound
}

function lbpFactory() {
    return lbpFactoryAddress
}

function assets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < assets.length
    return assets[arg1].field_0
}

function _fallback() payable {
    revert
}

function balanceOfLbp() {
    require ext_code.size(lbpAddress)
    staticcall lbpAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function looseBalanceB() {
    require ext_code.size(tokenBAddress)
    staticcall tokenBAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function looseBalanceA() {
    require ext_code.size(tokenAAddress)
    staticcall tokenAAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfReward() {
    require ext_code.size(rewardAddress)
    staticcall rewardAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getPublicSwap() {
    require ext_code.size(lbpAddress)
    staticcall lbpAddress.getSwapEnabled() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setStayDisabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.isVaultManagers(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '!governance'
    stor13 = uint8(arg1)
}

function setWeightBounds(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.isVaultManagers(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '!governance'
    require arg1 < 275 * 10^12 * 3600
    require arg2 > 10^16
    require 10^18 == arg1 + lowerBound
    upperBound = arg1
    lowerBound = arg2
}

function cloneRebalancer(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require uint8(stor11.field_0)
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xc0c53b8b with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Cloned(address(create.new_address));
    return address(create.new_address)
}

function setSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.isVaultManagers(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '!governance'
    require ext_code.size(lbpAddress)
    call lbpAddress.setSwapFeePercentage(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPublicSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.isVaultManagers(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '!governance'
    require ext_code.size(lbpAddress)
    call lbpAddress.setSwapEnabled(bool arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTendBuffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.isVaultManagers(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '!governance'
    require ext_code.size(lbpAddress)
    staticcall lbpAddress.getSwapFeePercentage() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < ext_call.return_data[0]
    tendBuffer = arg1
}

function currentWeightA() {
    mem[96] = 0xf89f27ed00000000000000000000000000000000000000000000000000000000
    require ext_code.size(lbpAddress)
    staticcall lbpAddress.getNormalizedWeights() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require (32 * mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    require 0 < _5
    mem[mem[64]] = mem[ceil32(return_data.size) + 128]
    return memory
      from mem[64]
       len 32
}

function currentWeightB() {
    mem[96] = 0xf89f27ed00000000000000000000000000000000000000000000000000000000
    require ext_code.size(lbpAddress)
    staticcall lbpAddress.getNormalizedWeights() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require (32 * mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    require 1 < _5
    mem[mem[64]] = mem[ceil32(return_data.size) + 160]
    return memory
      from mem[64]
       len 32
}

function setReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.isVaultManagers(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '!governance'
    require ext_code.size(rewardAddress)
    call rewardAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    rewardAddress = arg1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function migrateProvider(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if providerAAddress != msg.sender:
        if providerBAddress != msg.sender:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.isVaultManagers(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, '!allowed'
    require ext_code.size(arg1)
    staticcall arg1.want() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == tokenAAddress:
        providerAAddress = arg1
    else:
        require ext_code.size(arg1)
        staticcall arg1.want() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != tokenBAddress:
            revert with 0, 'Unsupported token'
        providerBAddress = arg1
}

function ethToWant(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg2:
        return 0
    mem[96] = 2
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg1:
        return arg2
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[160] = arg1
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapAddress)
    staticcall uniswapAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _24 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
    _25 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require return_data.size >= _24 + (32 * _25) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _25] = mem[_24 + 224 len 32 * _25]
    require 1 < _25
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function initialize(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if providerAAddress:
        revert with 0, 'Already initialized!'
    if tokenAAddress:
        revert with 0, 'Already initialized!'
    if providerBAddress:
        revert with 0, 'Already initialized!'
    if tokenBAddress:
        revert with 0, 'Already initialized!'
    uint8(stor11.field_8) = 1
    uniswapAddress = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    rewardAddress = 0xf24bcf4d1e507740041c9cfd2dddb29585adce1e
    mem[132] = -1
    require ext_code.size(0xf24bcf4d1e507740041c9cfd2dddb29585adce1e)
    call 0xf24bcf4d1e507740041c9cfd2dddb29585adce1e.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    providerAAddress = arg1
    providerBAddress = arg2
    require ext_code.size(arg1)
    staticcall arg1.want() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tokenAAddress = ext_call.return_data[12 len 20]
    require ext_code.size(providerBAddress)
    staticcall providerBAddress.want() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tokenBAddress = ext_call.return_data[12 len 20]
    require tokenAAddress != ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 100] = uniswapAddress
    mem[(4 * ceil32(return_data.size)) + 132] = -1
    require ext_code.size(tokenAAddress)
    call tokenAAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 132] = -1
    require ext_code.size(tokenBAddress)
    call tokenBAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 128 len 64] = call.data[calldata.size len 64]
    stor10.length = 2
    s = 0
    idx = (7 * ceil32(return_data.size)) + 128
    while (7 * ceil32(return_data.size)) + 192 > idx:
        stor10[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor10.length > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    tendBuffer = 10^15
    upperBound = 98 * 10^16
    lowerBound = 2 * 10^16
    lbpFactoryAddress = arg3
}

function evenOut() {
    if providerAAddress != msg.sender:
        if providerBAddress != msg.sender:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.isVaultManagers(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, '!allowed'
    require ext_code.size(tokenAAddress)
    staticcall tokenAAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenBAddress)
    staticcall tokenBAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.totalDebt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(providerBAddress)
    staticcall providerBAddress.totalDebt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == tokenBAddress:
                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == tokenBAddress
                else:
                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == tokenAAddress:
                        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == tokenAAddress
                    else:
    else:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == tokenAAddress:
                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == tokenAAddress
            else:
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == tokenBAddress:
                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == tokenBAddress
                else:
        else:
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == tokenBAddress:
                        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == tokenBAddress
                    else:
                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == tokenAAddress:
                            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == tokenAAddress
                        else:
}

function pooledBalanceB() {
    require ext_code.size(lbpAddress)
    staticcall lbpAddress.getPoolId() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(bVaultAddress)
    staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 96
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require _8 + (32 * _9) + 32 <= return_data.size
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _21 = mem[ceil32(return_data.size) + 128]
    require mem[ceil32(return_data.size) + 128] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
    _23 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96] <= test266151307()
    _24 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32
    mem[_24] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    require return_data.size >= _21 + (32 * _23) + 32
    mem[_24 + 32 len 32 * _23] = mem[ceil32(return_data.size) + _21 + 128 len 32 * _23]
    require 1 < _23
    mem[mem[64]] = mem[_24 + 64]
    return memory
      from mem[64]
       len 32
}

function pooledBalanceA() {
    require ext_code.size(lbpAddress)
    staticcall lbpAddress.getPoolId() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(bVaultAddress)
    staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 96
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require _8 + (32 * _9) + 32 <= return_data.size
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _21 = mem[ceil32(return_data.size) + 128]
    require mem[ceil32(return_data.size) + 128] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
    _23 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96] <= test266151307()
    _24 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32
    mem[_24] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    require return_data.size >= _21 + (32 * _23) + 32
    mem[_24 + 32 len 32 * _23] = mem[ceil32(return_data.size) + _21 + 128 len 32 * _23]
    require 0 < _23
    mem[mem[64]] = mem[_24 + 32]
    return memory
      from mem[64]
       len 32
}

function pooledBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(lbpAddress)
    staticcall lbpAddress.getPoolId() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(bVaultAddress)
    staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 96
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require _8 + (32 * _9) + 32 <= return_data.size
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _21 = mem[ceil32(return_data.size) + 128]
    require mem[ceil32(return_data.size) + 128] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
    _23 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96] <= test266151307()
    _24 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32
    mem[_24] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    require return_data.size >= _21 + (32 * _23) + 32
    mem[_24 + 32 len 32 * _23] = mem[ceil32(return_data.size) + _21 + 128 len 32 * _23]
    require arg1 < _23
    mem[mem[64]] = mem[(32 * arg1) + _24 + 32]
    return memory
      from mem[64]
       len 32
}

function tokenIndex(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(lbpAddress)
    staticcall lbpAddress.getPoolId() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(bVaultAddress)
    staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 96
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require _8 + (32 * _9) + 32 <= return_data.size
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _25 = mem[ceil32(return_data.size) + 128]
    require mem[ceil32(return_data.size) + 128] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
    _27 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96] <= test266151307()
    require mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32 <= test266151307()
    mem[mem[64]] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    require return_data.size >= _25 + (32 * _27) + 32
    mem[mem[64] + 32 len 32 * _27] = mem[ceil32(return_data.size) + _25 + 128 len 32 * _27]
    require 0 < mem[(2 * ceil32(return_data.size)) + 96]
    if mem[(2 * ceil32(return_data.size)) + 140 len 20] == arg1:
        return 0
    require 1 < mem[(2 * ceil32(return_data.size)) + 96]
    require mem[(2 * ceil32(return_data.size)) + 172 len 20] == arg1
    return 1
}

function totalBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(lbpAddress)
    staticcall lbpAddress.getPoolId() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(bVaultAddress)
    staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 96
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require _8 + (32 * _9) + 32 <= return_data.size
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _73 = mem[ceil32(return_data.size) + 128]
    require mem[ceil32(return_data.size) + 128] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
    _75 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96] <= test266151307()
    _76 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 32
    mem[_76] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    require return_data.size >= _73 + (32 * _75) + 32
    mem[_76 + 32 len 32 * _75] = mem[ceil32(return_data.size) + _73 + 128 len 32 * _75]
    require 0 < mem[(2 * ceil32(return_data.size)) + 96]
    if mem[(2 * ceil32(return_data.size)) + 140 len 20] == arg1:
        require ext_code.size(lbpAddress)
        staticcall lbpAddress.getPoolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _147 = mem[_145]
        mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _147
        require ext_code.size(bVaultAddress)
        staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                gas gas_remaining wei
               args _147
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _153 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _155 = mem[_153]
        require mem[_153] <= test266151307()
        require _153 + mem[_153] + 31 < _153 + return_data.size
        _157 = mem[_153 + mem[_153]]
        require mem[_153 + mem[_153]] <= test266151307()
        require (32 * mem[_153 + mem[_153]]) + 32 >= 0 and _153 + ceil32(return_data.size) + (32 * mem[_153 + mem[_153]]) + 32 <= test266151307()
        mem[64] = _153 + ceil32(return_data.size) + (32 * mem[_153 + mem[_153]]) + 32
        mem[_153 + ceil32(return_data.size)] = _157
        require _155 + (32 * _157) + 32 <= return_data.size
        s = _153 + _155 + 32
        t = _153 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _157:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _195 = mem[_153 + 32]
        require mem[_153 + 32] <= test266151307()
        require _153 + mem[_153 + 32] + 31 < _153 + return_data.size
        _198 = mem[_153 + mem[_153 + 32]]
        require mem[_153 + mem[_153 + 32]] <= test266151307()
        _200 = mem[64]
        require mem[64] + (32 * mem[_153 + mem[_153 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_153 + mem[_153 + 32]]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_153 + mem[_153 + 32]]) + 32
        mem[_200] = _198
        require return_data.size >= _195 + (32 * _198) + 32
        mem[_200 + 32 len 32 * _198] = mem[_153 + _195 + 32 len 32 * _198]
        require 0 < _198
        _232 = mem[_200 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _238 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_238] + _232 < _232:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64]] = mem[_238] + _232
    else:
        require 1 < mem[(2 * ceil32(return_data.size)) + 96]
        require mem[(2 * ceil32(return_data.size)) + 172 len 20] == arg1
        require ext_code.size(lbpAddress)
        staticcall lbpAddress.getPoolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _149 = mem[_146]
        mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _149
        require ext_code.size(bVaultAddress)
        staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                gas gas_remaining wei
               args _149
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _154 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _156 = mem[_154]
        require mem[_154] <= test266151307()
        require _154 + mem[_154] + 31 < _154 + return_data.size
        _158 = mem[_154 + mem[_154]]
        require mem[_154 + mem[_154]] <= test266151307()
        require (32 * mem[_154 + mem[_154]]) + 32 >= 0 and _154 + ceil32(return_data.size) + (32 * mem[_154 + mem[_154]]) + 32 <= test266151307()
        mem[64] = _154 + ceil32(return_data.size) + (32 * mem[_154 + mem[_154]]) + 32
        mem[_154 + ceil32(return_data.size)] = _158
        require _156 + (32 * _158) + 32 <= return_data.size
        s = _154 + _156 + 32
        t = _154 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _158:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _193 = mem[_154 + 32]
        require mem[_154 + 32] <= test266151307()
        require _154 + mem[_154 + 32] + 31 < _154 + return_data.size
        _197 = mem[_154 + mem[_154 + 32]]
        require mem[_154 + mem[_154 + 32]] <= test266151307()
        _199 = mem[64]
        require mem[64] + (32 * mem[_154 + mem[_154 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_154 + mem[_154 + 32]]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_154 + mem[_154 + 32]]) + 32
        mem[_199] = _197
        require return_data.size >= _193 + (32 * _197) + 32
        mem[_199 + 32 len 32 * _197] = mem[_154 + _193 + 32 len 32 * _197]
        require 1 < _197
        _231 = mem[_199 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _237 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_237] + _231 < _231:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64]] = mem[_237] + _231
    return memory
      from mem[64]
       len 32
}

function name() {
    mem[96] = 2
    s = 128
    idx = 2
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[192] = 11
    mem[224] = 0x526562616c616e63657220000000000000000000000000000000000000000000
    mem[128] = 192
    mem[256] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenAAddress)
    staticcall tokenAAddress.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _7 = mem[256]
    require mem[256] <= test266151307()
    require mem[256] + 287 < return_data.size + 256
    _8 = mem[mem[256] + 256]
    require mem[mem[256] + 256] <= test266151307()
    require ceil32(mem[mem[256] + 256]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[256] + 256]) + 288 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[256] + 256]) + 288
    mem[ceil32(return_data.size) + 256] = mem[mem[256] + 256]
    require _7 + _8 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288 len ceil32(_8)] = mem[_7 + 288 len ceil32(_8)]
    if ceil32(_8) <= _8:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(tokenBAddress)
        staticcall tokenBAddress.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _187 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _189 = mem[_187]
        require mem[_187] <= test266151307()
        require _187 + mem[_187] + 31 < _187 + return_data.size
        _191 = mem[_187 + mem[_187]]
        require mem[_187 + mem[_187]] <= test266151307()
        require ceil32(mem[_187 + mem[_187]]) + 32 >= 0 and _187 + ceil32(return_data.size) + ceil32(mem[_187 + mem[_187]]) + 32 <= test266151307()
        mem[64] = _187 + ceil32(return_data.size) + ceil32(mem[_187 + mem[_187]]) + 32
        mem[_187 + ceil32(return_data.size)] = _191
        require _189 + _191 + 32 <= return_data.size
        mem[_187 + ceil32(return_data.size) + 32 len ceil32(_191)] = mem[_187 + _189 + 32 len ceil32(_191)]
        if ceil32(_191) <= _191:
            _356 = mem[64]
            mem[mem[64] + 32 len ceil32(_8)] = mem[ceil32(return_data.size) + 288 len ceil32(_8)]
            mem[mem[64] + _8 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + _8 + 33 len ceil32(_191)] = mem[_187 + ceil32(return_data.size) + 32 len ceil32(_191)]
            if ceil32(_8) <= _8:
                if ceil32(_191) <= _191:
                    _682 = mem[64]
                    mem[mem[64]] = _191 + _8 + 1
                    mem[64] = _191 + mem[64] + _8 + 33
                    mem[160] = _682
                    mem[_191 + _356 + _8 + 33] = 32
                    mem[_191 + _356 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _191 + _356 + _8 + 97
                    u = _191 + _356 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_191 + -_356 + -_8 - 97
                        _794 = mem[s]
                        _811 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _811:
                            mem[v + u + 32] = mem[v + _794 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_811) > _811:
                            mem[_811 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_811) + u + 32
                        continue 
                else:
                    mem[_191 + mem[64] + _8 + 33] = 0
                    _666 = mem[64]
                    mem[mem[64]] = _191 + _8 + 1
                    mem[64] = _191 + mem[64] + _8 + 33
                    mem[160] = _666
                    mem[_191 + _356 + _8 + 33] = 32
                    mem[_191 + _356 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _191 + _356 + _8 + 97
                    u = _191 + _356 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_191 + -_356 + -_8 - 97
                        _795 = mem[s]
                        _813 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _813:
                            mem[v + u + 32] = mem[v + _795 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_813) > _813:
                            mem[_813 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_813) + u + 32
                        continue 
            else:
                if ceil32(_191) <= _191:
                    _684 = mem[64]
                    mem[mem[64]] = _191 + _8 + 1
                    mem[64] = _191 + mem[64] + _8 + 33
                    mem[160] = _684
                    mem[_191 + _356 + _8 + 33] = 32
                    mem[_191 + _356 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _191 + _356 + _8 + 97
                    u = _191 + _356 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_191 + -_356 + -_8 - 97
                        _796 = mem[s]
                        _815 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _815:
                            mem[v + u + 32] = mem[v + _796 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_815) > _815:
                            mem[_815 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_815) + u + 32
                        continue 
                else:
                    mem[_191 + mem[64] + _8 + 33] = 0
                    _668 = mem[64]
                    mem[mem[64]] = _191 + _8 + 1
                    mem[64] = _191 + mem[64] + _8 + 33
                    mem[160] = _668
                    mem[_191 + _356 + _8 + 33] = 32
                    mem[_191 + _356 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _191 + _356 + _8 + 97
                    u = _191 + _356 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_191 + -_356 + -_8 - 97
                        _797 = mem[s]
                        _817 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _817:
                            mem[v + u + 32] = mem[v + _797 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_817) > _817:
                            mem[_817 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_817) + u + 32
                        continue 
        else:
            mem[_191 + _187 + ceil32(return_data.size) + 32] = 0
            _354 = mem[64]
            mem[mem[64] + 32 len ceil32(_8)] = mem[ceil32(return_data.size) + 288 len ceil32(_8)]
            mem[mem[64] + _8 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + _8 + 33 len ceil32(_191)] = mem[_187 + ceil32(return_data.size) + 32 len ceil32(_191)]
            if ceil32(_8) <= _8:
                if ceil32(_191) <= _191:
                    _686 = mem[64]
                    mem[mem[64]] = _191 + _8 + 1
                    mem[64] = _191 + mem[64] + _8 + 33
                    mem[160] = _686
                    mem[_191 + _354 + _8 + 33] = 32
                    mem[_191 + _354 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _191 + _354 + _8 + 97
                    u = _191 + _354 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_191 + -_354 + -_8 - 97
                        _798 = mem[s]
                        _819 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _819:
                            mem[v + u + 32] = mem[v + _798 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_819) > _819:
                            mem[_819 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_819) + u + 32
                        continue 
                else:
                    mem[_191 + mem[64] + _8 + 33] = 0
                    _670 = mem[64]
                    mem[mem[64]] = _191 + _8 + 1
                    mem[64] = _191 + mem[64] + _8 + 33
                    mem[160] = _670
                    mem[_191 + _354 + _8 + 33] = 32
                    mem[_191 + _354 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _191 + _354 + _8 + 97
                    u = _191 + _354 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_191 + -_354 + -_8 - 97
                        _799 = mem[s]
                        _821 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _821:
                            mem[v + u + 32] = mem[v + _799 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_821) > _821:
                            mem[_821 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_821) + u + 32
                        continue 
            else:
                if ceil32(_191) <= _191:
                    _688 = mem[64]
                    mem[mem[64]] = _191 + _8 + 1
                    mem[64] = _191 + mem[64] + _8 + 33
                    mem[160] = _688
                    mem[_191 + _354 + _8 + 33] = 32
                    mem[_191 + _354 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _191 + _354 + _8 + 97
                    u = _191 + _354 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_191 + -_354 + -_8 - 97
                        _800 = mem[s]
                        _823 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _823:
                            mem[v + u + 32] = mem[v + _800 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_823) > _823:
                            mem[_823 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_823) + u + 32
                        continue 
                else:
                    mem[_191 + mem[64] + _8 + 33] = 0
                    _672 = mem[64]
                    mem[mem[64]] = _191 + _8 + 1
                    mem[64] = _191 + mem[64] + _8 + 33
                    mem[160] = _672
                    mem[_191 + _354 + _8 + 33] = 32
                    mem[_191 + _354 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _191 + _354 + _8 + 97
                    u = _191 + _354 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_191 + -_354 + -_8 - 97
                        _801 = mem[s]
                        _825 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _825:
                            mem[v + u + 32] = mem[v + _801 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_825) > _825:
                            mem[_825 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_825) + u + 32
                        continue 
    else:
        mem[_8 + ceil32(return_data.size) + 288] = 0
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(tokenBAddress)
        staticcall tokenBAddress.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _186 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _188 = mem[_186]
        require mem[_186] <= test266151307()
        require _186 + mem[_186] + 31 < _186 + return_data.size
        _190 = mem[_186 + mem[_186]]
        require mem[_186 + mem[_186]] <= test266151307()
        require ceil32(mem[_186 + mem[_186]]) + 32 >= 0 and _186 + ceil32(return_data.size) + ceil32(mem[_186 + mem[_186]]) + 32 <= test266151307()
        mem[64] = _186 + ceil32(return_data.size) + ceil32(mem[_186 + mem[_186]]) + 32
        mem[_186 + ceil32(return_data.size)] = _190
        require _188 + _190 + 32 <= return_data.size
        mem[_186 + ceil32(return_data.size) + 32 len ceil32(_190)] = mem[_186 + _188 + 32 len ceil32(_190)]
        if ceil32(_190) <= _190:
            _358 = mem[64]
            mem[mem[64] + 32 len ceil32(_8)] = mem[ceil32(return_data.size) + 288 len ceil32(_8)]
            mem[mem[64] + _8 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + _8 + 33 len ceil32(_190)] = mem[_186 + ceil32(return_data.size) + 32 len ceil32(_190)]
            if ceil32(_8) <= _8:
                if ceil32(_190) <= _190:
                    _690 = mem[64]
                    mem[mem[64]] = _190 + _8 + 1
                    mem[64] = _190 + mem[64] + _8 + 33
                    mem[160] = _690
                    mem[_190 + _358 + _8 + 33] = 32
                    mem[_190 + _358 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _190 + _358 + _8 + 97
                    u = _190 + _358 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_190 + -_358 + -_8 - 97
                        _802 = mem[s]
                        _827 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _827:
                            mem[v + u + 32] = mem[v + _802 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_827) > _827:
                            mem[_827 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_827) + u + 32
                        continue 
                else:
                    mem[_190 + mem[64] + _8 + 33] = 0
                    _674 = mem[64]
                    mem[mem[64]] = _190 + _358 + _8 + -mem[64] + 1
                    mem[64] = _190 + _358 + _8 + 33
                    mem[160] = _674
                    mem[_190 + _358 + _8 + 33] = 32
                    mem[_190 + _358 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _190 + _358 + _8 + 97
                    u = _190 + _358 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_190 + -_358 + -_8 - 97
                        _803 = mem[s]
                        _829 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _829:
                            mem[v + u + 32] = mem[v + _803 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_829) > _829:
                            mem[_829 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_829) + u + 32
                        continue 
            else:
                if ceil32(_190) <= _190:
                    _692 = mem[64]
                    mem[mem[64]] = _190 + _8 + 1
                    mem[64] = _190 + mem[64] + _8 + 33
                    mem[160] = _692
                    mem[_190 + _358 + _8 + 33] = 32
                    mem[_190 + _358 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _190 + _358 + _8 + 97
                    u = _190 + _358 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_190 + -_358 + -_8 - 97
                        _804 = mem[s]
                        _831 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _831:
                            mem[v + u + 32] = mem[v + _804 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_831) > _831:
                            mem[_831 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_831) + u + 32
                        continue 
                else:
                    mem[_190 + mem[64] + _8 + 33] = 0
                    _676 = mem[64]
                    mem[mem[64]] = _190 + _358 + _8 + -mem[64] + 1
                    mem[64] = _190 + _358 + _8 + 33
                    mem[160] = _676
                    mem[_190 + _358 + _8 + 33] = 32
                    mem[_190 + _358 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _190 + _358 + _8 + 97
                    u = _190 + _358 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_190 + -_358 + -_8 - 97
                        _805 = mem[s]
                        _833 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _833:
                            mem[v + u + 32] = mem[v + _805 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_833) > _833:
                            mem[_833 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_833) + u + 32
                        continue 
        else:
            mem[_190 + _186 + ceil32(return_data.size) + 32] = 0
            _355 = mem[64]
            mem[mem[64] + 32 len ceil32(_8)] = mem[ceil32(return_data.size) + 288 len ceil32(_8)]
            mem[mem[64] + _8 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + _8 + 33 len ceil32(_190)] = mem[_186 + ceil32(return_data.size) + 32 len ceil32(_190)]
            if ceil32(_8) <= _8:
                if ceil32(_190) <= _190:
                    _694 = mem[64]
                    mem[mem[64]] = _190 + _8 + 1
                    mem[64] = _190 + mem[64] + _8 + 33
                    mem[160] = _694
                    mem[_190 + _355 + _8 + 33] = 32
                    mem[_190 + _355 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _190 + _355 + _8 + 97
                    u = _190 + _355 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_190 + -_355 + -_8 - 97
                        _806 = mem[s]
                        _835 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _835:
                            mem[v + u + 32] = mem[v + _806 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_835) > _835:
                            mem[_835 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_835) + u + 32
                        continue 
                else:
                    mem[_190 + mem[64] + _8 + 33] = 0
                    _678 = mem[64]
                    mem[mem[64]] = _190 + _355 + _8 + -mem[64] + 1
                    mem[64] = _190 + _355 + _8 + 33
                    mem[160] = _678
                    mem[_190 + _355 + _8 + 33] = 32
                    mem[_190 + _355 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _190 + _355 + _8 + 97
                    u = _190 + _355 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_190 + -_355 + -_8 - 97
                        _807 = mem[s]
                        _837 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _837:
                            mem[v + u + 32] = mem[v + _807 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_837) > _837:
                            mem[_837 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_837) + u + 32
                        continue 
            else:
                if ceil32(_190) <= _190:
                    _696 = mem[64]
                    mem[mem[64]] = _190 + _8 + 1
                    mem[64] = _190 + mem[64] + _8 + 33
                    mem[160] = _696
                    mem[_190 + _355 + _8 + 33] = 32
                    mem[_190 + _355 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _190 + _355 + _8 + 97
                    u = _190 + _355 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_190 + -_355 + -_8 - 97
                        _808 = mem[s]
                        _839 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _839:
                            mem[v + u + 32] = mem[v + _808 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_839) > _839:
                            mem[_839 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_839) + u + 32
                        continue 
                else:
                    mem[_190 + mem[64] + _8 + 33] = 0
                    _680 = mem[64]
                    mem[mem[64]] = _190 + _355 + _8 + -mem[64] + 1
                    mem[64] = _190 + _355 + _8 + 33
                    mem[160] = _680
                    mem[_190 + _355 + _8 + 33] = 32
                    mem[_190 + _355 + _8 + 65] = 2
                    idx = 0
                    s = 128
                    t = _190 + _355 + _8 + 97
                    u = _190 + _355 + _8 + 161
                    while idx < 2:
                        mem[t] = u + -_190 + -_355 + -_8 - 97
                        _809 = mem[s]
                        _841 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _841:
                            mem[v + u + 32] = mem[v + _809 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_841) > _841:
                            mem[_841 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_841) + u + 32
                        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function shouldHarvest() {
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.totalDebt() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(providerBAddress)
    staticcall providerBAddress.totalDebt() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lbpAddress)
    staticcall lbpAddress.getPoolId() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    require ext_code.size(bVaultAddress)
    staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 96
    _16 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    _17 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
    mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require _16 + (32 * _17) + 32 <= return_data.size
    s = (4 * ceil32(return_data.size)) + _16 + 128
    t = (6 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _17:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _209 = mem[(4 * ceil32(return_data.size)) + 128]
    require mem[(4 * ceil32(return_data.size)) + 128] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    _211 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96] <= test266151307()
    _212 = mem[64]
    require mem[64] + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]) + 32
    mem[_212] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]
    require return_data.size >= _209 + (32 * _211) + 32
    mem[_212 + 32 len 32 * _211] = mem[(4 * ceil32(return_data.size)) + _209 + 128 len 32 * _211]
    require 0 < mem[(6 * ceil32(return_data.size)) + 96]
    if mem[(6 * ceil32(return_data.size)) + 140 len 20] == tokenAAddress:
        require ext_code.size(lbpAddress)
        staticcall lbpAddress.getPoolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _453 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _455 = mem[_453]
        mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _455
        require ext_code.size(bVaultAddress)
        staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                gas gas_remaining wei
               args _455
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _461 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _463 = mem[_461]
        require mem[_461] <= test266151307()
        require _461 + mem[_461] + 31 < _461 + return_data.size
        _465 = mem[_461 + mem[_461]]
        require mem[_461 + mem[_461]] <= test266151307()
        require (32 * mem[_461 + mem[_461]]) + 32 >= 0 and _461 + ceil32(return_data.size) + (32 * mem[_461 + mem[_461]]) + 32 <= test266151307()
        mem[64] = _461 + ceil32(return_data.size) + (32 * mem[_461 + mem[_461]]) + 32
        mem[_461 + ceil32(return_data.size)] = _465
        require _463 + (32 * _465) + 32 <= return_data.size
        s = _461 + _463 + 32
        t = _461 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _465:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _675 = mem[_461 + 32]
        require mem[_461 + 32] <= test266151307()
        require _461 + mem[_461 + 32] + 31 < _461 + return_data.size
        _678 = mem[_461 + mem[_461 + 32]]
        require mem[_461 + mem[_461 + 32]] <= test266151307()
        _680 = mem[64]
        require mem[64] + (32 * mem[_461 + mem[_461 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_461 + mem[_461 + 32]]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_461 + mem[_461 + 32]]) + 32
        mem[_680] = _678
        require return_data.size >= _675 + (32 * _678) + 32
        mem[_680 + 32 len 32 * _678] = mem[_461 + _675 + 32 len 32 * _678]
        require 0 < _678
        _884 = mem[_680 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenAAddress)
        staticcall tokenAAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _890 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _892 = mem[_890]
        if mem[_890] + _884 < _884:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(lbpAddress)
        staticcall lbpAddress.getPoolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _902 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _904 = mem[_902]
        mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _904
        require ext_code.size(bVaultAddress)
        staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                gas gas_remaining wei
               args _904
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _910 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _912 = mem[_910]
        require mem[_910] <= test266151307()
        require _910 + mem[_910] + 31 < _910 + return_data.size
        _914 = mem[_910 + mem[_910]]
        require mem[_910 + mem[_910]] <= test266151307()
        require (32 * mem[_910 + mem[_910]]) + 32 >= 0 and _910 + ceil32(return_data.size) + (32 * mem[_910 + mem[_910]]) + 32 <= test266151307()
        mem[64] = _910 + ceil32(return_data.size) + (32 * mem[_910 + mem[_910]]) + 32
        mem[_910 + ceil32(return_data.size)] = _914
        require _912 + (32 * _914) + 32 <= return_data.size
        s = _910 + _912 + 32
        t = _910 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _914:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _1075 = mem[_910 + 32]
        require mem[_910 + 32] <= test266151307()
        require _910 + mem[_910 + 32] + 31 < _910 + return_data.size
        _1078 = mem[_910 + mem[_910 + 32]]
        require mem[_910 + mem[_910 + 32]] <= test266151307()
        _1080 = mem[64]
        require mem[64] + (32 * mem[_910 + mem[_910 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_910 + mem[_910 + 32]]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_910 + mem[_910 + 32]]) + 32
        mem[_1080] = _1078
        require return_data.size >= _1075 + (32 * _1078) + 32
        mem[_1080 + 32 len 32 * _1078] = mem[_910 + _1075 + 32 len 32 * _1078]
        require 0 < _914
        if mem[_910 + ceil32(return_data.size) + 44 len 20] == tokenBAddress:
            require ext_code.size(lbpAddress)
            staticcall lbpAddress.getPoolId() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1250 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1254 = mem[_1250]
            mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1254
            require ext_code.size(bVaultAddress)
            staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                    gas gas_remaining wei
                   args _1254
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1266 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1270 = mem[_1266]
            require mem[_1266] <= test266151307()
            require _1266 + mem[_1266] + 31 < _1266 + return_data.size
            _1274 = mem[_1266 + mem[_1266]]
            require mem[_1266 + mem[_1266]] <= test266151307()
            require (32 * mem[_1266 + mem[_1266]]) + 32 >= 0 and _1266 + ceil32(return_data.size) + (32 * mem[_1266 + mem[_1266]]) + 32 <= test266151307()
            mem[64] = _1266 + ceil32(return_data.size) + (32 * mem[_1266 + mem[_1266]]) + 32
            mem[_1266 + ceil32(return_data.size)] = _1274
            require _1270 + (32 * _1274) + 32 <= return_data.size
            s = _1266 + _1270 + 32
            t = _1266 + ceil32(return_data.size) + 32
            idx = 0
            while idx < _1274:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            _1383 = mem[_1266 + 32]
            require mem[_1266 + 32] <= test266151307()
            require _1266 + mem[_1266 + 32] + 31 < _1266 + return_data.size
            _1388 = mem[_1266 + mem[_1266 + 32]]
            require mem[_1266 + mem[_1266 + 32]] <= test266151307()
            _1392 = mem[64]
            require mem[64] + (32 * mem[_1266 + mem[_1266 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_1266 + mem[_1266 + 32]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_1266 + mem[_1266 + 32]]) + 32
            mem[_1392] = _1388
            require return_data.size >= _1383 + (32 * _1388) + 32
            mem[_1392 + 32 len 32 * _1388] = mem[_1266 + _1383 + 32 len 32 * _1388]
            require 0 < _1388
            _1488 = mem[_1392 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenBAddress)
            staticcall tokenBAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1500 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1500] + _1488 < _1488:
                revert with 0, 'SafeMath: addition overflow'
            if _892 + _884 < ext_call.return_data[0]:
                if _892 + _884 <= ext_call.return_data[0]:
                    return (_892 + _884 > ext_call.return_data[0])
                mem[mem[64]] = mem[_1500] + _1488 >= ext_call.return_data[0]
            else:
                if mem[_1500] + _1488 > ext_call.return_data[0]:
                    mem[mem[64]] = mem[_1500] + _1488 > ext_call.return_data[0]
                else:
                    if _892 + _884 <= ext_call.return_data[0]:
                        return (_892 + _884 > ext_call.return_data[0])
                    mem[mem[64]] = mem[_1500] + _1488 >= ext_call.return_data[0]
        else:
            require 1 < _914
            require mem[_910 + ceil32(return_data.size) + 76 len 20] == tokenBAddress
            require ext_code.size(lbpAddress)
            staticcall lbpAddress.getPoolId() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1253 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1258 = mem[_1253]
            mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1258
            require ext_code.size(bVaultAddress)
            staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                    gas gas_remaining wei
                   args _1258
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1269 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1273 = mem[_1269]
            require mem[_1269] <= test266151307()
            require _1269 + mem[_1269] + 31 < _1269 + return_data.size
            _1276 = mem[_1269 + mem[_1269]]
            require mem[_1269 + mem[_1269]] <= test266151307()
            require (32 * mem[_1269 + mem[_1269]]) + 32 >= 0 and _1269 + ceil32(return_data.size) + (32 * mem[_1269 + mem[_1269]]) + 32 <= test266151307()
            mem[64] = _1269 + ceil32(return_data.size) + (32 * mem[_1269 + mem[_1269]]) + 32
            mem[_1269 + ceil32(return_data.size)] = _1276
            require _1273 + (32 * _1276) + 32 <= return_data.size
            s = _1269 + _1273 + 32
            t = _1269 + ceil32(return_data.size) + 32
            idx = 0
            while idx < _1276:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            _1381 = mem[_1269 + 32]
            require mem[_1269 + 32] <= test266151307()
            require _1269 + mem[_1269 + 32] + 31 < _1269 + return_data.size
            _1387 = mem[_1269 + mem[_1269 + 32]]
            require mem[_1269 + mem[_1269 + 32]] <= test266151307()
            _1391 = mem[64]
            require mem[64] + (32 * mem[_1269 + mem[_1269 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_1269 + mem[_1269 + 32]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_1269 + mem[_1269 + 32]]) + 32
            mem[_1391] = _1387
            require return_data.size >= _1381 + (32 * _1387) + 32
            mem[_1391 + 32 len 32 * _1387] = mem[_1269 + _1381 + 32 len 32 * _1387]
            require 1 < _1387
            _1487 = mem[_1391 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenBAddress)
            staticcall tokenBAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1499 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1499] + _1487 < _1487:
                revert with 0, 'SafeMath: addition overflow'
            if _892 + _884 < ext_call.return_data[0]:
                if _892 + _884 <= ext_call.return_data[0]:
                    return (_892 + _884 > ext_call.return_data[0])
                mem[mem[64]] = mem[_1499] + _1487 >= ext_call.return_data[0]
            else:
                if mem[_1499] + _1487 > ext_call.return_data[0]:
                    mem[mem[64]] = mem[_1499] + _1487 > ext_call.return_data[0]
                else:
                    if _892 + _884 <= ext_call.return_data[0]:
                        return (_892 + _884 > ext_call.return_data[0])
                    mem[mem[64]] = mem[_1499] + _1487 >= ext_call.return_data[0]
    else:
        require 1 < mem[(6 * ceil32(return_data.size)) + 96]
        require mem[(6 * ceil32(return_data.size)) + 172 len 20] == tokenAAddress
        require ext_code.size(lbpAddress)
        staticcall lbpAddress.getPoolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _454 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _457 = mem[_454]
        mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _457
        require ext_code.size(bVaultAddress)
        staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                gas gas_remaining wei
               args _457
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _462 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _464 = mem[_462]
        require mem[_462] <= test266151307()
        require _462 + mem[_462] + 31 < _462 + return_data.size
        _466 = mem[_462 + mem[_462]]
        require mem[_462 + mem[_462]] <= test266151307()
        require (32 * mem[_462 + mem[_462]]) + 32 >= 0 and _462 + ceil32(return_data.size) + (32 * mem[_462 + mem[_462]]) + 32 <= test266151307()
        mem[64] = _462 + ceil32(return_data.size) + (32 * mem[_462 + mem[_462]]) + 32
        mem[_462 + ceil32(return_data.size)] = _466
        require _464 + (32 * _466) + 32 <= return_data.size
        s = _462 + _464 + 32
        t = _462 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _466:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _673 = mem[_462 + 32]
        require mem[_462 + 32] <= test266151307()
        require _462 + mem[_462 + 32] + 31 < _462 + return_data.size
        _677 = mem[_462 + mem[_462 + 32]]
        require mem[_462 + mem[_462 + 32]] <= test266151307()
        _679 = mem[64]
        require mem[64] + (32 * mem[_462 + mem[_462 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_462 + mem[_462 + 32]]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_462 + mem[_462 + 32]]) + 32
        mem[_679] = _677
        require return_data.size >= _673 + (32 * _677) + 32
        mem[_679 + 32 len 32 * _677] = mem[_462 + _673 + 32 len 32 * _677]
        require 1 < _677
        _883 = mem[_679 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenAAddress)
        staticcall tokenAAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _889 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _891 = mem[_889]
        if mem[_889] + _883 < _883:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(lbpAddress)
        staticcall lbpAddress.getPoolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _901 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _903 = mem[_901]
        mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _903
        require ext_code.size(bVaultAddress)
        staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                gas gas_remaining wei
               args _903
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _909 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _911 = mem[_909]
        require mem[_909] <= test266151307()
        require _909 + mem[_909] + 31 < _909 + return_data.size
        _913 = mem[_909 + mem[_909]]
        require mem[_909 + mem[_909]] <= test266151307()
        require (32 * mem[_909 + mem[_909]]) + 32 >= 0 and _909 + ceil32(return_data.size) + (32 * mem[_909 + mem[_909]]) + 32 <= test266151307()
        mem[64] = _909 + ceil32(return_data.size) + (32 * mem[_909 + mem[_909]]) + 32
        mem[_909 + ceil32(return_data.size)] = _913
        require _911 + (32 * _913) + 32 <= return_data.size
        s = _909 + _911 + 32
        t = _909 + ceil32(return_data.size) + 32
        idx = 0
        while idx < _913:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _1073 = mem[_909 + 32]
        require mem[_909 + 32] <= test266151307()
        require _909 + mem[_909 + 32] + 31 < _909 + return_data.size
        _1077 = mem[_909 + mem[_909 + 32]]
        require mem[_909 + mem[_909 + 32]] <= test266151307()
        _1079 = mem[64]
        require mem[64] + (32 * mem[_909 + mem[_909 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_909 + mem[_909 + 32]]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_909 + mem[_909 + 32]]) + 32
        mem[_1079] = _1077
        require return_data.size >= _1073 + (32 * _1077) + 32
        mem[_1079 + 32 len 32 * _1077] = mem[_909 + _1073 + 32 len 32 * _1077]
        require 0 < _913
        if mem[_909 + ceil32(return_data.size) + 44 len 20] == tokenBAddress:
            require ext_code.size(lbpAddress)
            staticcall lbpAddress.getPoolId() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1247 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1252 = mem[_1247]
            mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1252
            require ext_code.size(bVaultAddress)
            staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                    gas gas_remaining wei
                   args _1252
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1264 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1268 = mem[_1264]
            require mem[_1264] <= test266151307()
            require _1264 + mem[_1264] + 31 < _1264 + return_data.size
            _1272 = mem[_1264 + mem[_1264]]
            require mem[_1264 + mem[_1264]] <= test266151307()
            require (32 * mem[_1264 + mem[_1264]]) + 32 >= 0 and _1264 + ceil32(return_data.size) + (32 * mem[_1264 + mem[_1264]]) + 32 <= test266151307()
            mem[64] = _1264 + ceil32(return_data.size) + (32 * mem[_1264 + mem[_1264]]) + 32
            mem[_1264 + ceil32(return_data.size)] = _1272
            require _1268 + (32 * _1272) + 32 <= return_data.size
            s = _1264 + _1268 + 32
            t = _1264 + ceil32(return_data.size) + 32
            idx = 0
            while idx < _1272:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            _1379 = mem[_1264 + 32]
            require mem[_1264 + 32] <= test266151307()
            require _1264 + mem[_1264 + 32] + 31 < _1264 + return_data.size
            _1386 = mem[_1264 + mem[_1264 + 32]]
            require mem[_1264 + mem[_1264 + 32]] <= test266151307()
            _1390 = mem[64]
            require mem[64] + (32 * mem[_1264 + mem[_1264 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_1264 + mem[_1264 + 32]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_1264 + mem[_1264 + 32]]) + 32
            mem[_1390] = _1386
            require return_data.size >= _1379 + (32 * _1386) + 32
            mem[_1390 + 32 len 32 * _1386] = mem[_1264 + _1379 + 32 len 32 * _1386]
            require 0 < _1386
            _1486 = mem[_1390 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenBAddress)
            staticcall tokenBAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1498 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1498] + _1486 < _1486:
                revert with 0, 'SafeMath: addition overflow'
            if _891 + _883 < ext_call.return_data[0]:
                if _891 + _883 <= ext_call.return_data[0]:
                    return (_891 + _883 > ext_call.return_data[0])
                mem[mem[64]] = mem[_1498] + _1486 >= ext_call.return_data[0]
            else:
                if mem[_1498] + _1486 > ext_call.return_data[0]:
                    mem[mem[64]] = mem[_1498] + _1486 > ext_call.return_data[0]
                else:
                    if _891 + _883 <= ext_call.return_data[0]:
                        return (_891 + _883 > ext_call.return_data[0])
                    mem[mem[64]] = mem[_1498] + _1486 >= ext_call.return_data[0]
        else:
            require 1 < _913
            require mem[_909 + ceil32(return_data.size) + 76 len 20] == tokenBAddress
            require ext_code.size(lbpAddress)
            staticcall lbpAddress.getPoolId() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1251 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1257 = mem[_1251]
            mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1257
            require ext_code.size(bVaultAddress)
            staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                    gas gas_remaining wei
                   args _1257
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1267 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1271 = mem[_1267]
            require mem[_1267] <= test266151307()
            require _1267 + mem[_1267] + 31 < _1267 + return_data.size
            _1275 = mem[_1267 + mem[_1267]]
            require mem[_1267 + mem[_1267]] <= test266151307()
            require (32 * mem[_1267 + mem[_1267]]) + 32 >= 0 and _1267 + ceil32(return_data.size) + (32 * mem[_1267 + mem[_1267]]) + 32 <= test266151307()
            mem[64] = _1267 + ceil32(return_data.size) + (32 * mem[_1267 + mem[_1267]]) + 32
            mem[_1267 + ceil32(return_data.size)] = _1275
            require _1271 + (32 * _1275) + 32 <= return_data.size
            s = _1267 + _1271 + 32
            t = _1267 + ceil32(return_data.size) + 32
            idx = 0
            while idx < _1275:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            _1377 = mem[_1267 + 32]
            require mem[_1267 + 32] <= test266151307()
            require _1267 + mem[_1267 + 32] + 31 < _1267 + return_data.size
            _1385 = mem[_1267 + mem[_1267 + 32]]
            require mem[_1267 + mem[_1267 + 32]] <= test266151307()
            _1389 = mem[64]
            require mem[64] + (32 * mem[_1267 + mem[_1267 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_1267 + mem[_1267 + 32]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_1267 + mem[_1267 + 32]]) + 32
            mem[_1389] = _1385
            require return_data.size >= _1377 + (32 * _1385) + 32
            mem[_1389 + 32 len 32 * _1385] = mem[_1267 + _1377 + 32 len 32 * _1385]
            require 1 < _1385
            _1485 = mem[_1389 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenBAddress)
            staticcall tokenBAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1497 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1497] + _1485 < _1485:
                revert with 0, 'SafeMath: addition overflow'
            if _891 + _883 < ext_call.return_data[0]:
                if _891 + _883 <= ext_call.return_data[0]:
                    return (_891 + _883 > ext_call.return_data[0])
                mem[mem[64]] = mem[_1497] + _1485 >= ext_call.return_data[0]
            else:
                if mem[_1497] + _1485 > ext_call.return_data[0]:
                    mem[mem[64]] = mem[_1497] + _1485 > ext_call.return_data[0]
                else:
                    if _891 + _883 <= ext_call.return_data[0]:
                        return (_891 + _883 > ext_call.return_data[0])
                    mem[mem[64]] = mem[_1497] + _1485 >= ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}

function collectTradingFees() {
    if msg.sender == providerAAddress:
        require ext_code.size(providerAAddress)
        staticcall providerAAddress.totalDebt() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.totalDebt() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if ext_call.return_data[0]:
                require ext_code.size(lbpAddress)
                staticcall lbpAddress.getPoolId() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                require ext_code.size(bVaultAddress)
                staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 96
                _45 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                _49 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
                mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require _45 + (32 * _49) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + _45 + 128
                t = (6 * ceil32(return_data.size)) + 128
                idx = 0
                while idx < _49:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _364 = mem[(4 * ceil32(return_data.size)) + 128]
                require mem[(4 * ceil32(return_data.size)) + 128] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                _370 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96] <= test266151307()
                _373 = mem[64]
                require mem[64] + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]) + 32
                mem[_373] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]
                require return_data.size >= _364 + (32 * _370) + 32
                mem[_373 + 32 len 32 * _370] = mem[(4 * ceil32(return_data.size)) + _364 + 128 len 32 * _370]
                require 0 < _370
                _865 = mem[_373 + 32]
                require ext_code.size(lbpAddress)
                staticcall lbpAddress.getPoolId() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _874 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _877 = mem[_874]
                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _877
                require ext_code.size(bVaultAddress)
                staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                        gas gas_remaining wei
                       args _877
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _886 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _889 = mem[_886]
                require mem[_886] <= test266151307()
                require _886 + mem[_886] + 31 < _886 + return_data.size
                _892 = mem[_886 + mem[_886]]
                require mem[_886 + mem[_886]] <= test266151307()
                require (32 * mem[_886 + mem[_886]]) + 32 >= 0 and _886 + ceil32(return_data.size) + (32 * mem[_886 + mem[_886]]) + 32 <= test266151307()
                mem[64] = _886 + ceil32(return_data.size) + (32 * mem[_886 + mem[_886]]) + 32
                mem[_886 + ceil32(return_data.size)] = _892
                require _889 + (32 * _892) + 32 <= return_data.size
                s = _886 + _889 + 32
                t = _886 + ceil32(return_data.size) + 32
                idx = 0
                while idx < _892:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _1336 = mem[_886 + 32]
                require mem[_886 + 32] <= test266151307()
                require _886 + mem[_886 + 32] + 31 < _886 + return_data.size
                _1342 = mem[_886 + mem[_886 + 32]]
                require mem[_886 + mem[_886 + 32]] <= test266151307()
                _1345 = mem[64]
                require mem[64] + (32 * mem[_886 + mem[_886 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_886 + mem[_886 + 32]]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * mem[_886 + mem[_886 + 32]]) + 32
                mem[_1345] = _1342
                require return_data.size >= _1336 + (32 * _1342) + 32
                mem[_1345 + 32 len 32 * _1342] = mem[_886 + _1336 + 32 len 32 * _1342]
                require 1 < _1342
                _1783 = mem[_1345 + 64]
                if _865 >= ext_call.return_data[0]:
                    if mem[_1345 + 64] >= ext_call.return_data[0]:
                        _1786 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1786] = 30
                        mem[_1786 + 32] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > _865:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _1795 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1795] = 30
                        mem[_1795 + 32] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > _1783:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAAddress)
                        staticcall tokenAAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1822 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1825 = mem[_1822]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenBAddress)
                        staticcall tokenBAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1840 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1843 = mem[_1840]
                        _1846 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1846]
                        mem[_1846 + 32] = _865 - ext_call.return_data[0]
                        require 1 < mem[_1846]
                        mem[_1846 + 64] = _1783 - ext_call.return_data[0]
                        mem[_1846 + 100] = this.address
                        require ext_code.size(lbpAddress)
                        staticcall lbpAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_1846 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1846 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_1846 + ceil32(return_data.size) + 128] = 2
                        mem[_1846 + ceil32(return_data.size) + 160] = 96
                        _1870 = mem[_1846]
                        mem[_1846 + ceil32(return_data.size) + 224] = mem[_1846]
                        mem[_1846 + ceil32(return_data.size) + 256 len 32 * mem[_1846]] = mem[_1846 + 32 len 32 * mem[_1846]]
                        mem[_1846 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        mem[_1846 + ceil32(return_data.size) + 96] = (32 * mem[_1846]) + 128
                        mem[_1846 + ceil32(return_data.size) + (32 * mem[_1846]) + 256] = 96
                        mem[_1846 + ceil32(return_data.size) + (32 * mem[_1846]) + 288] = 96
                        mem[_1846 + ceil32(return_data.size) + (32 * mem[_1846]) + 320] = 96
                        mem[_1846 + ceil32(return_data.size) + (32 * mem[_1846]) + 352] = 0
                        mem[_1846 + ceil32(return_data.size) + (32 * mem[_1846]) + 512] = assets.length
                        if not assets.length:
                            mem[_1846 + ceil32(return_data.size) + (32 * mem[_1846]) + 384] = _1846 + ceil32(return_data.size) + (32 * mem[_1846]) + 512
                            mem[_1846 + ceil32(return_data.size) + (32 * mem[_1846]) + (32 * assets.length) + 544] = stor10.length
                            if not stor10.length:
                                mem[_1846 + ceil32(return_data.size) + (32 * mem[_1846]) + 416] = _1846 + ceil32(return_data.size) + (32 * mem[_1846]) + (32 * assets.length) + 544
                                mem[_1846 + ceil32(return_data.size) + (32 * mem[_1846]) + 448] = _1846 + ceil32(return_data.size) + 96
                                mem[_1846 + ceil32(return_data.size) + (32 * mem[_1846]) + 480] = 0
                                require ext_code.size(lbpAddress)
                                staticcall lbpAddress.getPoolId() with:
                                        gas gas_remaining wei
                                mem[_1846 + ceil32(return_data.size) + (32 * mem[_1846]) + (32 * assets.length) + (32 * stor10.length) + 576] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1846 + (2 * ceil32(return_data.size)) + (32 * mem[_1846]) + (32 * assets.length) + (32 * stor10.length) + 576
                                require return_data.size >= 32
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 576] = 0x8bdb391300000000000000000000000000000000000000000000000000000000
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 580] = ext_call.return_data[0]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 612] = this.address
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 644] = this.address
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 676] = 128
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 708] = 128
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 836] = assets.length
                                idx = 0
                                s = _1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 868
                                t = _1846 + ceil32(return_data.size) + (32 * _1870) + 544
                                while idx < mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 740] = (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + 160
                                _2551 = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + 868] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + 900 len 32 * _2551] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416] + 32 len 32 * _2551]
                                var176001 = _2551
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 772] = (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + (32 * _2551) + 192
                                _2857 = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + (32 * _2551) + 900] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + (32 * _2551) + 932 len ceil32(_2857)] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448] + 32 len ceil32(_2857)]
                                if ceil32(_2857) > _2857:
                                    mem[_2857 + _1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + (32 * _2551) + 932] = 0
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 480])
                                require ext_code.size(bVaultAddress)
                                call bVaultAddress.exitPool(bytes32 arg1, address arg2, address arg3, address[] arg4, uint256[] arg5, bytes arg6, bool arg7) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], address(this.address), address(this.address), 128, 128, (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + 160, (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + (32 * _2551) + 192, bool(mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 480]), mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 836 len ceil32(_2857) + (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + (32 * _2551) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _865 - ext_call.return_data[0]:
                                    require ext_code.size(tokenAAddress)
                                    staticcall tokenAAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if _1825 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    require ext_code.size(tokenAAddress)
                                    call tokenAAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args providerAAddress, ext_call.return_data[0] - _1825
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if _1783 - ext_call.return_data[0]:
                                    require ext_code.size(tokenBAddress)
                                    staticcall tokenBAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if _1843 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    require ext_code.size(tokenBAddress)
                                    call tokenBAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args providerBAddress, ext_call.return_data[0] - _1843
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                mem[0] = 10
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + 576] = uint256(stor10.field_0)
                                idx = _1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + 576
                                s = 0
                                while _1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 544 > idx:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416] = _1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + 544
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448] = _1846 + ceil32(return_data.size) + 96
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 480] = 0
                                require ext_code.size(lbpAddress)
                                staticcall lbpAddress.getPoolId() with:
                                        gas gas_remaining wei
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 576] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 576
                                require return_data.size >= 32
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 576] = 0x8bdb391300000000000000000000000000000000000000000000000000000000
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 580] = ext_call.return_data[0]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 612] = this.address
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 644] = this.address
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 676] = 128
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 708] = 128
                                _2879 = mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 836] = mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]
                                idx = 0
                                s = _1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 868
                                t = _1846 + ceil32(return_data.size) + (32 * _1870) + 544
                                while idx < _2879:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 740] = (32 * _2879) + 160
                                _3739 = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * _2879) + 868] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * _2879) + 900 len 32 * _3739] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416] + 32 len 32 * _3739]
                                var180001 = _3739
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 772] = (32 * _2879) + (32 * _3739) + 192
                                _4600 = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * _2879) + (32 * _3739) + 900] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * _2879) + (32 * _3739) + 932 len ceil32(_4600)] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448] + 32 len ceil32(_4600)]
                                if ceil32(_4600) > _4600:
                                    mem[_4600 + _1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * _2879) + (32 * _3739) + 932] = 0
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 480])
                                require ext_code.size(bVaultAddress)
                                call bVaultAddress.exitPool(bytes32 arg1, address arg2, address arg3, address[] arg4, uint256[] arg5, bytes arg6, bool arg7) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], address(this.address), address(this.address), 128, 128, (32 * _2879) + 160, (32 * _2879) + (32 * _3739) + 192, bool(mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 480]), mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 836 len ceil32(_4600) + (32 * _2879) + (32 * _3739) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _865 - ext_call.return_data[0]:
                                    require ext_code.size(tokenAAddress)
                                    staticcall tokenAAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if _1825 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    require ext_code.size(tokenAAddress)
                                    call tokenAAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args providerAAddress, ext_call.return_data[0] - _1825
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if _1783 - ext_call.return_data[0]:
                                    require ext_code.size(tokenBAddress)
                                    staticcall tokenBAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if _1843 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    require ext_code.size(tokenBAddress)
                                    call tokenBAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args providerBAddress, ext_call.return_data[0] - _1843
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            mem[0] = 9
                            mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 544] = address(assets.field_0)
                            idx = _1846 + ceil32(return_data.size) + (32 * _1870) + 544
                            s = 0
                            while _1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + 544 > idx + 32:
                                mem[idx + 32] = assets[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 384] = _1846 + ceil32(return_data.size) + (32 * _1870) + 512
                            mem[_1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + 544] = stor10.length
                            if not stor10.length:
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416] = _1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + 544
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448] = _1846 + ceil32(return_data.size) + 96
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 480] = 0
                                require ext_code.size(lbpAddress)
                                staticcall lbpAddress.getPoolId() with:
                                        gas gas_remaining wei
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 576] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 576
                                require return_data.size >= 32
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 576] = 0x8bdb391300000000000000000000000000000000000000000000000000000000
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 580] = ext_call.return_data[0]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 612] = this.address
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 644] = this.address
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 676] = 128
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 708] = 128
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 836] = assets.length
                                idx = 0
                                s = _1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 868
                                t = _1846 + ceil32(return_data.size) + (32 * _1870) + 544
                                while idx < mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 740] = (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + 160
                                _3740 = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + 868] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + 900 len 32 * _3740] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416] + 32 len 32 * _3740]
                                var180001 = _3740
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 772] = (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + (32 * _3740) + 192
                                _4601 = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + (32 * _3740) + 900] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + (32 * _3740) + 932 len ceil32(_4601)] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448] + 32 len ceil32(_4601)]
                                if ceil32(_4601) > _4601:
                                    mem[_4601 + _1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + (32 * _3740) + 932] = 0
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 480])
                                require ext_code.size(bVaultAddress)
                                call bVaultAddress.exitPool(bytes32 arg1, address arg2, address arg3, address[] arg4, uint256[] arg5, bytes arg6, bool arg7) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], address(this.address), address(this.address), 128, 128, (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + 160, (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + (32 * _3740) + 192, bool(mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 480]), mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 836 len ceil32(_4601) + (32 * mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]) + (32 * _3740) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _865 - ext_call.return_data[0]:
                                    require ext_code.size(tokenAAddress)
                                    staticcall tokenAAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if _1825 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    require ext_code.size(tokenAAddress)
                                    call tokenAAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args providerAAddress, ext_call.return_data[0] - _1825
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if _1783 - ext_call.return_data[0]:
                                    require ext_code.size(tokenBAddress)
                                    staticcall tokenBAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if _1843 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    require ext_code.size(tokenBAddress)
                                    call tokenBAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args providerBAddress, ext_call.return_data[0] - _1843
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                mem[0] = 10
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + 576] = uint256(stor10.field_0)
                                idx = _1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + 576
                                s = 0
                                while _1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 544 > idx:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416] = _1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + 544
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448] = _1846 + ceil32(return_data.size) + 96
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 480] = 0
                                require ext_code.size(lbpAddress)
                                staticcall lbpAddress.getPoolId() with:
                                        gas gas_remaining wei
                                mem[_1846 + ceil32(return_data.size) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 576] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 576
                                require return_data.size >= 32
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 576] = 0x8bdb391300000000000000000000000000000000000000000000000000000000
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 580] = ext_call.return_data[0]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 612] = this.address
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 644] = this.address
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 676] = 128
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 708] = 128
                                _4655 = mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 836] = mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 512]
                                idx = 0
                                s = _1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 868
                                t = _1846 + ceil32(return_data.size) + (32 * _1870) + 544
                                while idx < _4655:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 740] = (32 * _4655) + 160
                                _5485 = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * _4655) + 868] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * _4655) + 900 len 32 * _5485] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 416] + 32 len 32 * _5485]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 772] = (32 * _4655) + (32 * _5485) + 192
                                _6334 = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * _4655) + (32 * _5485) + 900] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448]]
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * _4655) + (32 * _5485) + 932 len ceil32(_6334)] = mem[mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 448] + 32 len ceil32(_6334)]
                                if ceil32(_6334) > _6334:
                                    mem[_6334 + _1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + (32 * _4655) + (32 * _5485) + 932] = 0
                                mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 480])
                                require ext_code.size(bVaultAddress)
                                call bVaultAddress.exitPool(bytes32 arg1, address arg2, address arg3, address[] arg4, uint256[] arg5, bytes arg6, bool arg7) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], address(this.address), address(this.address), 128, 128, (32 * _4655) + 160, (32 * _4655) + (32 * _5485) + 192, bool(mem[_1846 + ceil32(return_data.size) + (32 * _1870) + 480]), mem[_1846 + (2 * ceil32(return_data.size)) + (32 * _1870) + (32 * assets.length) + (32 * stor10.length) + 836 len ceil32(_6334) + (32 * _4655) + (32 * _5485) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _865 - ext_call.return_data[0]:
                                    require ext_code.size(tokenAAddress)
                                    staticcall tokenAAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if _1825 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    require ext_code.size(tokenAAddress)
                                    call tokenAAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args providerAAddress, ext_call.return_data[0] - _1825
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if _1783 - ext_call.return_data[0]:
                                    require ext_code.size(tokenBAddress)
                                    staticcall tokenBAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if _1843 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    require ext_code.size(tokenBAddress)
                                    call tokenBAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args providerBAddress, ext_call.return_data[0] - _1843
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if msg.sender == providerBAddress:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.totalDebt() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(providerBAddress)
            staticcall providerBAddress.totalDebt() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    require ext_code.size(lbpAddress)
                    staticcall lbpAddress.getPoolId() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(4 * ceil32(return_data.size)) + 96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                    require ext_code.size(bVaultAddress)
                    staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 96
                    _48 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                    _51 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                    require _48 + (32 * _51) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + _48 + 128
                    t = (6 * ceil32(return_data.size)) + 128
                    idx = 0
                    while idx < _51:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    _366 = mem[(4 * ceil32(return_data.size)) + 128]
                    require mem[(4 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                    _371 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96] <= test266151307()
                    _374 = mem[64]
                    require mem[64] + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]) + 32 <= test266151307()
                    mem[64] = mem[64] + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]) + 32
                    mem[_374] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]
                    require return_data.size >= _366 + (32 * _371) + 32
                    mem[_374 + 32 len 32 * _371] = mem[(4 * ceil32(return_data.size)) + _366 + 128 len 32 * _371]
                    require 0 < _371
                    _866 = mem[_374 + 32]
                    require ext_code.size(lbpAddress)
                    staticcall lbpAddress.getPoolId() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _875 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _878 = mem[_875]
                    mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _878
                    require ext_code.size(bVaultAddress)
                    staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                            gas gas_remaining wei
                           args _878
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _887 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _890 = mem[_887]
                    require mem[_887] <= test266151307()
                    require _887 + mem[_887] + 31 < _887 + return_data.size
                    _893 = mem[_887 + mem[_887]]
                    require mem[_887 + mem[_887]] <= test266151307()
                    require (32 * mem[_887 + mem[_887]]) + 32 >= 0 and _887 + ceil32(return_data.size) + (32 * mem[_887 + mem[_887]]) + 32 <= test266151307()
                    mem[64] = _887 + ceil32(return_data.size) + (32 * mem[_887 + mem[_887]]) + 32
                    mem[_887 + ceil32(return_data.size)] = _893
                    require _890 + (32 * _893) + 32 <= return_data.size
                    s = _887 + _890 + 32
                    t = _887 + ceil32(return_data.size) + 32
                    idx = 0
                    while idx < _893:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    _1338 = mem[_887 + 32]
                    require mem[_887 + 32] <= test266151307()
                    require _887 + mem[_887 + 32] + 31 < _887 + return_data.size
                    _1343 = mem[_887 + mem[_887 + 32]]
                    require mem[_887 + mem[_887 + 32]] <= test266151307()
                    _1346 = mem[64]
                    require mem[64] + (32 * mem[_887 + mem[_887 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_887 + mem[_887 + 32]]) + 32 <= test266151307()
                    mem[64] = mem[64] + (32 * mem[_887 + mem[_887 + 32]]) + 32
                    mem[_1346] = _1343
                    require return_data.size >= _1338 + (32 * _1343) + 32
                    mem[_1346 + 32 len 32 * _1343] = mem[_887 + _1338 + 32 len 32 * _1343]
                    require 1 < _1343
                    _1784 = mem[_1346 + 64]
                    if _866 >= ext_call.return_data[0]:
                        if mem[_1346 + 64] >= ext_call.return_data[0]:
                            _1787 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1787] = 30
                            mem[_1787 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > _866:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _1796 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1796] = 30
                            mem[_1796 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > _1784:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAAddress)
                            staticcall tokenAAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1823 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1827 = mem[_1823]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenBAddress)
                            staticcall tokenBAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1841 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1844 = mem[_1841]
                            _1848 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1848]
                            mem[_1848 + 32] = _866 - ext_call.return_data[0]
                            require 1 < mem[_1848]
                            mem[_1848 + 64] = _1784 - ext_call.return_data[0]
                            mem[_1848 + 100] = this.address
                            require ext_code.size(lbpAddress)
                            staticcall lbpAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1848 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1848 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            mem[_1848 + ceil32(return_data.size) + 128] = 2
                            mem[_1848 + ceil32(return_data.size) + 160] = 96
                            _1871 = mem[_1848]
                            mem[_1848 + ceil32(return_data.size) + 224] = mem[_1848]
                            mem[_1848 + ceil32(return_data.size) + 256 len 32 * mem[_1848]] = mem[_1848 + 32 len 32 * mem[_1848]]
                            mem[_1848 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            mem[_1848 + ceil32(return_data.size) + 96] = (32 * mem[_1848]) + 128
                            mem[_1848 + ceil32(return_data.size) + (32 * mem[_1848]) + 256] = 96
                            mem[_1848 + ceil32(return_data.size) + (32 * mem[_1848]) + 288] = 96
                            mem[_1848 + ceil32(return_data.size) + (32 * mem[_1848]) + 320] = 96
                            mem[_1848 + ceil32(return_data.size) + (32 * mem[_1848]) + 352] = 0
                            mem[_1848 + ceil32(return_data.size) + (32 * mem[_1848]) + 512] = assets.length
                            if not assets.length:
                                mem[_1848 + ceil32(return_data.size) + (32 * mem[_1848]) + 384] = _1848 + ceil32(return_data.size) + (32 * mem[_1848]) + 512
                                mem[_1848 + ceil32(return_data.size) + (32 * mem[_1848]) + (32 * assets.length) + 544] = stor10.length
                                if not stor10.length:
                                    mem[_1848 + ceil32(return_data.size) + (32 * mem[_1848]) + 416] = _1848 + ceil32(return_data.size) + (32 * mem[_1848]) + (32 * assets.length) + 544
                                    mem[_1848 + ceil32(return_data.size) + (32 * mem[_1848]) + 448] = _1848 + ceil32(return_data.size) + 96
                                    mem[_1848 + ceil32(return_data.size) + (32 * mem[_1848]) + 480] = 0
                                    require ext_code.size(lbpAddress)
                                    staticcall lbpAddress.getPoolId() with:
                                            gas gas_remaining wei
                                    mem[_1848 + ceil32(return_data.size) + (32 * mem[_1848]) + (32 * assets.length) + (32 * stor10.length) + 576] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1848 + (2 * ceil32(return_data.size)) + (32 * mem[_1848]) + (32 * assets.length) + (32 * stor10.length) + 576
                                    require return_data.size >= 32
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 576] = 0x8bdb391300000000000000000000000000000000000000000000000000000000
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 580] = ext_call.return_data[0]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 612] = this.address
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 644] = this.address
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 676] = 128
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 708] = 128
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 836] = assets.length
                                    idx = 0
                                    s = _1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 868
                                    t = _1848 + ceil32(return_data.size) + (32 * _1871) + 544
                                    while idx < mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 740] = (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + 160
                                    _2552 = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + 868] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + 900 len 32 * _2552] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416] + 32 len 32 * _2552]
                                    var177001 = _2552
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 772] = (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + (32 * _2552) + 192
                                    _2859 = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + (32 * _2552) + 900] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + (32 * _2552) + 932 len ceil32(_2859)] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448] + 32 len ceil32(_2859)]
                                    if ceil32(_2859) > _2859:
                                        mem[_2859 + _1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + (32 * _2552) + 932] = 0
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 480])
                                    require ext_code.size(bVaultAddress)
                                    call bVaultAddress.exitPool(bytes32 arg1, address arg2, address arg3, address[] arg4, uint256[] arg5, bytes arg6, bool arg7) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], address(this.address), address(this.address), 128, 128, (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + 160, (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + (32 * _2552) + 192, bool(mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 480]), mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 836 len ceil32(_2859) + (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + (32 * _2552) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _866 - ext_call.return_data[0]:
                                        require ext_code.size(tokenAAddress)
                                        staticcall tokenAAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if _1827 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(tokenAAddress)
                                        call tokenAAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args providerAAddress, ext_call.return_data[0] - _1827
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if _1784 - ext_call.return_data[0]:
                                        require ext_code.size(tokenBAddress)
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if _1844 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(tokenBAddress)
                                        call tokenBAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args providerBAddress, ext_call.return_data[0] - _1844
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    mem[0] = 10
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + 576] = uint256(stor10.field_0)
                                    idx = _1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + 576
                                    s = 0
                                    while _1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 544 > idx:
                                        mem[idx + 32] = stor10[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416] = _1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + 544
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448] = _1848 + ceil32(return_data.size) + 96
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 480] = 0
                                    require ext_code.size(lbpAddress)
                                    staticcall lbpAddress.getPoolId() with:
                                            gas gas_remaining wei
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 576] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 576
                                    require return_data.size >= 32
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 576] = 0x8bdb391300000000000000000000000000000000000000000000000000000000
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 580] = ext_call.return_data[0]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 612] = this.address
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 644] = this.address
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 676] = 128
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 708] = 128
                                    _2881 = mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 836] = mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]
                                    idx = 0
                                    s = _1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 868
                                    t = _1848 + ceil32(return_data.size) + (32 * _1871) + 544
                                    while idx < _2881:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 740] = (32 * _2881) + 160
                                    _3741 = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * _2881) + 868] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * _2881) + 900 len 32 * _3741] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416] + 32 len 32 * _3741]
                                    var181001 = _3741
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 772] = (32 * _2881) + (32 * _3741) + 192
                                    _4602 = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * _2881) + (32 * _3741) + 900] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * _2881) + (32 * _3741) + 932 len ceil32(_4602)] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448] + 32 len ceil32(_4602)]
                                    if ceil32(_4602) > _4602:
                                        mem[_4602 + _1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * _2881) + (32 * _3741) + 932] = 0
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 480])
                                    require ext_code.size(bVaultAddress)
                                    call bVaultAddress.exitPool(bytes32 arg1, address arg2, address arg3, address[] arg4, uint256[] arg5, bytes arg6, bool arg7) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], address(this.address), address(this.address), 128, 128, (32 * _2881) + 160, (32 * _2881) + (32 * _3741) + 192, bool(mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 480]), mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 836 len ceil32(_4602) + (32 * _2881) + (32 * _3741) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _866 - ext_call.return_data[0]:
                                        require ext_code.size(tokenAAddress)
                                        staticcall tokenAAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if _1827 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(tokenAAddress)
                                        call tokenAAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args providerAAddress, ext_call.return_data[0] - _1827
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if _1784 - ext_call.return_data[0]:
                                        require ext_code.size(tokenBAddress)
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if _1844 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(tokenBAddress)
                                        call tokenBAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args providerBAddress, ext_call.return_data[0] - _1844
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                mem[0] = 9
                                mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 544] = address(assets.field_0)
                                idx = _1848 + ceil32(return_data.size) + (32 * _1871) + 544
                                s = 0
                                while _1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + 544 > idx + 32:
                                    mem[idx + 32] = assets[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 384] = _1848 + ceil32(return_data.size) + (32 * _1871) + 512
                                mem[_1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + 544] = stor10.length
                                if not stor10.length:
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416] = _1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + 544
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448] = _1848 + ceil32(return_data.size) + 96
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 480] = 0
                                    require ext_code.size(lbpAddress)
                                    staticcall lbpAddress.getPoolId() with:
                                            gas gas_remaining wei
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 576] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 576
                                    require return_data.size >= 32
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 576] = 0x8bdb391300000000000000000000000000000000000000000000000000000000
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 580] = ext_call.return_data[0]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 612] = this.address
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 644] = this.address
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 676] = 128
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 708] = 128
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 836] = assets.length
                                    idx = 0
                                    s = _1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 868
                                    t = _1848 + ceil32(return_data.size) + (32 * _1871) + 544
                                    while idx < mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 740] = (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + 160
                                    _3742 = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + 868] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + 900 len 32 * _3742] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416] + 32 len 32 * _3742]
                                    var181001 = _3742
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 772] = (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + (32 * _3742) + 192
                                    _4603 = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + (32 * _3742) + 900] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + (32 * _3742) + 932 len ceil32(_4603)] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448] + 32 len ceil32(_4603)]
                                    if ceil32(_4603) > _4603:
                                        mem[_4603 + _1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + (32 * _3742) + 932] = 0
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 480])
                                    require ext_code.size(bVaultAddress)
                                    call bVaultAddress.exitPool(bytes32 arg1, address arg2, address arg3, address[] arg4, uint256[] arg5, bytes arg6, bool arg7) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], address(this.address), address(this.address), 128, 128, (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + 160, (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + (32 * _3742) + 192, bool(mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 480]), mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 836 len ceil32(_4603) + (32 * mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]) + (32 * _3742) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _866 - ext_call.return_data[0]:
                                        require ext_code.size(tokenAAddress)
                                        staticcall tokenAAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if _1827 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(tokenAAddress)
                                        call tokenAAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args providerAAddress, ext_call.return_data[0] - _1827
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if _1784 - ext_call.return_data[0]:
                                        require ext_code.size(tokenBAddress)
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if _1844 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(tokenBAddress)
                                        call tokenBAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args providerBAddress, ext_call.return_data[0] - _1844
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    mem[0] = 10
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + 576] = uint256(stor10.field_0)
                                    idx = _1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + 576
                                    s = 0
                                    while _1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 544 > idx:
                                        mem[idx + 32] = stor10[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416] = _1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + 544
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448] = _1848 + ceil32(return_data.size) + 96
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 480] = 0
                                    require ext_code.size(lbpAddress)
                                    staticcall lbpAddress.getPoolId() with:
                                            gas gas_remaining wei
                                    mem[_1848 + ceil32(return_data.size) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 576] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 576
                                    require return_data.size >= 32
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 576] = 0x8bdb391300000000000000000000000000000000000000000000000000000000
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 580] = ext_call.return_data[0]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 612] = this.address
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 644] = this.address
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 676] = 128
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 708] = 128
                                    _4657 = mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 836] = mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 512]
                                    idx = 0
                                    s = _1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 868
                                    t = _1848 + ceil32(return_data.size) + (32 * _1871) + 544
                                    while idx < _4657:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 740] = (32 * _4657) + 160
                                    _5486 = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * _4657) + 868] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * _4657) + 900 len 32 * _5486] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 416] + 32 len 32 * _5486]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 772] = (32 * _4657) + (32 * _5486) + 192
                                    _6335 = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * _4657) + (32 * _5486) + 900] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448]]
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * _4657) + (32 * _5486) + 932 len ceil32(_6335)] = mem[mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 448] + 32 len ceil32(_6335)]
                                    if ceil32(_6335) > _6335:
                                        mem[_6335 + _1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + (32 * _4657) + (32 * _5486) + 932] = 0
                                    mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 480])
                                    require ext_code.size(bVaultAddress)
                                    call bVaultAddress.exitPool(bytes32 arg1, address arg2, address arg3, address[] arg4, uint256[] arg5, bytes arg6, bool arg7) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], address(this.address), address(this.address), 128, 128, (32 * _4657) + 160, (32 * _4657) + (32 * _5486) + 192, bool(mem[_1848 + ceil32(return_data.size) + (32 * _1871) + 480]), mem[_1848 + (2 * ceil32(return_data.size)) + (32 * _1871) + (32 * assets.length) + (32 * stor10.length) + 836 len ceil32(_6335) + (32 * _4657) + (32 * _5486) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _866 - ext_call.return_data[0]:
                                        require ext_code.size(tokenAAddress)
                                        staticcall tokenAAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if _1827 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(tokenAAddress)
                                        call tokenAAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args providerAAddress, ext_call.return_data[0] - _1827
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if _1784 - ext_call.return_data[0]:
                                        require ext_code.size(tokenBAddress)
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if _1844 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(tokenBAddress)
                                        call tokenBAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args providerBAddress, ext_call.return_data[0] - _1844
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            mem[100] = msg.sender
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.isVaultManagers(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, '!allowed'
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.totalDebt() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(providerBAddress)
            staticcall providerBAddress.totalDebt() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    require ext_code.size(lbpAddress)
                    staticcall lbpAddress.getPoolId() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                    require ext_code.size(bVaultAddress)
                    staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 96
                    require return_data.size >= 96
                    _60 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
                    _63 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 128
                    mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                    require _60 + (32 * _63) + 32 <= return_data.size
                    s = (6 * ceil32(return_data.size)) + _60 + 128
                    t = (7 * ceil32(return_data.size)) + 128
                    idx = 0
                    while idx < _63:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    _368 = mem[(6 * ceil32(return_data.size)) + 128]
                    require mem[(6 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
                    _372 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128] + 96]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128] + 96] <= test266151307()
                    _375 = mem[64]
                    require mem[64] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128] + 96]) + 32 <= test266151307()
                    mem[64] = mem[64] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128] + 96]) + 32
                    mem[_375] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128] + 96]
                    require return_data.size >= _368 + (32 * _372) + 32
                    mem[_375 + 32 len 32 * _372] = mem[(6 * ceil32(return_data.size)) + _368 + 128 len 32 * _372]
                    require 0 < _372
                    _867 = mem[_375 + 32]
                    require ext_code.size(lbpAddress)
                    staticcall lbpAddress.getPoolId() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _876 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _879 = mem[_876]
                    mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _879
                    require ext_code.size(bVaultAddress)
                    staticcall bVaultAddress.getPoolTokens(bytes32 arg1) with:
                            gas gas_remaining wei
                           args _879
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _888 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _891 = mem[_888]
                    require mem[_888] <= test266151307()
                    require _888 + mem[_888] + 31 < _888 + return_data.size
                    _894 = mem[_888 + mem[_888]]
                    require mem[_888 + mem[_888]] <= test266151307()
                    require (32 * mem[_888 + mem[_888]]) + 32 >= 0 and _888 + ceil32(return_data.size) + (32 * mem[_888 + mem[_888]]) + 32 <= test266151307()
                    mem[64] = _888 + ceil32(return_data.size) + (32 * mem[_888 + mem[_888]]) + 32
                    mem[_888 + ceil32(return_data.size)] = _894
                    require _891 + (32 * _894) + 32 <= return_data.size
                    s = _888 + _891 + 32
                    t = _888 + ceil32(return_data.size) + 32
                    idx = 0
                    while idx < _894:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    _1340 = mem[_888 + 32]
                    require mem[_888 + 32] <= test266151307()
                    require _888 + mem[_888 + 32] + 31 < _888 + return_data.size
                    _1344 = mem[_888 + mem[_888 + 32]]
                    require mem[_888 + mem[_888 + 32]] <= test266151307()
                    _1347 = mem[64]
                    require mem[64] + (32 * mem[_888 + mem[_888 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_888 + mem[_888 + 32]]) + 32 <= test266151307()
                    mem[64] = mem[64] + (32 * mem[_888 + mem[_888 + 32]]) + 32
                    mem[_1347] = _1344
                    require return_data.size >= _1340 + (32 * _1344) + 32
                    mem[_1347 + 32 len 32 * _1344] = mem[_888 + _1340 + 32 len 32 * _1344]
                    require 1 < _1344
                    _1785 = mem[_1347 + 64]
                    if _867 >= ext_call.return_data[0]:
                        if mem[_1347 + 64] >= ext_call.return_data[0]:
                            _1788 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1788] = 30
                            mem[_1788 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > _867:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _1797 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1797] = 30
                            mem[_1797 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > _1785:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAAddress)
                            staticcall tokenAAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1824 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1829 = mem[_1824]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenBAddress)
                            staticcall tokenBAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1842 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1845 = mem[_1842]
                            _1850 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1850]
                            mem[_1850 + 32] = _867 - ext_call.return_data[0]
                            require 1 < mem[_1850]
                            mem[_1850 + 64] = _1785 - ext_call.return_data[0]
                            mem[_1850 + 100] = this.address
                            require ext_code.size(lbpAddress)
                            staticcall lbpAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1850 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1850 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            mem[_1850 + ceil32(return_data.size) + 128] = 2
                            mem[_1850 + ceil32(return_data.size) + 160] = 96
                            _1872 = mem[_1850]
                            mem[_1850 + ceil32(return_data.size) + 224] = mem[_1850]
                            mem[_1850 + ceil32(return_data.size) + 256 len 32 * mem[_1850]] = mem[_1850 + 32 len 32 * mem[_1850]]
                            mem[_1850 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            mem[_1850 + ceil32(return_data.size) + 96] = (32 * mem[_1850]) + 128
                            mem[_1850 + ceil32(return_data.size) + (32 * mem[_1850]) + 256] = 96
                            mem[_1850 + ceil32(return_data.size) + (32 * mem[_1850]) + 288] = 96
                            mem[_1850 + ceil32(return_data.size) + (32 * mem[_1850]) + 320] = 96
                            mem[_1850 + ceil32(return_data.size) + (32 * mem[_1850]) + 352] = 0
                            mem[_1850 + ceil32(return_data.size) + (32 * mem[_1850]) + 512] = assets.length
                            if not assets.length:
                                mem[_1850 + ceil32(return_data.size) + (32 * mem[_1850]) + 384] = _1850 + ceil32(return_data.size) + (32 * mem[_1850]) + 512
                                mem[_1850 + ceil32(return_data.size) + (32 * mem[_1850]) + (32 * assets.length) + 544] = stor10.length
                                if stor10.length:
                                    mem[0] = 10
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + 576] = uint256(stor10.field_0)
                                    idx = _1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + 576
                                    s = 0
                                    while _1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 544 > idx:
                                        mem[idx + 32] = stor10[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416] = _1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + 544
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448] = _1850 + ceil32(return_data.size) + 96
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 480] = 0
                                    require ext_code.size(lbpAddress)
                                    staticcall lbpAddress.getPoolId() with:
                                            gas gas_remaining wei
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 576] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 576
                                    require return_data.size >= 32
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 576] = 0x8bdb391300000000000000000000000000000000000000000000000000000000
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 580] = ext_call.return_data[0]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 612] = this.address
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 644] = this.address
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 676] = 128
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 708] = 128
                                    _2883 = mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 836] = mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]
                                    idx = 0
                                    s = _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 868
                                    t = _1850 + ceil32(return_data.size) + (32 * _1872) + 544
                                    while idx < _2883:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 740] = (32 * _2883) + 160
                                    _3743 = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * _2883) + 868] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * _2883) + 900 len 32 * _3743] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416] + 32 len 32 * _3743]
                                    var191001 = _3743
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 772] = (32 * _2883) + (32 * _3743) + 192
                                    _4604 = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * _2883) + (32 * _3743) + 900] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * _2883) + (32 * _3743) + 932 len ceil32(_4604)] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448] + 32 len ceil32(_4604)]
                                    if ceil32(_4604) > _4604:
                                        mem[_4604 + _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * _2883) + (32 * _3743) + 932] = 0
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 480])
                                    require ext_code.size(bVaultAddress)
                                    call bVaultAddress.exitPool(bytes32 arg1, address arg2, address arg3, address[] arg4, uint256[] arg5, bytes arg6, bool arg7) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], address(this.address), address(this.address), 128, 128, (32 * _2883) + 160, (32 * _2883) + (32 * _3743) + 192, bool(mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 480]), mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 836 len ceil32(_4604) + (32 * _2883) + (32 * _3743) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _867 - ext_call.return_data[0]:
                                        require ext_code.size(tokenAAddress)
                                        staticcall tokenAAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if _1829 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(tokenAAddress)
                                        call tokenAAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args providerAAddress, ext_call.return_data[0] - _1829
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if _1785 - ext_call.return_data[0]:
                                        require ext_code.size(tokenBAddress)
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if _1845 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(tokenBAddress)
                                        call tokenBAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args providerBAddress, ext_call.return_data[0] - _1845
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    mem[_1850 + ceil32(return_data.size) + (32 * mem[_1850]) + 416] = _1850 + ceil32(return_data.size) + (32 * mem[_1850]) + (32 * assets.length) + 544
                                    mem[_1850 + ceil32(return_data.size) + (32 * mem[_1850]) + 448] = _1850 + ceil32(return_data.size) + 96
                                    mem[_1850 + ceil32(return_data.size) + (32 * mem[_1850]) + 480] = 0
                                    require ext_code.size(lbpAddress)
                                    staticcall lbpAddress.getPoolId() with:
                                            gas gas_remaining wei
                                    mem[_1850 + ceil32(return_data.size) + (32 * mem[_1850]) + (32 * assets.length) + (32 * stor10.length) + 576] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1850 + (2 * ceil32(return_data.size)) + (32 * mem[_1850]) + (32 * assets.length) + (32 * stor10.length) + 576
                                    require return_data.size >= 32
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 576] = 0x8bdb391300000000000000000000000000000000000000000000000000000000
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 580] = ext_call.return_data[0]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 612] = this.address
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 644] = this.address
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 676] = 128
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 708] = 128
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 836] = assets.length
                                    idx = 0
                                    s = _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 868
                                    t = _1850 + ceil32(return_data.size) + (32 * _1872) + 544
                                    while idx < mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 740] = (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + 160
                                    _2553 = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + 868] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + 900 len 32 * _2553] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416] + 32 len 32 * _2553]
                                    var187001 = _2553
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 772] = (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + (32 * _2553) + 192
                                    _2861 = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + (32 * _2553) + 900] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + (32 * _2553) + 932 len ceil32(_2861)] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448] + 32 len ceil32(_2861)]
                                    if ceil32(_2861) <= _2861:
                                        mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 480])
                                        require ext_code.size(bVaultAddress)
                                        call bVaultAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(_2861) + _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + (32 * _2553) + -mem[64] + 928]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not _867 - ext_call.return_data[0]:
                                            if _1785 - ext_call.return_data[0]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(tokenBAddress)
                                                staticcall tokenBAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3842 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3856 = mem[_3842]
                                                _3904 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3904] = 30
                                                mem[_3904 + 32] = 'SafeMath: subtraction overflow'
                                                if _1845 > _3856:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                mem[mem[64] + 4] = providerBAddress
                                                mem[mem[64] + 36] = _3856 - _1845
                                                require ext_code.size(tokenBAddress)
                                                call tokenBAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args providerBAddress, _3856 - _1845
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4060 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4060] == bool(mem[_4060])
                                        else:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenAAddress)
                                            staticcall tokenAAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3836 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3848 = mem[_3836]
                                            _3886 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3886] = 30
                                            mem[_3886 + 32] = 'SafeMath: subtraction overflow'
                                            if _1829 > _3848:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            mem[mem[64] + 4] = providerAAddress
                                            mem[mem[64] + 36] = _3848 - _1829
                                            require ext_code.size(tokenAAddress)
                                            call tokenAAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args providerAAddress, _3848 - _1829
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4042 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4042] == bool(mem[_4042])
                                            if _1785 - ext_call.return_data[0]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(tokenBAddress)
                                                staticcall tokenBAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4324 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4332 = mem[_4324]
                                                _4354 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4354] = 30
                                                mem[_4354 + 32] = 'SafeMath: subtraction overflow'
                                                if _1845 > _4332:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                mem[mem[64] + 4] = providerBAddress
                                                mem[mem[64] + 36] = _4332 - _1845
                                                require ext_code.size(tokenBAddress)
                                                call tokenBAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args providerBAddress, _4332 - _1845
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4432 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4432] == bool(mem[_4432])
                                    else:
                                        mem[_2861 + _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + (32 * _2553) + 932] = 0
                                        mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 480])
                                        require ext_code.size(bVaultAddress)
                                        call bVaultAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(_2861) + _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + (32 * _2553) + -mem[64] + 928]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not _867 - ext_call.return_data[0]:
                                            if _1785 - ext_call.return_data[0]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(tokenBAddress)
                                                staticcall tokenBAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3837 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3849 = mem[_3837]
                                                _3887 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3887] = 30
                                                mem[_3887 + 32] = 'SafeMath: subtraction overflow'
                                                if _1845 > _3849:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                mem[mem[64] + 4] = providerBAddress
                                                mem[mem[64] + 36] = _3849 - _1845
                                                require ext_code.size(tokenBAddress)
                                                call tokenBAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args providerBAddress, _3849 - _1845
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4043 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4043] == bool(mem[_4043])
                                        else:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenAAddress)
                                            staticcall tokenAAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3829 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3843 = mem[_3829]
                                            _3869 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3869] = 30
                                            mem[_3869 + 32] = 'SafeMath: subtraction overflow'
                                            if _1829 > _3843:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            mem[mem[64] + 4] = providerAAddress
                                            mem[mem[64] + 36] = _3843 - _1829
                                            require ext_code.size(tokenAAddress)
                                            call tokenAAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args providerAAddress, _3843 - _1829
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4024 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4024] == bool(mem[_4024])
                                            if _1785 - ext_call.return_data[0]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(tokenBAddress)
                                                staticcall tokenBAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4311 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4329 = mem[_4311]
                                                _4345 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4345] = 30
                                                mem[_4345 + 32] = 'SafeMath: subtraction overflow'
                                                if _1845 > _4329:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                mem[mem[64] + 4] = providerBAddress
                                                mem[mem[64] + 36] = _4329 - _1845
                                                require ext_code.size(tokenBAddress)
                                                call tokenBAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args providerBAddress, _4329 - _1845
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4423 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4423] == bool(mem[_4423])
                            else:
                                mem[0] = 9
                                mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 544] = address(assets.field_0)
                                idx = _1850 + ceil32(return_data.size) + (32 * _1872) + 544
                                s = 0
                                while _1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + 544 > idx + 32:
                                    mem[idx + 32] = assets[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 384] = _1850 + ceil32(return_data.size) + (32 * _1872) + 512
                                mem[_1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + 544] = stor10.length
                                if stor10.length:
                                    mem[0] = 10
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + 576] = uint256(stor10.field_0)
                                    idx = _1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + 576
                                    s = 0
                                    while _1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 544 > idx:
                                        mem[idx + 32] = stor10[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416] = _1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + 544
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448] = _1850 + ceil32(return_data.size) + 96
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 480] = 0
                                    require ext_code.size(lbpAddress)
                                    staticcall lbpAddress.getPoolId() with:
                                            gas gas_remaining wei
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 576] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 576
                                    require return_data.size >= 32
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 576] = 0x8bdb391300000000000000000000000000000000000000000000000000000000
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 580] = ext_call.return_data[0]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 612] = this.address
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 644] = this.address
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 676] = 128
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 708] = 128
                                    _4659 = mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 836] = mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]
                                    idx = 0
                                    s = _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 868
                                    t = _1850 + ceil32(return_data.size) + (32 * _1872) + 544
                                    while idx < _4659:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 740] = (32 * _4659) + 160
                                    _5487 = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * _4659) + 868] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * _4659) + 900 len 32 * _5487] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416] + 32 len 32 * _5487]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 772] = (32 * _4659) + (32 * _5487) + 192
                                    _6336 = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * _4659) + (32 * _5487) + 900] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * _4659) + (32 * _5487) + 932 len ceil32(_6336)] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448] + 32 len ceil32(_6336)]
                                    if ceil32(_6336) > _6336:
                                        mem[_6336 + _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * _4659) + (32 * _5487) + 932] = 0
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 480])
                                    require ext_code.size(bVaultAddress)
                                    call bVaultAddress.exitPool(bytes32 arg1, address arg2, address arg3, address[] arg4, uint256[] arg5, bytes arg6, bool arg7) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], address(this.address), address(this.address), 128, 128, (32 * _4659) + 160, (32 * _4659) + (32 * _5487) + 192, bool(mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 480]), mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 836 len ceil32(_6336) + (32 * _4659) + (32 * _5487) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _867 - ext_call.return_data[0]:
                                        require ext_code.size(tokenAAddress)
                                        staticcall tokenAAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if _1829 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(tokenAAddress)
                                        call tokenAAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args providerAAddress, ext_call.return_data[0] - _1829
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if _1785 - ext_call.return_data[0]:
                                        require ext_code.size(tokenBAddress)
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if _1845 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(tokenBAddress)
                                        call tokenBAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args providerBAddress, ext_call.return_data[0] - _1845
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416] = _1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + 544
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448] = _1850 + ceil32(return_data.size) + 96
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 480] = 0
                                    require ext_code.size(lbpAddress)
                                    staticcall lbpAddress.getPoolId() with:
                                            gas gas_remaining wei
                                    mem[_1850 + ceil32(return_data.size) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 576] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 576
                                    require return_data.size >= 32
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 576] = 0x8bdb391300000000000000000000000000000000000000000000000000000000
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 580] = ext_call.return_data[0]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 612] = this.address
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 644] = this.address
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 676] = 128
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 708] = 128
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 836] = assets.length
                                    idx = 0
                                    s = _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 868
                                    t = _1850 + ceil32(return_data.size) + (32 * _1872) + 544
                                    while idx < mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 740] = (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + 160
                                    _3744 = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + 868] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + 900 len 32 * _3744] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 416] + 32 len 32 * _3744]
                                    var191001 = _3744
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 772] = (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + (32 * _3744) + 192
                                    _4605 = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + (32 * _3744) + 900] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448]]
                                    mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + (32 * _3744) + 932 len ceil32(_4605)] = mem[mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 448] + 32 len ceil32(_4605)]
                                    if ceil32(_4605) <= _4605:
                                        mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 480])
                                        require ext_code.size(bVaultAddress)
                                        call bVaultAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(_4605) + _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + (32 * _3744) + -mem[64] + 928]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not _867 - ext_call.return_data[0]:
                                            if _1785 - ext_call.return_data[0]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(tokenBAddress)
                                                staticcall tokenBAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5612 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5633 = mem[_5612]
                                                _5679 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5679] = 30
                                                mem[_5679 + 32] = 'SafeMath: subtraction overflow'
                                                if _1845 > _5633:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                mem[mem[64] + 4] = providerBAddress
                                                mem[mem[64] + 36] = _5633 - _1845
                                                require ext_code.size(tokenBAddress)
                                                call tokenBAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args providerBAddress, _5633 - _1845
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5865 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5865] == bool(mem[_5865])
                                        else:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenAAddress)
                                            staticcall tokenAAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5600 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5624 = mem[_5600]
                                            _5661 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5661] = 30
                                            mem[_5661 + 32] = 'SafeMath: subtraction overflow'
                                            if _1829 > _5624:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            mem[mem[64] + 4] = providerAAddress
                                            mem[mem[64] + 36] = _5624 - _1829
                                            require ext_code.size(tokenAAddress)
                                            call tokenAAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args providerAAddress, _5624 - _1829
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5847 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5847] == bool(mem[_5847])
                                            if _1785 - ext_call.return_data[0]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(tokenBAddress)
                                                staticcall tokenBAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6074 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6087 = mem[_6074]
                                                _6107 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6107] = 30
                                                mem[_6107 + 32] = 'SafeMath: subtraction overflow'
                                                if _1845 > _6087:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                mem[mem[64] + 4] = providerBAddress
                                                mem[mem[64] + 36] = _6087 - _1845
                                                require ext_code.size(tokenBAddress)
                                                call tokenBAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args providerBAddress, _6087 - _1845
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6200 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6200] == bool(mem[_6200])
                                    else:
                                        mem[_4605 + _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + (32 * _3744) + 932] = 0
                                        mem[_1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + 804] = bool(mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 480])
                                        require ext_code.size(bVaultAddress)
                                        call bVaultAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(_4605) + _1850 + (2 * ceil32(return_data.size)) + (32 * _1872) + (32 * assets.length) + (32 * stor10.length) + (32 * mem[_1850 + ceil32(return_data.size) + (32 * _1872) + 512]) + (32 * _3744) + -mem[64] + 928]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not _867 - ext_call.return_data[0]:
                                            if _1785 - ext_call.return_data[0]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(tokenBAddress)
                                                staticcall tokenBAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5601 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5625 = mem[_5601]
                                                _5662 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5662] = 30
                                                mem[_5662 + 32] = 'SafeMath: subtraction overflow'
                                                if _1845 > _5625:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                mem[mem[64] + 4] = providerBAddress
                                                mem[mem[64] + 36] = _5625 - _1845
                                                require ext_code.size(tokenBAddress)
                                                call tokenBAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args providerBAddress, _5625 - _1845
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5848 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5848] == bool(mem[_5848])
                                        else:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenAAddress)
                                            staticcall tokenAAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5588 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5613 = mem[_5588]
                                            _5644 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5644] = 30
                                            mem[_5644 + 32] = 'SafeMath: subtraction overflow'
                                            if _1829 > _5613:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            mem[mem[64] + 4] = providerAAddress
                                            mem[mem[64] + 36] = _5613 - _1829
                                            require ext_code.size(tokenAAddress)
                                            call tokenAAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args providerAAddress, _5613 - _1829
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5825 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5825] == bool(mem[_5825])
                                            if _1785 - ext_call.return_data[0]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(tokenBAddress)
                                                staticcall tokenBAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6063 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6081 = mem[_6063]
                                                _6098 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6098] = 30
                                                mem[_6098 + 32] = 'SafeMath: subtraction overflow'
                                                if _1845 > _6081:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                mem[mem[64] + 4] = providerBAddress
                                                mem[mem[64] + 36] = _6081 - _1845
                                                require ext_code.size(tokenBAddress)
                                                call tokenBAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args providerBAddress, _6081 - _1845
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6191 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6191] == bool(mem[_6191])
}



}
