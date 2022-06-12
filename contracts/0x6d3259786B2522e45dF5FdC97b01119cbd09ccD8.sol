contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const scream = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const PERCENT_DIVISOR = 10000

const BORROW_DEPTH_MAX = 10

const MAX_FEE = 500


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
address tokenAddress;
uint32 stor2;
address sub_a7836e36Address;
uint256 stor2;
address comptrollerAddress;
uint32 stor4;
address uniRouterAddress;
uint256 stor4;
array of address sub_63ea6bbd;
array of address sub_24ef8d1e;
array of address markets;
uint256 callFee;
uint256 treasuryFee;
uint256 sub_d68e1302;
uint256 totalFee;
address treasuryAddress;
uint32 stor13;
address vaultAddress;
uint256 stor13;
uint256 borrowRate;
uint256 borrowRateMax;
uint256 borrowDepth;
uint256 minLeverage;
uint256 reserves;
uint256 balanceOfPool;
mapping of uint8 stor20;

function borrowRateMax() payable {
    return borrowRateMax
}

function balanceOfPool() payable {
    return balanceOfPool
}

function totalFee() payable {
    return totalFee
}

function minLeverage() payable {
    return minLeverage
}

function sub_24ef8d1e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_24ef8d1e.length
    return sub_24ef8d1e[arg1]
}

function paused() payable {
    return bool(paused)
}

function comptroller() payable {
    return comptrollerAddress
}

function treasury() payable {
    return treasuryAddress
}

function sub_63ea6bbd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_63ea6bbd.length
    return sub_63ea6bbd[arg1]
}

function reserves() payable {
    return reserves
}

function owner() payable {
    return owner
}

function callFee() payable {
    return callFee
}

function borrowDepth() payable {
    return borrowDepth
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function uniRouter() payable {
    return address(uniRouterAddress)
}

function sub_a7836e36(?) payable {
    return address(sub_a7836e36Address)
}

function markets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < markets.length
    return markets[arg1]
}

function borrowRate() payable {
    return borrowRate
}

function treasuryFee() payable {
    return treasuryFee
}

function sub_d68e1302(?) payable {
    return sub_d68e1302
}

function vault() payable {
    return address(vaultAddress)
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
    return 1
}

function addOrRemoveFromWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20[address(arg1)] = uint8(arg2)
}

function sub_d32b9604(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0, 'Fee Too High'
    totalFee = arg1
    emit 0x2e59d502: totalFee
    return 1
}

function sub_f88fb689(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    callFee = arg1
    if callFee > 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    treasuryFee = -callFee + 10000
    emit 0x6a730aa6: callFee, treasuryFee
    return 1
}

function balanceOfWant() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function availableWant() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - reserves)
}

function balanceOf() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + balanceOfPool < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] + balanceOfPool)
}

function transferOwnership(address arg1) payable {
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

function updateBalance() payable {
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOfPool = 0
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = 160
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - reserves > 0:
        if ext_call.return_data[0] - reserves >= minLeverage:
            idx = 0
            s = ext_call.return_data[0] - reserves
            while idx < borrowDepth:
                require ext_code.size(address(sub_a7836e36Address))
                call address(sub_a7836e36Address).mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not s:
                    _66 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_66] = 26
                    mem[_66 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(address(sub_a7836e36Address))
                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = 0
                    continue 
                require s
                if s * borrowRate / s != borrowRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _70 = mem[64]
                mem[64] = mem[64] + 64
                mem[_70] = 26
                mem[_70 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = s * borrowRate / 100
                require ext_code.size(address(sub_a7836e36Address))
                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args (s * borrowRate / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s * borrowRate / 100
                continue 
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOfPool = 0
}

function deleverageOnce(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > borrowRateMax:
        revert with 0, '!safe'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (0 / arg1))
    else:
        require ext_call.return_data[0]
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 100 * ext_call.return_data[0] / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / arg1))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserves = ext_call.return_data[0]
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOfPool = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
    call tokenAddress with:
       funct uint32(stor2)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
        call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
        call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function retireStrat() payable {
    mem[64] = 96
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = this.address
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = mem[mem[64]]
    t = ext_call.return_data[0]
    while t < s:
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).repayBorrow(uint256 arg1) with:
             gas gas_remaining wei
            args t
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_137] = 26
            mem[_137 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _143 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_143 + idx + 68] = mem[_137 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_143 + 68] = mem[_143 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _143 + -mem[64] + 100
            require borrowRate
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _170 = mem[64]
            mem[64] = mem[64] + 64
            mem[_170] = 30
            mem[_170 + 32] = 'SafeMath: subtraction overflow'
            if 0 / borrowRate > ext_call.return_data[0]:
                _176 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_176 + idx + 68] = mem[_170 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_176 + 68] = mem[_176 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _176 + -mem[64] + 100
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (0 / borrowRate))
        else:
            require ext_call.return_data[0]
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _142 = mem[64]
            mem[64] = mem[64] + 64
            mem[_142] = 26
            mem[_142 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _147 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_147 + idx + 68] = mem[_142 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_147 + 68] = mem[_147 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _147 + -mem[64] + 100
            require borrowRate
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_175] = 30
            mem[_175 + 32] = 'SafeMath: subtraction overflow'
            if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                _182 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_182 + idx + 68] = mem[_175 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_182 + 68] = mem[_182 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _182 + -mem[64] + 100
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    staticcall address(sub_a7836e36Address).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserves = 0
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOfPool = 0
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function rebalance(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = 20
    if bool(stor20[address(msg.sender)]) != 1:
        revert with 0, 'You are not whitelisted'
    if arg1 > borrowRateMax:
        revert with 0, '!rate'
    if arg2 > 10:
        revert with 0, '!depth'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = this.address
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = mem[mem[64]]
    t = ext_call.return_data[0]
    while t < s:
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).repayBorrow(uint256 arg1) with:
             gas gas_remaining wei
            args t
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 26
            mem[_174 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _180 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_180 + idx + 68] = mem[_174 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_180 + 68] = mem[_180 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _180 + -mem[64] + 100
            require borrowRate
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _207 = mem[64]
            mem[64] = mem[64] + 64
            mem[_207] = 30
            mem[_207 + 32] = 'SafeMath: subtraction overflow'
            if 0 / borrowRate > ext_call.return_data[0]:
                _213 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_213 + idx + 68] = mem[_207 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_213 + 68] = mem[_213 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _213 + -mem[64] + 100
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (0 / borrowRate))
        else:
            require ext_call.return_data[0]
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _179 = mem[64]
            mem[64] = mem[64] + 64
            mem[_179] = 26
            mem[_179 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _184 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_184 + idx + 68] = mem[_179 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_184 + 68] = mem[_184 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _184 + -mem[64] + 100
            require borrowRate
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _212 = mem[64]
            mem[64] = mem[64] + 64
            mem[_212] = 30
            mem[_212 + 32] = 'SafeMath: subtraction overflow'
            if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                _219 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_219 + idx + 68] = mem[_212 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_219 + 68] = mem[_219 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _219 + -mem[64] + 100
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    staticcall address(sub_a7836e36Address).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserves = 0
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _193 = mem[64]
    mem[64] = mem[64] + 64
    mem[_193] = 30
    mem[_193 + 32] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOfPool = 0
    borrowRate = arg1
    borrowDepth = arg2
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= minLeverage:
        idx = 0
        s = mem[mem[64]]
        while idx < borrowDepth:
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not s:
                _319 = mem[64]
                mem[64] = mem[64] + 64
                mem[_319] = 26
                mem[_319 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(address(sub_a7836e36Address))
                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = 0
                continue 
            require s
            if s * borrowRate / s != borrowRate:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _323 = mem[64]
            mem[64] = mem[64] + 64
            mem[_323] = 26
            mem[_323 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = s * borrowRate / 100
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                 gas gas_remaining wei
                args (s * borrowRate / 100)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = s * borrowRate / 100
            continue 
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOfPool = 0
    emit StratRebalance(arg1, arg2);
}

function panic() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = this.address
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = mem[mem[64]]
    t = ext_call.return_data[0]
    while t < s:
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).repayBorrow(uint256 arg1) with:
             gas gas_remaining wei
            args t
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _340 = mem[64]
            mem[64] = mem[64] + 64
            mem[_340] = 26
            mem[_340 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _346 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_346 + idx + 68] = mem[_340 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_346 + 68] = mem[_346 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _346 + -mem[64] + 100
            require borrowRate
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _373 = mem[64]
            mem[64] = mem[64] + 64
            mem[_373] = 30
            mem[_373 + 32] = 'SafeMath: subtraction overflow'
            if 0 / borrowRate > ext_call.return_data[0]:
                _379 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_379 + idx + 68] = mem[_373 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_379 + 68] = mem[_379 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _379 + -mem[64] + 100
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (0 / borrowRate))
        else:
            require ext_call.return_data[0]
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _345 = mem[64]
            mem[64] = mem[64] + 64
            mem[_345] = 26
            mem[_345 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _350 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_350 + idx + 68] = mem[_345 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_350 + 68] = mem[_350 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _350 + -mem[64] + 100
            require borrowRate
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _378 = mem[64]
            mem[64] = mem[64] + 64
            mem[_378] = 30
            mem[_378 + 32] = 'SafeMath: subtraction overflow'
            if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                _383 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_383 + idx + 68] = mem[_378 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_383 + 68] = mem[_383 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _383 + -mem[64] + 100
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    staticcall address(sub_a7836e36Address).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserves = 0
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_a7836e36Address))
    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _359 = mem[64]
    mem[64] = mem[64] + 64
    mem[_359] = 30
    mem[_359 + 32] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOfPool = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    _416 = mem[64]
    mem[mem[64] + 36] = address(sub_a7836e36Address)
    mem[mem[64] + 68] = 0
    _417 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
    mem[64] = mem[64] + 164
    mem[_416 + 100] = 32
    mem[_416 + 132] = 'SafeERC20: low-level call failed'
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    _421 = mem[_417]
    mem[_416 + 164 len floor32(mem[_417])] = mem[_417 + 32 len floor32(mem[_417])]
    mem[_416 + floor32(mem[_417]) + -(mem[_417] % 32) + 196 len mem[_417] % 32] = mem[_417 + -(mem[_417] % 32) + floor32(mem[_417]) + 64 len mem[_417] % 32]
    call tokenAddress.mem[_416 + 164 len 4] with:
         gas gas_remaining wei
        args mem[_416 + 168 len _421 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96] > 0:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[_416 + 274 len 22]
        mem[_416 + 200] = address(uniRouterAddress)
        mem[_416 + 232] = 0
        mem[_416 + 164] = 68
        mem[_416 + 200 len 28] = Mask(224, 0, stor4)
        mem[_416 + 196 len 4] = approve(address arg1, uint256 arg2)
        mem[_416 + 264] = 32
        mem[_416 + 296] = 'SafeERC20: low-level call failed'
        if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[_416 + 328 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
        mem[_416 + 420 len 4] = 0
        call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0, mem[_416 + 392 len 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_416 + 438 len 22]
        else:
            mem[_416 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_416 + 360]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_416 + ceil32(return_data.size) + 439 len 22]
    else:
        mem[_416 + 164] = return_data.size
        mem[_416 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[_416 + 196]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[_416 + ceil32(return_data.size) + 275 len 22]
        mem[_416 + ceil32(return_data.size) + 201] = address(uniRouterAddress)
        mem[_416 + ceil32(return_data.size) + 233] = 0
        mem[_416 + ceil32(return_data.size) + 165] = 68
        mem[_416 + ceil32(return_data.size) + 201 len 28] = Mask(224, 0, stor4)
        mem[_416 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
        mem[_416 + ceil32(return_data.size) + 265] = 32
        mem[_416 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[_416 + ceil32(return_data.size) + 329 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
        mem[_416 + ceil32(return_data.size) + 421 len 4] = 0
        call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0, mem[_416 + ceil32(return_data.size) + 393 len 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_416 + ceil32(return_data.size) + 439 len 22]
        else:
            mem[_416 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_416 + ceil32(return_data.size) + 361]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_416 + (2 * ceil32(return_data.size)) + 440 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(sub_a7836e36Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    mem[196] = 32
    mem[228] = 'SafeERC20: low-level call failed'
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[352 len 4] = 0
    call tokenAddress with:
       funct uint32(stor2)
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(uniRouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        mem[296] = address(uniRouterAddress)
        mem[328] = -1
        mem[260] = 68
        mem[296 len 28] = Mask(224, 0, stor4)
        mem[292 len 4] = approve(address arg1, uint256 arg2)
        mem[360] = 32
        mem[392] = 'SafeERC20: low-level call failed'
        if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[516 len 4] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
            staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(uniRouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[546 len 10]
            mem[460] = address(uniRouterAddress)
            mem[492] = -1
            mem[424] = 68
            mem[460 len 28] = Mask(224, 0, stor4)
            mem[456 len 4] = approve(address arg1, uint256 arg2)
            mem[524] = 32
            mem[556] = 'SafeERC20: low-level call failed'
            if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[680 len 4] = 0
            call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                if paused:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[64] = 652
                mem[588] = 30
                mem[620] = 'SafeMath: subtraction overflow'
                if reserves > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - reserves > 0:
                    if ext_call.return_data[0] - reserves >= minLeverage:
                        idx = 0
                        s = ext_call.return_data[0] - reserves
                        while idx < borrowDepth:
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not s:
                                _16518 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_16518] = 26
                                mem[_16518 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _16690 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16690] = 26
                            mem[_16690 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(address(sub_a7836e36Address))
                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sub_a7836e36Address))
                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOfPool = 0
            else:
                mem[588] = return_data.size
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if paused:
                        revert with 0, 'Pausable: paused'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = ceil32(return_data.size) + 653
                    mem[ceil32(return_data.size) + 589] = 30
                    mem[ceil32(return_data.size) + 621] = 'SafeMath: subtraction overflow'
                    if reserves > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - reserves > 0:
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = ext_call.return_data[0] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    _16520 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16520] = 26
                                    mem[_16520 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = 0
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _16694 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_16694] = 26
                                mem[_16694 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = s * borrowRate / 100
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
                else:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                    if paused:
                        revert with 0, 'Pausable: paused'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = ceil32(return_data.size) + 653
                    mem[ceil32(return_data.size) + 589] = 30
                    mem[ceil32(return_data.size) + 621] = 'SafeMath: subtraction overflow'
                    if reserves > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - reserves > 0:
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = ext_call.return_data[0] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    _16522 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16522] = 26
                                    mem[_16522 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = 0
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _16698 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_16698] = 26
                                mem[_16698 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = s * borrowRate / 100
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
        else:
            mem[424] = return_data.size
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
                staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(uniRouterAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 547 len 10]
                mem[ceil32(return_data.size) + 461] = address(uniRouterAddress)
                mem[ceil32(return_data.size) + 493] = -1
                mem[ceil32(return_data.size) + 425] = 68
                mem[ceil32(return_data.size) + 461 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 457 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 525] = 32
                mem[ceil32(return_data.size) + 557] = 'SafeERC20: low-level call failed'
                if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 681 len 4] = 0
                call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                    if paused:
                        revert with 0, 'Pausable: paused'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = ceil32(return_data.size) + 653
                    mem[ceil32(return_data.size) + 589] = 30
                    mem[ceil32(return_data.size) + 621] = 'SafeMath: subtraction overflow'
                    if reserves > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - reserves > 0:
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = ext_call.return_data[0] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    _16526 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16526] = 26
                                    mem[_16526 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = 0
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _16706 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_16706] = 26
                                mem[_16706 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = s * borrowRate / 100
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
                else:
                    mem[ceil32(return_data.size) + 589] = return_data.size
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if paused:
                            revert with 0, 
                                        'Pausable: paused',
                                        mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address), mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = (2 * ceil32(return_data.size)) + 654
                        mem[(2 * ceil32(return_data.size)) + 590] = 30
                        mem[(2 * ceil32(return_data.size)) + 622] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves > 0:
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _16528 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16528] = 26
                                        mem[_16528 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _16710 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16710] = 26
                                    mem[_16710 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if paused:
                            revert with 0, 
                                        'Pausable: paused',
                                        mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address), mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = (2 * ceil32(return_data.size)) + 654
                        mem[(2 * ceil32(return_data.size)) + 590] = 30
                        mem[(2 * ceil32(return_data.size)) + 622] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves > 0:
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _16530 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16530] = 26
                                        mem[_16530 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _16714 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16714] = 26
                                    mem[_16714 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
            else:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
                staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(uniRouterAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 547 len 10]
                mem[ceil32(return_data.size) + 461] = address(uniRouterAddress)
                mem[ceil32(return_data.size) + 493] = -1
                mem[ceil32(return_data.size) + 425] = 68
                mem[ceil32(return_data.size) + 461 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 457 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 525] = 32
                mem[ceil32(return_data.size) + 557] = 'SafeERC20: low-level call failed'
                if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 681 len 4] = 0
                call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                    if paused:
                        revert with 0, 'Pausable: paused'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = ceil32(return_data.size) + 653
                    mem[ceil32(return_data.size) + 589] = 30
                    mem[ceil32(return_data.size) + 621] = 'SafeMath: subtraction overflow'
                    if reserves > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - reserves > 0:
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = ext_call.return_data[0] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    _16534 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16534] = 26
                                    mem[_16534 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = 0
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _16722 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_16722] = 26
                                mem[_16722 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = s * borrowRate / 100
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
                else:
                    mem[ceil32(return_data.size) + 589] = return_data.size
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if paused:
                            revert with 0, 
                                        'Pausable: paused',
                                        mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address), mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = (2 * ceil32(return_data.size)) + 654
                        mem[(2 * ceil32(return_data.size)) + 590] = 30
                        mem[(2 * ceil32(return_data.size)) + 622] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves > 0:
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _16536 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16536] = 26
                                        mem[_16536 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _16726 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16726] = 26
                                    mem[_16726 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if paused:
                            revert with 0, 
                                        'Pausable: paused',
                                        mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address), mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = (2 * ceil32(return_data.size)) + 654
                        mem[(2 * ceil32(return_data.size)) + 590] = 30
                        mem[(2 * ceil32(return_data.size)) + 622] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves > 0:
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _16538 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16538] = 26
                                        mem[_16538 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _16730 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16730] = 26
                                    mem[_16730 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
    else:
        mem[260] = return_data.size
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(uniRouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            mem[ceil32(return_data.size) + 297] = address(uniRouterAddress)
            mem[ceil32(return_data.size) + 329] = -1
            mem[ceil32(return_data.size) + 261] = 68
            mem[ceil32(return_data.size) + 297 len 28] = Mask(224, 0, stor4)
            mem[ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 361] = 32
            mem[ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
                staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(uniRouterAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 547 len 10]
                mem[ceil32(return_data.size) + 461] = address(uniRouterAddress)
                mem[ceil32(return_data.size) + 493] = -1
                mem[ceil32(return_data.size) + 425] = 68
                mem[ceil32(return_data.size) + 461 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 457 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 525] = 32
                mem[ceil32(return_data.size) + 557] = 'SafeERC20: low-level call failed'
                if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 681 len 4] = 0
                call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                    if paused:
                        revert with 0, 'Pausable: paused'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = ceil32(return_data.size) + 653
                    mem[ceil32(return_data.size) + 589] = 30
                    mem[ceil32(return_data.size) + 621] = 'SafeMath: subtraction overflow'
                    if reserves > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - reserves > 0:
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = ext_call.return_data[0] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    _16550 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16550] = 26
                                    mem[_16550 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = 0
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _16754 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_16754] = 26
                                mem[_16754 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = s * borrowRate / 100
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
                else:
                    mem[ceil32(return_data.size) + 589] = return_data.size
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if paused:
                            revert with 0, 
                                        'Pausable: paused',
                                        mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address), mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = (2 * ceil32(return_data.size)) + 654
                        mem[(2 * ceil32(return_data.size)) + 590] = 30
                        mem[(2 * ceil32(return_data.size)) + 622] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves > 0:
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _16552 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16552] = 26
                                        mem[_16552 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _16758 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16758] = 26
                                    mem[_16758 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if paused:
                            revert with 0, 
                                        'Pausable: paused',
                                        mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address), mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = (2 * ceil32(return_data.size)) + 654
                        mem[(2 * ceil32(return_data.size)) + 590] = 30
                        mem[(2 * ceil32(return_data.size)) + 622] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves > 0:
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _16554 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16554] = 26
                                        mem[_16554 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _16762 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16762] = 26
                                    mem[_16762 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
            else:
                mem[ceil32(return_data.size) + 425] = return_data.size
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
                    staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(uniRouterAddress), mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + 548 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
                    mem[(2 * ceil32(return_data.size)) + 462] = address(uniRouterAddress)
                    mem[(2 * ceil32(return_data.size)) + 494] = -1
                    mem[(2 * ceil32(return_data.size)) + 426] = (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68
                    mem[(2 * ceil32(return_data.size)) + 462 len 28] = Mask(224, 0, stor4)
                    mem[(2 * ceil32(return_data.size)) + 458 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 526] = 32
                    mem[(2 * ceil32(return_data.size)) + 558] = 'SafeERC20: low-level call failed'
                    if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + -((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + 622 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32] = Mask(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 32) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
                       funct uint32(stor4), mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
                        if paused:
                            revert with 0, 'Pausable: paused'
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = (2 * ceil32(return_data.size)) + 654
                        mem[(2 * ceil32(return_data.size)) + 590] = 30
                        mem[(2 * ceil32(return_data.size)) + 622] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves > 0:
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _16558 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16558] = 26
                                        mem[_16558 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _16770 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16770] = 26
                                    mem[_16770 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 590] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if paused:
                                revert with 0, 'Pausable: paused'
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591] = 30
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves > 0:
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _16560 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_16560] = 26
                                            mem[_16560 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _16774 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16774] = 26
                                        mem[_16774 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                        else:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
                            if paused:
                                revert with 0, 'Pausable: paused'
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591] = 30
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves > 0:
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _16562 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_16562] = 26
                                            mem[_16562 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _16778 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16778] = 26
                                        mem[_16778 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                else:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
                    staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(uniRouterAddress), mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + 548 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
                    mem[(2 * ceil32(return_data.size)) + 462] = address(uniRouterAddress)
                    mem[(2 * ceil32(return_data.size)) + 494] = -1
                    mem[(2 * ceil32(return_data.size)) + 426] = (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68
                    mem[(2 * ceil32(return_data.size)) + 462 len 28] = Mask(224, 0, stor4)
                    mem[(2 * ceil32(return_data.size)) + 458 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 526] = 32
                    mem[(2 * ceil32(return_data.size)) + 558] = 'SafeERC20: low-level call failed'
                    if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + -((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + 622 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32] = Mask(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 32) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
                       funct uint32(stor4), mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
                        if paused:
                            revert with 0, 'Pausable: paused'
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = (2 * ceil32(return_data.size)) + 654
                        mem[(2 * ceil32(return_data.size)) + 590] = 30
                        mem[(2 * ceil32(return_data.size)) + 622] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves > 0:
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _16566 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16566] = 26
                                        mem[_16566 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _16786 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16786] = 26
                                    mem[_16786 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 590] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if paused:
                                revert with 0, 'Pausable: paused'
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591] = 30
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves > 0:
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _16568 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_16568] = 26
                                            mem[_16568 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _16790 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16790] = 26
                                        mem[_16790 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                        else:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
                            if paused:
                                revert with 0, 'Pausable: paused'
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591] = 30
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves > 0:
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _16570 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_16570] = 26
                                            mem[_16570 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _16794 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16794] = 26
                                        mem[_16794 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(uniRouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            mem[ceil32(return_data.size) + 297] = address(uniRouterAddress)
            mem[ceil32(return_data.size) + 329] = -1
            mem[ceil32(return_data.size) + 261] = 68
            mem[ceil32(return_data.size) + 297 len 28] = Mask(224, 0, stor4)
            mem[ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 361] = 32
            mem[ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
                staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(uniRouterAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 547 len 10]
                mem[ceil32(return_data.size) + 461] = address(uniRouterAddress)
                mem[ceil32(return_data.size) + 493] = -1
                mem[ceil32(return_data.size) + 425] = 68
                mem[ceil32(return_data.size) + 461 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 457 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 525] = 32
                mem[ceil32(return_data.size) + 557] = 'SafeERC20: low-level call failed'
                if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 681 len 4] = 0
                call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                    if paused:
                        revert with 0, 'Pausable: paused'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = ceil32(return_data.size) + 653
                    mem[ceil32(return_data.size) + 589] = 30
                    mem[ceil32(return_data.size) + 621] = 'SafeMath: subtraction overflow'
                    if reserves > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - reserves > 0:
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = ext_call.return_data[0] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    _16582 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16582] = 26
                                    mem[_16582 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = 0
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _16818 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_16818] = 26
                                mem[_16818 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = s * borrowRate / 100
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
                else:
                    mem[ceil32(return_data.size) + 589] = return_data.size
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if paused:
                            revert with 0, 
                                        'Pausable: paused',
                                        mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address), mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = (2 * ceil32(return_data.size)) + 654
                        mem[(2 * ceil32(return_data.size)) + 590] = 30
                        mem[(2 * ceil32(return_data.size)) + 622] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves > 0:
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _16584 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16584] = 26
                                        mem[_16584 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _16822 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16822] = 26
                                    mem[_16822 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if paused:
                            revert with 0, 
                                        'Pausable: paused',
                                        mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address), mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = (2 * ceil32(return_data.size)) + 654
                        mem[(2 * ceil32(return_data.size)) + 590] = 30
                        mem[(2 * ceil32(return_data.size)) + 622] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves > 0:
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _16586 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16586] = 26
                                        mem[_16586 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _16826 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16826] = 26
                                    mem[_16826 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
            else:
                mem[ceil32(return_data.size) + 425] = return_data.size
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
                    staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(uniRouterAddress), mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + 548 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
                    mem[(2 * ceil32(return_data.size)) + 462] = address(uniRouterAddress)
                    mem[(2 * ceil32(return_data.size)) + 494] = -1
                    mem[(2 * ceil32(return_data.size)) + 426] = (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68
                    mem[(2 * ceil32(return_data.size)) + 462 len 28] = Mask(224, 0, stor4)
                    mem[(2 * ceil32(return_data.size)) + 458 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 526] = 32
                    mem[(2 * ceil32(return_data.size)) + 558] = 'SafeERC20: low-level call failed'
                    if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + -((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + 622 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32] = Mask(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 32) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
                       funct uint32(stor4), mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
                        if paused:
                            revert with 0, 'Pausable: paused'
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = (2 * ceil32(return_data.size)) + 654
                        mem[(2 * ceil32(return_data.size)) + 590] = 30
                        mem[(2 * ceil32(return_data.size)) + 622] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves > 0:
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _16590 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16590] = 26
                                        mem[_16590 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _16834 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16834] = 26
                                    mem[_16834 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 590] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if paused:
                                revert with 0, 'Pausable: paused'
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591] = 30
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves > 0:
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _16592 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_16592] = 26
                                            mem[_16592 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _16838 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16838] = 26
                                        mem[_16838 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                        else:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
                            if paused:
                                revert with 0, 'Pausable: paused'
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591] = 30
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves > 0:
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _16594 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_16594] = 26
                                            mem[_16594 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _16842 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16842] = 26
                                        mem[_16842 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                else:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
                    staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(uniRouterAddress), mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + 548 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
                    mem[(2 * ceil32(return_data.size)) + 462] = address(uniRouterAddress)
                    mem[(2 * ceil32(return_data.size)) + 494] = -1
                    mem[(2 * ceil32(return_data.size)) + 426] = (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68
                    mem[(2 * ceil32(return_data.size)) + 462 len 28] = Mask(224, 0, stor4)
                    mem[(2 * ceil32(return_data.size)) + 458 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 526] = 32
                    mem[(2 * ceil32(return_data.size)) + 558] = 'SafeERC20: low-level call failed'
                    if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + -((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + 622 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32] = Mask(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 32) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
                       funct uint32(stor4), mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
                        if paused:
                            revert with 0, 'Pausable: paused'
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = (2 * ceil32(return_data.size)) + 654
                        mem[(2 * ceil32(return_data.size)) + 590] = 30
                        mem[(2 * ceil32(return_data.size)) + 622] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves > 0:
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _16598 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16598] = 26
                                        mem[_16598 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _16850 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16850] = 26
                                    mem[_16850 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 590] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if paused:
                                revert with 0, 'Pausable: paused'
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591] = 30
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves > 0:
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _16600 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_16600] = 26
                                            mem[_16600 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _16854 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16854] = 26
                                        mem[_16854 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                        else:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
                            if paused:
                                revert with 0, 'Pausable: paused'
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591] = 30
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves > 0:
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _16602 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_16602] = 26
                                            mem[_16602 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _16858 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_16858] = 26
                                        mem[_16858 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = 160
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - reserves >= arg1:
        if ext_call.return_data[0] - reserves <= arg1:
            if tx.origin == owner:
                mem[196] = address(vaultAddress)
                mem[228] = ext_call.return_data[0] - reserves
                mem[196 len 28] = Mask(224, 0, stor13)
                mem[260] = 32
                mem[292] = 'SafeERC20: low-level call failed'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                mem[416 len 4] = 0
                call tokenAddress with:
                   funct uint32(stor13)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - reserves) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[324] = return_data.size
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if not paused:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = ceil32(return_data.size) + 389
                        mem[ceil32(return_data.size) + 325] = 30
                        mem[ceil32(return_data.size) + 357] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = ext_call.return_data[0] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    _8120 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8120] = 26
                                    mem[_8120 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = 0
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _8254 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8254] = 26
                                mem[_8254 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = s * borrowRate / 100
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if not paused:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = ceil32(return_data.size) + 389
                        mem[ceil32(return_data.size) + 325] = 30
                        mem[ceil32(return_data.size) + 357] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = ext_call.return_data[0] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    _8122 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8122] = 26
                                    mem[_8122 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = 0
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _8258 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8258] = 26
                                mem[_8258 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = s * borrowRate / 100
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
            else:
                if paused:
                    mem[196] = address(vaultAddress)
                    mem[228] = ext_call.return_data[0] - reserves
                    mem[196 len 28] = Mask(224, 0, stor13)
                    mem[260] = 32
                    mem[292] = 'SafeERC20: low-level call failed'
                    if ext_code.size(tokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                    mem[416 len 4] = 0
                    call tokenAddress with:
                       funct uint32(stor13)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - reserves) << 224, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[324] = return_data.size
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if not paused:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = ceil32(return_data.size) + 389
                            mem[ceil32(return_data.size) + 325] = 30
                            mem[ceil32(return_data.size) + 357] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _8144 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8144] = 26
                                        mem[_8144 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _8302 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8302] = 26
                                    mem[_8302 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                        if not paused:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = ceil32(return_data.size) + 389
                            mem[ceil32(return_data.size) + 325] = 30
                            mem[ceil32(return_data.size) + 357] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _8146 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8146] = 26
                                        mem[_8146 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _8306 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8306] = 26
                                    mem[_8306 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                else:
                    if not ext_call.return_data[0] - reserves:
                        mem[192] = 'SafeMath: division by zero'
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if 0 > ext_call.return_data[0] - reserves:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[324] = address(vaultAddress)
                        mem[356] = ext_call.return_data[0] - reserves
                        mem[288] = 68
                        mem[324 len 28] = Mask(224, 0, stor13)
                        mem[320 len 4] = transfer(address arg1, uint256 arg2)
                        mem[388] = 32
                        mem[420] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                        mem[544 len 4] = 0
                        call tokenAddress with:
                           funct uint32(stor13)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - reserves) << 224, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452] = return_data.size
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = ceil32(return_data.size) + 517
                                mem[ceil32(return_data.size) + 453] = 30
                                mem[ceil32(return_data.size) + 485] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _8136 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8136] = 26
                                            mem[_8136 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _8286 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8286] = 26
                                        mem[_8286 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                        else:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = ceil32(return_data.size) + 517
                                mem[ceil32(return_data.size) + 453] = 30
                                mem[ceil32(return_data.size) + 485] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _8138 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8138] = 26
                                            mem[_8138 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _8290 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8290] = 26
                                        mem[_8290 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                    else:
                        require ext_call.return_data[0] - reserves
                        if (ext_call.return_data[0] * sub_d68e1302) - (reserves * sub_d68e1302) / ext_call.return_data[0] - reserves != sub_d68e1302:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        mem[192] = 'SafeMath: division by zero'
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if (ext_call.return_data[0] * sub_d68e1302) - (reserves * sub_d68e1302) / 10000 > ext_call.return_data[0] - reserves:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[324] = address(vaultAddress)
                        mem[356] = ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * sub_d68e1302) - (reserves * sub_d68e1302) / 10000)
                        mem[288] = 68
                        mem[324 len 28] = Mask(224, 0, stor13)
                        mem[320 len 4] = transfer(address arg1, uint256 arg2)
                        mem[388] = 32
                        mem[420] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), Mask(224, 32, ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * sub_d68e1302) - (reserves * sub_d68e1302) / 10000)) >> 32
                        mem[544 len 4] = 0
                        call tokenAddress with:
                           funct uint32(stor13)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * sub_d68e1302) - (reserves * sub_d68e1302) / 10000)) << 224, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452] = return_data.size
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = ceil32(return_data.size) + 517
                                mem[ceil32(return_data.size) + 453] = 30
                                mem[ceil32(return_data.size) + 485] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _8128 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8128] = 26
                                            mem[_8128 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _8270 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8270] = 26
                                        mem[_8270 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                        else:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = ceil32(return_data.size) + 517
                                mem[ceil32(return_data.size) + 453] = 30
                                mem[ceil32(return_data.size) + 485] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _8130 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8130] = 26
                                            mem[_8130 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _8274 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8274] = 26
                                        mem[_8274 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
        else:
            if tx.origin == owner:
                mem[196] = address(vaultAddress)
                mem[228] = arg1
                mem[196 len 28] = Mask(224, 0, stor13)
                mem[260] = 32
                mem[292] = 'SafeERC20: low-level call failed'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call tokenAddress with:
                   funct uint32(stor13)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[324] = return_data.size
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if not paused:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = ceil32(return_data.size) + 389
                        mem[ceil32(return_data.size) + 325] = 30
                        mem[ceil32(return_data.size) + 357] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = ext_call.return_data[0] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    _8152 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8152] = 26
                                    mem[_8152 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = 0
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _8318 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8318] = 26
                                mem[_8318 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = s * borrowRate / 100
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if not paused:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[64] = ceil32(return_data.size) + 389
                        mem[ceil32(return_data.size) + 325] = 30
                        mem[ceil32(return_data.size) + 357] = 'SafeMath: subtraction overflow'
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = ext_call.return_data[0] - reserves
                            while idx < borrowDepth:
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args s
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not s:
                                    _8154 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8154] = 26
                                    mem[_8154 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = 0
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                require s
                                if s * borrowRate / s != borrowRate:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _8322 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8322] = 26
                                mem[_8322 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = s * borrowRate / 100
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s * borrowRate / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = s * borrowRate / 100
                                continue 
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_a7836e36Address))
                            call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOfPool = 0
            else:
                if paused:
                    mem[196] = address(vaultAddress)
                    mem[228] = arg1
                    mem[196 len 28] = Mask(224, 0, stor13)
                    mem[260] = 32
                    mem[292] = 'SafeERC20: low-level call failed'
                    if ext_code.size(tokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    call tokenAddress with:
                       funct uint32(stor13)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[324] = return_data.size
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if not paused:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = ceil32(return_data.size) + 389
                            mem[ceil32(return_data.size) + 325] = 30
                            mem[ceil32(return_data.size) + 357] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _8176 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8176] = 26
                                        mem[_8176 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _8366 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8366] = 26
                                    mem[_8366 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                        if not paused:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = ceil32(return_data.size) + 389
                            mem[ceil32(return_data.size) + 325] = 30
                            mem[ceil32(return_data.size) + 357] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _8178 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8178] = 26
                                        mem[_8178 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _8370 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8370] = 26
                                    mem[_8370 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                else:
                    if not arg1:
                        mem[192] = 'SafeMath: division by zero'
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[324] = address(vaultAddress)
                        mem[356] = arg1
                        mem[288] = 68
                        mem[324 len 28] = Mask(224, 0, stor13)
                        mem[320 len 4] = transfer(address arg1, uint256 arg2)
                        mem[388] = 32
                        mem[420] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        call tokenAddress with:
                           funct uint32(stor13)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452] = return_data.size
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = ceil32(return_data.size) + 517
                                mem[ceil32(return_data.size) + 453] = 30
                                mem[ceil32(return_data.size) + 485] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _8168 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8168] = 26
                                            mem[_8168 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _8350 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8350] = 26
                                        mem[_8350 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                        else:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = ceil32(return_data.size) + 517
                                mem[ceil32(return_data.size) + 453] = 30
                                mem[ceil32(return_data.size) + 485] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _8170 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8170] = 26
                                            mem[_8170 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _8354 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8354] = 26
                                        mem[_8354 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                    else:
                        require arg1
                        if arg1 * sub_d68e1302 / arg1 != sub_d68e1302:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        mem[192] = 'SafeMath: division by zero'
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if arg1 * sub_d68e1302 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[324] = address(vaultAddress)
                        mem[356] = arg1 - (arg1 * sub_d68e1302 / 10000)
                        mem[288] = 68
                        mem[324 len 28] = Mask(224, 0, stor13)
                        mem[320 len 4] = transfer(address arg1, uint256 arg2)
                        mem[388] = 32
                        mem[420] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) >> 32
                        mem[544 len 4] = 0
                        call tokenAddress with:
                           funct uint32(stor13)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) << 224, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452] = return_data.size
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = ceil32(return_data.size) + 517
                                mem[ceil32(return_data.size) + 453] = 30
                                mem[ceil32(return_data.size) + 485] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _8160 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8160] = 26
                                            mem[_8160 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _8334 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8334] = 26
                                        mem[_8334 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                        else:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = ceil32(return_data.size) + 517
                                mem[ceil32(return_data.size) + 453] = 30
                                mem[ceil32(return_data.size) + 485] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _8162 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8162] = 26
                                            mem[_8162 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _8338 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8338] = 26
                                        mem[_8338 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
    else:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[164] = this.address
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args this.address
        mem[160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = mem[mem[64]]
        t = ext_call.return_data[0]
        while t < s:
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args t
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _3981 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3981] = 26
                mem[_3981 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _3987 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3987 + idx + 68] = mem[_3981 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3987 + 68] = mem[_3987 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3987 + -mem[64] + 100
                require borrowRate
                require ext_code.size(address(sub_a7836e36Address))
                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4206 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4206] = 30
                mem[_4206 + 32] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate > ext_call.return_data[0]:
                    _4244 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4244 + idx + 68] = mem[_4206 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4244 + 68] = mem[_4244 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4244 + -mem[64] + 100
                require ext_code.size(address(sub_a7836e36Address))
                call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (0 / borrowRate))
            else:
                require ext_call.return_data[0]
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3986 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3986] = 26
                mem[_3986 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _4023 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_4023 + idx + 68] = mem[_3986 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4023 + 68] = mem[_4023 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4023 + -mem[64] + 100
                require borrowRate
                require ext_code.size(address(sub_a7836e36Address))
                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4243] = 30
                mem[_4243 + 32] = 'SafeMath: subtraction overflow'
                if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                    _4346 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4346 + idx + 68] = mem[_4243 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4346 + 68] = mem[_4346 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4346 + -mem[64] + 100
                require ext_code.size(address(sub_a7836e36Address))
                call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            continue 
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).repayBorrow(uint256 arg1) with:
             gas gas_remaining wei
            args -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_a7836e36Address))
        staticcall address(sub_a7836e36Address).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        reserves = 0
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_a7836e36Address))
        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _4096 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4096] = 30
        mem[_4096 + 32] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOfPool = 0
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                _4727 = mem[64]
                mem[mem[64] + 36] = address(vaultAddress)
                mem[mem[64] + 68] = ext_call.return_data[0]
                _4728 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4727 + 100] = 32
                mem[_4727 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _5048 = mem[_4728]
                mem[_4727 + 164 len floor32(mem[_4728])] = mem[_4728 + 32 len floor32(mem[_4728])]
                mem[_4727 + floor32(mem[_4728]) + -(mem[_4728] % 32) + 196 len mem[_4728] % 32] = mem[_4728 + -(mem[_4728] % 32) + floor32(mem[_4728]) + 64 len mem[_4728] % 32]
                call tokenAddress.mem[_4727 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_4727 + 168 len _5048 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] <= 0:
                        if not paused:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4727 + 228
                            mem[_4727 + 164] = 30
                            mem[_4727 + 196] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _10932 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10932] = 26
                                        mem[_10932 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _10998 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10998] = 26
                                    mem[_10998 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4727 + 274 len 22]
                        if not paused:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4727 + 228
                            mem[_4727 + 164] = 30
                            mem[_4727 + 196] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _10934 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10934] = 26
                                        mem[_10934 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11002 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11002] = 26
                                    mem[_11002 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                else:
                    mem[_4727 + 164] = return_data.size
                    mem[_4727 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if not paused:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4727 + ceil32(return_data.size) + 229
                            mem[_4727 + ceil32(return_data.size) + 165] = 30
                            mem[_4727 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _10936 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10936] = 26
                                        mem[_10936 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11006 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11006] = 26
                                    mem[_11006 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        require return_data.size >= 32
                        if not mem[_4727 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4727 + ceil32(return_data.size) + 275 len 22]
                        if not paused:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4727 + ceil32(return_data.size) + 229
                            mem[_4727 + ceil32(return_data.size) + 165] = 30
                            mem[_4727 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _10938 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10938] = 26
                                        mem[_10938 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11010 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11010] = 26
                                    mem[_11010 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
            else:
                if paused:
                    _4879 = mem[64]
                    mem[mem[64] + 36] = address(vaultAddress)
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _4880 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_4879 + 100] = 32
                    mem[_4879 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.size(tokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _5276 = mem[_4880]
                    mem[_4879 + 164 len floor32(mem[_4880])] = mem[_4880 + 32 len floor32(mem[_4880])]
                    mem[_4879 + floor32(mem[_4880]) + -(mem[_4880] % 32) + 196 len mem[_4880] % 32] = mem[_4880 + -(mem[_4880] % 32) + floor32(mem[_4880]) + 64 len mem[_4880] % 32]
                    call tokenAddress.mem[_4879 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_4879 + 168 len _5276 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] <= 0:
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _4879 + 228
                                mem[_4879 + 164] = 30
                                mem[_4879 + 196] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _10956 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_10956] = 26
                                            mem[_10956 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11046 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11046] = 26
                                        mem[_11046 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4879 + 274 len 22]
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _4879 + 228
                                mem[_4879 + 164] = 30
                                mem[_4879 + 196] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _10958 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_10958] = 26
                                            mem[_10958 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11050 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11050] = 26
                                        mem[_11050 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                    else:
                        mem[_4879 + 164] = return_data.size
                        mem[_4879 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _4879 + ceil32(return_data.size) + 229
                                mem[_4879 + ceil32(return_data.size) + 165] = 30
                                mem[_4879 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _10960 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_10960] = 26
                                            mem[_10960 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11054 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11054] = 26
                                        mem[_11054 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                        else:
                            require return_data.size >= 32
                            if not mem[_4879 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4879 + ceil32(return_data.size) + 275 len 22]
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _4879 + ceil32(return_data.size) + 229
                                mem[_4879 + ceil32(return_data.size) + 165] = 30
                                mem[_4879 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _10962 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_10962] = 26
                                            mem[_10962 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11058 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11058] = 26
                                        mem[_11058 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                else:
                    if not ext_call.return_data[0]:
                        _5181 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5181] = 26
                        mem[_5181 + 32] = 'SafeMath: division by zero'
                        _5502 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5502] = 30
                        mem[_5502 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _5613 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _5614 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_5613 + 100] = 32
                        mem[_5613 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _5694 = mem[_5614]
                        mem[_5613 + 164 len floor32(mem[_5614])] = mem[_5614 + 32 len floor32(mem[_5614])]
                        mem[_5613 + floor32(mem[_5614]) + -(mem[_5614] % 32) + 196 len mem[_5614] % 32] = mem[_5614 + -(mem[_5614] % 32) + floor32(mem[_5614]) + 64 len mem[_5614] % 32]
                        call tokenAddress.mem[_5613 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5613 + 168 len _5694 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] <= 0:
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5613 + 228
                                    mem[_5613 + 164] = 30
                                    mem[_5613 + 196] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10948 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10948] = 26
                                                mem[_10948 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11030 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11030] = 26
                                            mem[_11030 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                            else:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_5613 + 274 len 22]
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5613 + 228
                                    mem[_5613 + 164] = 30
                                    mem[_5613 + 196] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10950 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10950] = 26
                                                mem[_10950 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11034 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11034] = 26
                                            mem[_11034 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                        else:
                            mem[_5613 + 164] = return_data.size
                            mem[_5613 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5613 + ceil32(return_data.size) + 229
                                    mem[_5613 + ceil32(return_data.size) + 165] = 30
                                    mem[_5613 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10952 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10952] = 26
                                                mem[_10952 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11038 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11038] = 26
                                            mem[_11038 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                            else:
                                require return_data.size >= 32
                                if not mem[_5613 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_5613 + ceil32(return_data.size) + 275 len 22]
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5613 + ceil32(return_data.size) + 229
                                    mem[_5613 + ceil32(return_data.size) + 165] = 30
                                    mem[_5613 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10954 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10954] = 26
                                                mem[_10954 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11042 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11042] = 26
                                            mem[_11042 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * sub_d68e1302 / ext_call.return_data[0] != sub_d68e1302:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _5274 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5274] = 26
                        mem[_5274 + 32] = 'SafeMath: division by zero'
                        _5557 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5557] = 30
                        mem[_5557 + 32] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] * sub_d68e1302 / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _5654 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)
                        _5655 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_5654 + 100] = 32
                        mem[_5654 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _5716 = mem[_5655]
                        mem[_5654 + 164 len floor32(mem[_5655])] = mem[_5655 + 32 len floor32(mem[_5655])]
                        mem[_5654 + floor32(mem[_5655]) + -(mem[_5655] % 32) + 196 len mem[_5655] % 32] = mem[_5655 + -(mem[_5655] % 32) + floor32(mem[_5655]) + 64 len mem[_5655] % 32]
                        call tokenAddress.mem[_5654 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5654 + 168 len _5716 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] <= 0:
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5654 + 228
                                    mem[_5654 + 164] = 30
                                    mem[_5654 + 196] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10940 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10940] = 26
                                                mem[_10940 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11014 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11014] = 26
                                            mem[_11014 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                            else:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_5654 + 274 len 22]
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5654 + 228
                                    mem[_5654 + 164] = 30
                                    mem[_5654 + 196] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10942 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10942] = 26
                                                mem[_10942 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11018 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11018] = 26
                                            mem[_11018 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                        else:
                            mem[_5654 + 164] = return_data.size
                            mem[_5654 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5654 + ceil32(return_data.size) + 229
                                    mem[_5654 + ceil32(return_data.size) + 165] = 30
                                    mem[_5654 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10944 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10944] = 26
                                                mem[_10944 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11022 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11022] = 26
                                            mem[_11022 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                            else:
                                require return_data.size >= 32
                                if not mem[_5654 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_5654 + ceil32(return_data.size) + 275 len 22]
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5654 + ceil32(return_data.size) + 229
                                    mem[_5654 + ceil32(return_data.size) + 165] = 30
                                    mem[_5654 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10946 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10946] = 26
                                                mem[_10946 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11026 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11026] = 26
                                            mem[_11026 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
        else:
            if tx.origin == owner:
                _4827 = mem[64]
                mem[mem[64] + 36] = address(vaultAddress)
                mem[mem[64] + 68] = arg1
                _4828 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4827 + 100] = 32
                mem[_4827 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _5183 = mem[_4828]
                mem[_4827 + 164 len floor32(mem[_4828])] = mem[_4828 + 32 len floor32(mem[_4828])]
                mem[_4827 + floor32(mem[_4828]) + -(mem[_4828] % 32) + 196 len mem[_4828] % 32] = mem[_4828 + -(mem[_4828] % 32) + floor32(mem[_4828]) + 64 len mem[_4828] % 32]
                call tokenAddress.mem[_4827 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_4827 + 168 len _5183 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] <= 0:
                        if not paused:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4827 + 228
                            mem[_4827 + 164] = 30
                            mem[_4827 + 196] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _10964 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10964] = 26
                                        mem[_10964 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11062 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11062] = 26
                                    mem[_11062 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4827 + 274 len 22]
                        if not paused:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4827 + 228
                            mem[_4827 + 164] = 30
                            mem[_4827 + 196] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _10966 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10966] = 26
                                        mem[_10966 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11066 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11066] = 26
                                    mem[_11066 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                else:
                    mem[_4827 + 164] = return_data.size
                    mem[_4827 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if not paused:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4827 + ceil32(return_data.size) + 229
                            mem[_4827 + ceil32(return_data.size) + 165] = 30
                            mem[_4827 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _10968 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10968] = 26
                                        mem[_10968 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11070 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11070] = 26
                                    mem[_11070 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
                    else:
                        require return_data.size >= 32
                        if not mem[_4827 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4827 + ceil32(return_data.size) + 275 len 22]
                        if not paused:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4827 + ceil32(return_data.size) + 229
                            mem[_4827 + ceil32(return_data.size) + 165] = 30
                            mem[_4827 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = ext_call.return_data[0] - reserves
                                while idx < borrowDepth:
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args s
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not s:
                                        _10970 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10970] = 26
                                        mem[_10970 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = 0
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    require s
                                    if s * borrowRate / s != borrowRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11074 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11074] = 26
                                    mem[_11074 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = s * borrowRate / 100
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (s * borrowRate / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = idx + 1
                                    s = s * borrowRate / 100
                                    continue 
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sub_a7836e36Address))
                                call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOfPool = 0
            else:
                if paused:
                    _4995 = mem[64]
                    mem[mem[64] + 36] = address(vaultAddress)
                    mem[mem[64] + 68] = arg1
                    _4996 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_4995 + 100] = 32
                    mem[_4995 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.size(tokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _5366 = mem[_4996]
                    mem[_4995 + 164 len floor32(mem[_4996])] = mem[_4996 + 32 len floor32(mem[_4996])]
                    mem[_4995 + floor32(mem[_4996]) + -(mem[_4996] % 32) + 196 len mem[_4996] % 32] = mem[_4996 + -(mem[_4996] % 32) + floor32(mem[_4996]) + 64 len mem[_4996] % 32]
                    call tokenAddress.mem[_4995 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_4995 + 168 len _5366 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] <= 0:
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _4995 + 228
                                mem[_4995 + 164] = 30
                                mem[_4995 + 196] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _10988 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_10988] = 26
                                            mem[_10988 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11110 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11110] = 26
                                        mem[_11110 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4995 + 274 len 22]
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _4995 + 228
                                mem[_4995 + 164] = 30
                                mem[_4995 + 196] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _10990 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_10990] = 26
                                            mem[_10990 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11114 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11114] = 26
                                        mem[_11114 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                    else:
                        mem[_4995 + 164] = return_data.size
                        mem[_4995 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _4995 + ceil32(return_data.size) + 229
                                mem[_4995 + ceil32(return_data.size) + 165] = 30
                                mem[_4995 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _10992 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_10992] = 26
                                            mem[_10992 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11118 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11118] = 26
                                        mem[_11118 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                        else:
                            require return_data.size >= 32
                            if not mem[_4995 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4995 + ceil32(return_data.size) + 275 len 22]
                            if not paused:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _4995 + ceil32(return_data.size) + 229
                                mem[_4995 + ceil32(return_data.size) + 165] = 30
                                mem[_4995 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = ext_call.return_data[0] - reserves
                                    while idx < borrowDepth:
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args s
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not s:
                                            _10994 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_10994] = 26
                                            mem[_10994 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = 0
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        if s * borrowRate / s != borrowRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11122 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11122] = 26
                                        mem[_11122 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = s * borrowRate / 100
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (s * borrowRate / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = idx + 1
                                        s = s * borrowRate / 100
                                        continue 
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(sub_a7836e36Address))
                                    call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    balanceOfPool = 0
                else:
                    if not arg1:
                        _5208 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5208] = 26
                        mem[_5208 + 32] = 'SafeMath: division by zero'
                        _5534 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5534] = 30
                        mem[_5534 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _5643 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = arg1
                        _5644 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_5643 + 100] = 32
                        mem[_5643 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _5710 = mem[_5644]
                        mem[_5643 + 164 len floor32(mem[_5644])] = mem[_5644 + 32 len floor32(mem[_5644])]
                        mem[_5643 + floor32(mem[_5644]) + -(mem[_5644] % 32) + 196 len mem[_5644] % 32] = mem[_5644 + -(mem[_5644] % 32) + floor32(mem[_5644]) + 64 len mem[_5644] % 32]
                        call tokenAddress.mem[_5643 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5643 + 168 len _5710 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] <= 0:
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5643 + 228
                                    mem[_5643 + 164] = 30
                                    mem[_5643 + 196] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10980 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10980] = 26
                                                mem[_10980 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11094 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11094] = 26
                                            mem[_11094 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                            else:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_5643 + 274 len 22]
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5643 + 228
                                    mem[_5643 + 164] = 30
                                    mem[_5643 + 196] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10982 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10982] = 26
                                                mem[_10982 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11098 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11098] = 26
                                            mem[_11098 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                        else:
                            mem[_5643 + 164] = return_data.size
                            mem[_5643 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5643 + ceil32(return_data.size) + 229
                                    mem[_5643 + ceil32(return_data.size) + 165] = 30
                                    mem[_5643 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10984 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10984] = 26
                                                mem[_10984 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11102 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11102] = 26
                                            mem[_11102 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                            else:
                                require return_data.size >= 32
                                if not mem[_5643 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_5643 + ceil32(return_data.size) + 275 len 22]
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5643 + ceil32(return_data.size) + 229
                                    mem[_5643 + ceil32(return_data.size) + 165] = 30
                                    mem[_5643 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10986 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10986] = 26
                                                mem[_10986 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11106 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11106] = 26
                                            mem[_11106 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                    else:
                        require arg1
                        if arg1 * sub_d68e1302 / arg1 != sub_d68e1302:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _5364 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5364] = 26
                        mem[_5364 + 32] = 'SafeMath: division by zero'
                        _5585 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5585] = 30
                        mem[_5585 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * sub_d68e1302 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _5672 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = arg1 - (arg1 * sub_d68e1302 / 10000)
                        _5673 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_5672 + 100] = 32
                        mem[_5672 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _5741 = mem[_5673]
                        mem[_5672 + 164 len floor32(mem[_5673])] = mem[_5673 + 32 len floor32(mem[_5673])]
                        mem[_5672 + floor32(mem[_5673]) + -(mem[_5673] % 32) + 196 len mem[_5673] % 32] = mem[_5673 + -(mem[_5673] % 32) + floor32(mem[_5673]) + 64 len mem[_5673] % 32]
                        call tokenAddress.mem[_5672 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5672 + 168 len _5741 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] <= 0:
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5672 + 228
                                    mem[_5672 + 164] = 30
                                    mem[_5672 + 196] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10972 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10972] = 26
                                                mem[_10972 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11078 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11078] = 26
                                            mem[_11078 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                            else:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_5672 + 274 len 22]
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5672 + 228
                                    mem[_5672 + 164] = 30
                                    mem[_5672 + 196] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10974 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10974] = 26
                                                mem[_10974 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11082 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11082] = 26
                                            mem[_11082 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                        else:
                            mem[_5672 + 164] = return_data.size
                            mem[_5672 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5672 + ceil32(return_data.size) + 229
                                    mem[_5672 + ceil32(return_data.size) + 165] = 30
                                    mem[_5672 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10976 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10976] = 26
                                                mem[_10976 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11086 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11086] = 26
                                            mem[_11086 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
                            else:
                                require return_data.size >= 32
                                if not mem[_5672 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_5672 + ceil32(return_data.size) + 275 len 22]
                                if not paused:
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5672 + ceil32(return_data.size) + 229
                                    mem[_5672 + ceil32(return_data.size) + 165] = 30
                                    mem[_5672 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = ext_call.return_data[0] - reserves
                                        while idx < borrowDepth:
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).mint(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args s
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not s:
                                                _10978 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_10978] = 26
                                                mem[_10978 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = 0
                                                require ext_code.size(address(sub_a7836e36Address))
                                                call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            require s
                                            if s * borrowRate / s != borrowRate:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11090 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11090] = 26
                                            mem[_11090 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = s * borrowRate / 100
                                            require ext_code.size(address(sub_a7836e36Address))
                                            call address(sub_a7836e36Address).borrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (s * borrowRate / 100)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = idx + 1
                                            s = s * borrowRate / 100
                                            continue 
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(sub_a7836e36Address))
                                        call address(sub_a7836e36Address).borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        balanceOfPool = 0
}



}
