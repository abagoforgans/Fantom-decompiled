contract main {




// =====================  Runtime code  =====================


#
#  - sweep(address arg1)
#
address vaultAddress;
uint32 stor1;
address strategyAddress;
uint256 stor1;
address wantAddress;
array of uint256 lenderName;
uint256 dust;
uint256 dustThreshold;
address cTokenAddress;

function want() payable {
    return wantAddress
}

function cToken() payable {
    return cTokenAddress
}

function lenderName() payable {
    return lenderName[0 len lenderName.length]
}

function strategy() payable {
    return address(strategyAddress)
}

function dustThreshold() payable {
    return dustThreshold
}

function dust() payable {
    return dust
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function hasAssets() payable {
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > dustThreshold)
}

function apr() payable {
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.supplyRatePerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
        revert with 0, 'SafeMath: multiplication overflow'
    return (31540000 * ext_call.return_data[0])
}

function convertFromUnderlying(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0])
    if 10^18 * arg1 / arg1 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^18 * arg1 / ext_call.return_data[0])
}

function underlyingBalanceStored() payable {
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < dustThreshold:
        return 0
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function setDust(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(strategyAddress) != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).management() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!management'
    dust = arg1
}

function setDustThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(strategyAddress) != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).management() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!management'
    dustThreshold = arg1
}

function cloneCreamLender(address arg1, string arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2.length + arg2 + 36
    require arg3 == arg3
    create contract with 0 wei
                    code: 0, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(address(create.new_address))
    call address(create.new_address) with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Cloned(address(create.new_address));
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xc4d66de8 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 
           uint128(create.new_address) << 96
}

function deposit() payable {
    if address(strategyAddress) != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).management() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!management'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    call cTokenAddress.mint(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'ctoken: mint fail'
}

function aprAfterDeposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args cTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.totalBorrows() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.totalReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.reserveFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.interestRateModel() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getSupplyRate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
            gas gas_remaining wei
           args arg1 + ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
        revert with 0, 'SafeMath: multiplication overflow'
    return (31540000 * ext_call.return_data[0])
}

function nav() payable {
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < dustThreshold:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] >= dustThreshold:
            return ext_call.return_data[0]
    else:
        require ext_code.size(cTokenAddress)
        staticcall cTokenAddress.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] >= dustThreshold:
                return ext_call.return_data[0]
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] >= dustThreshold:
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
    return 0
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if cTokenAddress:
        revert with 0, 'GenericCream already initialized'
    cTokenAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wantAddress:
        revert with 0, 'WRONG CTOKEN'
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(2 * ceil32(return_data.size)) + 132] = arg1
    mem[(2 * ceil32(return_data.size)) + 164] = -1
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call wantAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
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
    dustThreshold = 10000
}

function initialize(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if address(strategyAddress):
        revert with 0, 'Lender already initialized'
    address(strategyAddress) = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xfbfa77cf with:
            gas gas_remaining wei
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] == Mask(8 * -ceil32(arg2.length) + arg2.length + 20, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    vaultAddress = Mask(8 * -ceil32(arg2.length) + arg2.length + 20, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    require ext_code.size(address(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]))
    staticcall address(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]).token() with:
            gas gas_remaining wei
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    wantAddress = ext_call.return_data[12 len 20]
    lenderName[] = Array(len=arg2.length, data=arg2[all])
    dust = 10000
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 128] = 68
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 292 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
    call wantAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if arg2.length:
                revert with arg2[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg2.length:
            require arg2.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 324] == bool(mem[ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 324])
            if not mem[ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function weightedApr() payable {
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.supplyRatePerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(cTokenAddress)
        staticcall cTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < dustThreshold:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
    else:
        if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(cTokenAddress)
        staticcall cTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < dustThreshold:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] >= dustThreshold:
                if not 31540000 * ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] * ext_call.return_data[0] / 31540000 * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0] * ext_call.return_data[0])
        else:
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] >= dustThreshold:
                    if not 31540000 * ext_call.return_data[0]:
                        return 0
                    if 31540000 * ext_call.return_data[0] * ext_call.return_data[0] / 31540000 * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (31540000 * ext_call.return_data[0] * ext_call.return_data[0])
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] >= dustThreshold:
                    if not 31540000 * ext_call.return_data[0]:
                        return 0
                    if (31540000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (31540000 * ext_call.return_data[0] * ext_call.return_data[0]) / 31540000 * ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return ((31540000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (31540000 * ext_call.return_data[0] * ext_call.return_data[0]))
        if 31540000 * ext_call.return_data[0]:
            if 0 / 31540000 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
    return 0
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == address(strategyAddress):
        mem[100] = arg1
        require ext_code.size(cTokenAddress)
        call cTokenAddress.redeem(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call wantAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(arg1), mem[132 len 28] == bool(uint32(arg1), mem[132 len 28])
                if not uint32(arg1), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.sender == ext_call.return_data[12 len 20]:
            mem[ceil32(return_data.size) + 100] = arg1
            require ext_code.size(cTokenAddress)
            call cTokenAddress.redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.governance() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).management() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!management'
            mem[(2 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(cTokenAddress)
            call cTokenAddress.redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.governance() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = 68
            mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
            mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(7 * ceil32(return_data.size)) + 196] = 32
            mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0
            mem[(7 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                    if not mem[(7 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == address(strategyAddress):
        mem[100] = this.address
        require ext_code.size(cTokenAddress)
        call cTokenAddress.balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if dustThreshold + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if dustThreshold + arg1 >= 2 * ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            if ext_call.return_data[0] <= dustThreshold:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                        if not mem[(4 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                require ext_code.size(cTokenAddress)
                call cTokenAddress.redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'ctoken: redeemAll fail'
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 96] = 68
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 196] = 32
                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                mem[(7 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                        if not mem[(7 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if ext_call.return_data[0] >= arg1:
                mem[(2 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = arg1
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg1, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg1, 0) << 288)
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
                return arg1
            mem[(2 * ceil32(return_data.size)) + 100] = cTokenAddress
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args cTokenAddress
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 1:
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 96] = 30
                mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - ext_call.return_data[0] <= ext_call.return_data[0]:
                    mem[(4 * ceil32(return_data.size)) + 164] = arg1 - ext_call.return_data[0]
                    require ext_code.size(cTokenAddress)
                    call cTokenAddress.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args (arg1 - ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    require ext_code.size(cTokenAddress)
                    call cTokenAddress.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'ctoken: redeemUnderlying fail'
                mem[(6 * ceil32(return_data.size)) + 164] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 160] = 68
                mem[(7 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                mem[(7 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 260] = 32
                mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                mem[(7 * ceil32(return_data.size)) + 392] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                    mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 356] == bool(mem[(7 * ceil32(return_data.size)) + 356])
                        if not mem[(7 * ceil32(return_data.size)) + 356]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.sender == ext_call.return_data[12 len 20]:
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(cTokenAddress)
            call cTokenAddress.balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if dustThreshold + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if dustThreshold + arg1 >= 2 * ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                if ext_call.return_data[0] <= dustThreshold:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                    mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 96] = 68
                    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(6 * ceil32(return_data.size)) + 196] = 32
                    mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                    mem[(6 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                            if not mem[(6 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                    require ext_code.size(cTokenAddress)
                    call cTokenAddress.redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'ctoken: redeemAll fail'
                    mem[(7 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                    mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 96] = 68
                    mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                    mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 196] = 32
                    mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                    mem[(8 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                            if not mem[(8 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if ext_call.return_data[0] >= arg1:
                    mem[(4 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                    mem[(4 * ceil32(return_data.size)) + 164] = arg1
                    mem[(4 * ceil32(return_data.size)) + 96] = 68
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg1, 0
                    mem[(4 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                            if not mem[(4 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return arg1
                mem[(4 * ceil32(return_data.size)) + 100] = cTokenAddress
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args cTokenAddress
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 1:
                    mem[(6 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                    mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 96] = 68
                    mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                    mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 196] = 32
                    mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                    mem[(7 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                            if not mem[(7 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 96] = 30
                    mem[(6 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 - ext_call.return_data[0] <= ext_call.return_data[0]:
                        mem[(6 * ceil32(return_data.size)) + 164] = arg1 - ext_call.return_data[0]
                        require ext_code.size(cTokenAddress)
                        call cTokenAddress.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (arg1 - ext_call.return_data[0])
                    else:
                        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        require ext_code.size(cTokenAddress)
                        call cTokenAddress.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'ctoken: redeemUnderlying fail'
                    mem[(7 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                    mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 160] = 68
                    mem[(8 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                    mem[(8 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 260] = 32
                    mem[(8 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                    mem[(8 * ceil32(return_data.size)) + 392] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 356] == bool(mem[(8 * ceil32(return_data.size)) + 356])
                            if not mem[(8 * ceil32(return_data.size)) + 356]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).management() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!management'
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(cTokenAddress)
            call cTokenAddress.balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if dustThreshold + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if dustThreshold + arg1 >= 2 * ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                if ext_call.return_data[0] <= dustThreshold:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                    mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 96] = 68
                    mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                    mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 196] = 32
                    mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                    mem[(7 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                            if not mem[(7 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                    require ext_code.size(cTokenAddress)
                    call cTokenAddress.redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'ctoken: redeemAll fail'
                    mem[(8 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(10 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                    mem[(10 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(10 * ceil32(return_data.size)) + 96] = 68
                    mem[(10 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                    mem[(10 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(10 * ceil32(return_data.size)) + 196] = 32
                    mem[(10 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(10 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                    mem[(10 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(10 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(10 * ceil32(return_data.size)) + 292] == bool(mem[(10 * ceil32(return_data.size)) + 292])
                            if not mem[(10 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if ext_call.return_data[0] >= arg1:
                    mem[(6 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                    mem[(6 * ceil32(return_data.size)) + 164] = arg1
                    mem[(6 * ceil32(return_data.size)) + 96] = 68
                    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(6 * ceil32(return_data.size)) + 196] = 32
                    mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg1, 0
                    mem[(6 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                            if not mem[(6 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return arg1
                mem[(6 * ceil32(return_data.size)) + 100] = cTokenAddress
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args cTokenAddress
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 1:
                    mem[(7 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                    mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 96] = 68
                    mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                    mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 196] = 32
                    mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                    mem[(8 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                            if not mem[(8 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 96] = 30
                    mem[(7 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 - ext_call.return_data[0] <= ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 164] = arg1 - ext_call.return_data[0]
                        require ext_code.size(cTokenAddress)
                        call cTokenAddress.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (arg1 - ext_call.return_data[0])
                    else:
                        mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        require ext_code.size(cTokenAddress)
                        call cTokenAddress.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'ctoken: redeemUnderlying fail'
                    mem[(8 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(10 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                    mem[(10 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    mem[(10 * ceil32(return_data.size)) + 160] = 68
                    mem[(10 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                    mem[(10 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                    mem[(10 * ceil32(return_data.size)) + 260] = 32
                    mem[(10 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(10 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                    mem[(10 * ceil32(return_data.size)) + 392] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(10 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(10 * ceil32(return_data.size)) + 356] == bool(mem[(10 * ceil32(return_data.size)) + 356])
                            if not mem[(10 * ceil32(return_data.size)) + 356]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}

function withdrawAll() payable {
    if msg.sender == address(strategyAddress):
        mem[100] = 0
        require ext_code.size(cTokenAddress)
        call cTokenAddress.mint(uint256 arg1) with:
             gas gas_remaining wei
            args 0
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = cTokenAddress
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args cTokenAddress
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 132] = address(strategyAddress)
            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.exchangeRateStored() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 96] = 26
                mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[(4 * ceil32(return_data.size)) + 164] = this.address
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / ext_call.return_data[0] <= 2:
                    mem[(6 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                    mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 160] = 68
                    mem[(7 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                    mem[(7 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 260] = 32
                    mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                    mem[(7 * ceil32(return_data.size)) + 392] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                        mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 356] == bool(mem[(7 * ceil32(return_data.size)) + 356])
                            if not mem[(7 * ceil32(return_data.size)) + 356]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if ext_call.return_data[0] <= (0 / ext_call.return_data[0]) - 1:
                        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        require ext_code.size(cTokenAddress)
                        call cTokenAddress.redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(7 * ceil32(return_data.size)) + 164] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                        mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 160] = 68
                        mem[(8 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                        mem[(8 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                        mem[(8 * ceil32(return_data.size)) + 260] = 32
                        mem[(8 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                        mem[(8 * ceil32(return_data.size)) + 392] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                            mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 356] == bool(mem[(8 * ceil32(return_data.size)) + 356])
                                if not mem[(8 * ceil32(return_data.size)) + 356]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        return 1
                    mem[(6 * ceil32(return_data.size)) + 164] = cTokenAddress
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args cTokenAddress
                    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(cTokenAddress)
                        call cTokenAddress.redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 164] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                        mem[(10 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(10 * ceil32(return_data.size)) + 160] = 68
                        mem[(10 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                        mem[(10 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                        mem[(10 * ceil32(return_data.size)) + 260] = 32
                        mem[(10 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(10 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                        mem[(10 * ceil32(return_data.size)) + 392] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                            mem[(10 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(10 * ceil32(return_data.size)) + 356] == bool(mem[(10 * ceil32(return_data.size)) + 356])
                                if not mem[(10 * ceil32(return_data.size)) + 356]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 160] = 26
                            mem[(8 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            mem[(8 * ceil32(return_data.size)) + 228] = 0 / ext_call.return_data[0]
                            require ext_code.size(cTokenAddress)
                            call cTokenAddress.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0])
                        else:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(8 * ceil32(return_data.size)) + 160] = 26
                            mem[(8 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            mem[(8 * ceil32(return_data.size)) + 228] = 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                            require ext_code.size(cTokenAddress)
                            call cTokenAddress.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(11 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                        mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(11 * ceil32(return_data.size)) + 224] = 68
                        mem[(11 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor1)
                        mem[(11 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(11 * ceil32(return_data.size)) + 324] = 32
                        mem[(11 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(11 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                        mem[(11 * ceil32(return_data.size)) + 456] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                            mem[(11 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(11 * ceil32(return_data.size)) + 420] == bool(mem[(11 * ceil32(return_data.size)) + 420])
                                if not mem[(11 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(4 * ceil32(return_data.size)) + 96] = 26
                mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[(4 * ceil32(return_data.size)) + 164] = this.address
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 2:
                    mem[(6 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                    mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 160] = 68
                    mem[(7 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                    mem[(7 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 260] = 32
                    mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                    mem[(7 * ceil32(return_data.size)) + 392] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                        mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 356] == bool(mem[(7 * ceil32(return_data.size)) + 356])
                            if not mem[(7 * ceil32(return_data.size)) + 356]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if ext_call.return_data[0] <= (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 1:
                        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        require ext_code.size(cTokenAddress)
                        call cTokenAddress.redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(7 * ceil32(return_data.size)) + 164] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                        mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 160] = 68
                        mem[(8 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                        mem[(8 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                        mem[(8 * ceil32(return_data.size)) + 260] = 32
                        mem[(8 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                        mem[(8 * ceil32(return_data.size)) + 392] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                            mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 356] == bool(mem[(8 * ceil32(return_data.size)) + 356])
                                if not mem[(8 * ceil32(return_data.size)) + 356]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        return 1
                    mem[(6 * ceil32(return_data.size)) + 164] = cTokenAddress
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args cTokenAddress
                    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(cTokenAddress)
                        call cTokenAddress.redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 164] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                        mem[(10 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(10 * ceil32(return_data.size)) + 160] = 68
                        mem[(10 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                        mem[(10 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                        mem[(10 * ceil32(return_data.size)) + 260] = 32
                        mem[(10 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(10 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                        mem[(10 * ceil32(return_data.size)) + 392] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                            mem[(10 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(10 * ceil32(return_data.size)) + 356] == bool(mem[(10 * ceil32(return_data.size)) + 356])
                                if not mem[(10 * ceil32(return_data.size)) + 356]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 160] = 26
                            mem[(8 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            mem[(8 * ceil32(return_data.size)) + 228] = 0 / ext_call.return_data[0]
                            require ext_code.size(cTokenAddress)
                            call cTokenAddress.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0])
                        else:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(8 * ceil32(return_data.size)) + 160] = 26
                            mem[(8 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            mem[(8 * ceil32(return_data.size)) + 228] = 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                            require ext_code.size(cTokenAddress)
                            call cTokenAddress.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(11 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                        mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(11 * ceil32(return_data.size)) + 224] = 68
                        mem[(11 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor1)
                        mem[(11 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(11 * ceil32(return_data.size)) + 324] = 32
                        mem[(11 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(11 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                        mem[(11 * ceil32(return_data.size)) + 456] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                            mem[(11 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(11 * ceil32(return_data.size)) + 420] == bool(mem[(11 * ceil32(return_data.size)) + 420])
                                if not mem[(11 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.sender == ext_call.return_data[12 len 20]:
            mem[ceil32(return_data.size) + 100] = 0
            require ext_code.size(cTokenAddress)
            call cTokenAddress.mint(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 100] = cTokenAddress
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args cTokenAddress
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 96] = 68
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 196] = 32
                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                mem[(7 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                        if not mem[(7 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.exchangeRateStored() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    mem[(6 * ceil32(return_data.size)) + 96] = 26
                    mem[(6 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(6 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] <= 2:
                        mem[(7 * ceil32(return_data.size)) + 164] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                        mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 160] = 68
                        mem[(8 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                        mem[(8 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                        mem[(8 * ceil32(return_data.size)) + 260] = 32
                        mem[(8 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                        mem[(8 * ceil32(return_data.size)) + 392] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 356] == bool(mem[(8 * ceil32(return_data.size)) + 356])
                                if not mem[(8 * ceil32(return_data.size)) + 356]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if ext_call.return_data[0] <= (0 / ext_call.return_data[0]) - 1:
                            mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                            require ext_code.size(cTokenAddress)
                            call cTokenAddress.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + 164] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(10 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                            mem[(10 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                            mem[(10 * ceil32(return_data.size)) + 160] = 68
                            mem[(10 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                            mem[(10 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                            mem[(10 * ceil32(return_data.size)) + 260] = 32
                            mem[(10 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(10 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                            mem[(10 * ceil32(return_data.size)) + 392] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(10 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(10 * ceil32(return_data.size)) + 356] == bool(mem[(10 * ceil32(return_data.size)) + 356])
                                    if not mem[(10 * ceil32(return_data.size)) + 356]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            return 1
                        mem[(7 * ceil32(return_data.size)) + 164] = cTokenAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args cTokenAddress
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 164] = 0
                            require ext_code.size(cTokenAddress)
                            call cTokenAddress.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(10 * ceil32(return_data.size)) + 164] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                            mem[(11 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + 160] = 68
                            mem[(11 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                            mem[(11 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                            mem[(11 * ceil32(return_data.size)) + 260] = 32
                            mem[(11 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + 392] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(11 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + 356] == bool(mem[(11 * ceil32(return_data.size)) + 356])
                                    if not mem[(11 * ceil32(return_data.size)) + 356]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[(10 * ceil32(return_data.size)) + 160] = 26
                                mem[(10 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                mem[(10 * ceil32(return_data.size)) + 228] = 0 / ext_call.return_data[0]
                                require ext_code.size(cTokenAddress)
                                call cTokenAddress.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (0 / ext_call.return_data[0])
                            else:
                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[(10 * ceil32(return_data.size)) + 160] = 26
                                mem[(10 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                mem[(10 * ceil32(return_data.size)) + 228] = 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                                require ext_code.size(cTokenAddress)
                                call cTokenAddress.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + 228] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(11 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                            mem[(12 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                            mem[(12 * ceil32(return_data.size)) + 224] = 68
                            mem[(12 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor1)
                            mem[(12 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(12 * ceil32(return_data.size)) + 324] = 32
                            mem[(12 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(12 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                            mem[(12 * ceil32(return_data.size)) + 456] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(12 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(12 * ceil32(return_data.size)) + 420] == bool(mem[(12 * ceil32(return_data.size)) + 420])
                                    if not mem[(12 * ceil32(return_data.size)) + 420]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(6 * ceil32(return_data.size)) + 96] = 26
                    mem[(6 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(6 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 2:
                        mem[(7 * ceil32(return_data.size)) + 164] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                        mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 160] = 68
                        mem[(8 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                        mem[(8 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                        mem[(8 * ceil32(return_data.size)) + 260] = 32
                        mem[(8 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                        mem[(8 * ceil32(return_data.size)) + 392] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(8 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 356] == bool(mem[(8 * ceil32(return_data.size)) + 356])
                                if not mem[(8 * ceil32(return_data.size)) + 356]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if ext_call.return_data[0] <= (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 1:
                            mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                            require ext_code.size(cTokenAddress)
                            call cTokenAddress.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + 164] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(10 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                            mem[(10 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                            mem[(10 * ceil32(return_data.size)) + 160] = 68
                            mem[(10 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                            mem[(10 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                            mem[(10 * ceil32(return_data.size)) + 260] = 32
                            mem[(10 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(10 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                            mem[(10 * ceil32(return_data.size)) + 392] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(10 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(10 * ceil32(return_data.size)) + 356] == bool(mem[(10 * ceil32(return_data.size)) + 356])
                                    if not mem[(10 * ceil32(return_data.size)) + 356]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            return 1
                        mem[(7 * ceil32(return_data.size)) + 164] = cTokenAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args cTokenAddress
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 164] = 0
                            require ext_code.size(cTokenAddress)
                            call cTokenAddress.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(10 * ceil32(return_data.size)) + 164] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                            mem[(11 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + 160] = 68
                            mem[(11 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                            mem[(11 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                            mem[(11 * ceil32(return_data.size)) + 260] = 32
                            mem[(11 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + 392] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(11 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + 356] == bool(mem[(11 * ceil32(return_data.size)) + 356])
                                    if not mem[(11 * ceil32(return_data.size)) + 356]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[(10 * ceil32(return_data.size)) + 160] = 26
                                mem[(10 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                mem[(10 * ceil32(return_data.size)) + 228] = 0 / ext_call.return_data[0]
                                require ext_code.size(cTokenAddress)
                                call cTokenAddress.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (0 / ext_call.return_data[0])
                            else:
                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[(10 * ceil32(return_data.size)) + 160] = 26
                                mem[(10 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                mem[(10 * ceil32(return_data.size)) + 228] = 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                                require ext_code.size(cTokenAddress)
                                call cTokenAddress.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + 228] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(11 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                            mem[(12 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                            mem[(12 * ceil32(return_data.size)) + 224] = 68
                            mem[(12 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor1)
                            mem[(12 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(12 * ceil32(return_data.size)) + 324] = 32
                            mem[(12 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(12 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                            mem[(12 * ceil32(return_data.size)) + 456] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(12 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(12 * ceil32(return_data.size)) + 420] == bool(mem[(12 * ceil32(return_data.size)) + 420])
                                    if not mem[(12 * ceil32(return_data.size)) + 420]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).management() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!management'
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            require ext_code.size(cTokenAddress)
            call cTokenAddress.mint(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 100] = cTokenAddress
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args cTokenAddress
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(8 * ceil32(return_data.size)) + 132] = address(strategyAddress)
                mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 96] = 68
                mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 196] = 32
                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                mem[(8 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.exchangeRateStored() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    mem[(7 * ceil32(return_data.size)) + 96] = 26
                    mem[(7 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(7 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] <= 2:
                        mem[(8 * ceil32(return_data.size)) + 164] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                        mem[(10 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(10 * ceil32(return_data.size)) + 160] = 68
                        mem[(10 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                        mem[(10 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                        mem[(10 * ceil32(return_data.size)) + 260] = 32
                        mem[(10 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(10 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                        mem[(10 * ceil32(return_data.size)) + 392] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(10 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(10 * ceil32(return_data.size)) + 356] == bool(mem[(10 * ceil32(return_data.size)) + 356])
                                if not mem[(10 * ceil32(return_data.size)) + 356]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if ext_call.return_data[0] <= (0 / ext_call.return_data[0]) - 1:
                            mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                            require ext_code.size(cTokenAddress)
                            call cTokenAddress.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(10 * ceil32(return_data.size)) + 164] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                            mem[(11 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + 160] = 68
                            mem[(11 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                            mem[(11 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                            mem[(11 * ceil32(return_data.size)) + 260] = 32
                            mem[(11 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + 392] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(11 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + 356] == bool(mem[(11 * ceil32(return_data.size)) + 356])
                                    if not mem[(11 * ceil32(return_data.size)) + 356]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            return 1
                        mem[(8 * ceil32(return_data.size)) + 164] = cTokenAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args cTokenAddress
                        mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[(10 * ceil32(return_data.size)) + 164] = 0
                            require ext_code.size(cTokenAddress)
                            call cTokenAddress.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + 164] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(11 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                            mem[(12 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                            mem[(12 * ceil32(return_data.size)) + 160] = 68
                            mem[(12 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                            mem[(12 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                            mem[(12 * ceil32(return_data.size)) + 260] = 32
                            mem[(12 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(12 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                            mem[(12 * ceil32(return_data.size)) + 392] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(12 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(12 * ceil32(return_data.size)) + 356] == bool(mem[(12 * ceil32(return_data.size)) + 356])
                                    if not mem[(12 * ceil32(return_data.size)) + 356]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[(11 * ceil32(return_data.size)) + 160] = 26
                                mem[(11 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                mem[(11 * ceil32(return_data.size)) + 228] = 0 / ext_call.return_data[0]
                                require ext_code.size(cTokenAddress)
                                call cTokenAddress.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (0 / ext_call.return_data[0])
                            else:
                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[(11 * ceil32(return_data.size)) + 160] = 26
                                mem[(11 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                mem[(11 * ceil32(return_data.size)) + 228] = 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                                require ext_code.size(cTokenAddress)
                                call cTokenAddress.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                            mem[(11 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + 228] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(12 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(13 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                            mem[(13 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                            mem[(13 * ceil32(return_data.size)) + 224] = 68
                            mem[(13 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor1)
                            mem[(13 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(13 * ceil32(return_data.size)) + 324] = 32
                            mem[(13 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(13 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                            mem[(13 * ceil32(return_data.size)) + 456] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(13 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(13 * ceil32(return_data.size)) + 420] == bool(mem[(13 * ceil32(return_data.size)) + 420])
                                    if not mem[(13 * ceil32(return_data.size)) + 420]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(7 * ceil32(return_data.size)) + 96] = 26
                    mem[(7 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(7 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 2:
                        mem[(8 * ceil32(return_data.size)) + 164] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                        mem[(10 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(10 * ceil32(return_data.size)) + 160] = 68
                        mem[(10 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                        mem[(10 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                        mem[(10 * ceil32(return_data.size)) + 260] = 32
                        mem[(10 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(10 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                        mem[(10 * ceil32(return_data.size)) + 392] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(10 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(10 * ceil32(return_data.size)) + 356] == bool(mem[(10 * ceil32(return_data.size)) + 356])
                                if not mem[(10 * ceil32(return_data.size)) + 356]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if ext_call.return_data[0] <= (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 1:
                            mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                            require ext_code.size(cTokenAddress)
                            call cTokenAddress.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(10 * ceil32(return_data.size)) + 164] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                            mem[(11 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + 160] = 68
                            mem[(11 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                            mem[(11 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                            mem[(11 * ceil32(return_data.size)) + 260] = 32
                            mem[(11 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + 392] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(11 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + 356] == bool(mem[(11 * ceil32(return_data.size)) + 356])
                                    if not mem[(11 * ceil32(return_data.size)) + 356]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            return 1
                        mem[(8 * ceil32(return_data.size)) + 164] = cTokenAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args cTokenAddress
                        mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[(10 * ceil32(return_data.size)) + 164] = 0
                            require ext_code.size(cTokenAddress)
                            call cTokenAddress.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + 164] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(11 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                            mem[(12 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                            mem[(12 * ceil32(return_data.size)) + 160] = 68
                            mem[(12 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                            mem[(12 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                            mem[(12 * ceil32(return_data.size)) + 260] = 32
                            mem[(12 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(12 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                            mem[(12 * ceil32(return_data.size)) + 392] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(12 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(12 * ceil32(return_data.size)) + 356] == bool(mem[(12 * ceil32(return_data.size)) + 356])
                                    if not mem[(12 * ceil32(return_data.size)) + 356]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[(10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[(11 * ceil32(return_data.size)) + 160] = 26
                                mem[(11 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                mem[(11 * ceil32(return_data.size)) + 228] = 0 / ext_call.return_data[0]
                                require ext_code.size(cTokenAddress)
                                call cTokenAddress.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (0 / ext_call.return_data[0])
                            else:
                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[(11 * ceil32(return_data.size)) + 160] = 26
                                mem[(11 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                mem[(11 * ceil32(return_data.size)) + 228] = 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                                require ext_code.size(cTokenAddress)
                                call cTokenAddress.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                            mem[(11 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + 228] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(12 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(13 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                            mem[(13 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                            mem[(13 * ceil32(return_data.size)) + 224] = 68
                            mem[(13 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor1)
                            mem[(13 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                            mem[(13 * ceil32(return_data.size)) + 324] = 32
                            mem[(13 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(13 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                            mem[(13 * ceil32(return_data.size)) + 456] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(13 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(13 * ceil32(return_data.size)) + 420] == bool(mem[(13 * ceil32(return_data.size)) + 420])
                                    if not mem[(13 * ceil32(return_data.size)) + 420]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return 0
}



}
