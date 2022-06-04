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


uint8 stor0; offset 160
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
uint8 harvestOnDeposit;
uint256 callFee;
uint256 treasuryFee;
uint256 sub_d68e1302;
uint256 totalFee;
address treasuryAddress;
uint32 stor14;
address vaultAddress;
uint256 stor14;
uint256 borrowRate;
uint256 borrowRateMax;
uint256 borrowDepth;
uint256 minLeverage;
uint256 reserves;
uint256 balanceOfPool;
mapping of uint8 stor21;

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
    return bool(uint8(stor0.field_160))
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

function harvestOnDeposit() payable {
    return bool(harvestOnDeposit)
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
    return bool(stor21[arg1])
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
    stor21[address(arg1)] = uint8(arg2)
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
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function availableWant() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
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
    staticcall tokenAddress.0x70a08231 with:
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
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
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
                    _67 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_67] = 26
                    mem[_67 + 32] = 'SafeMath: division by zero'
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
            if reserves + s < reserves:
                revert with 0, 'SafeMath: addition overflow'
            reserves += s
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
    staticcall tokenAddress.0x70a08231 with:
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
    staticcall tokenAddress.0x70a08231 with:
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
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
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
    staticcall tokenAddress.0x70a08231 with:
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
        staticcall tokenAddress.0x70a08231 with:
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
    staticcall address(sub_a7836e36Address).0x70a08231 with:
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
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
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
    mem[32] = 21
    if bool(stor21[address(msg.sender)]) != 1:
        revert with 0, 'You are not whitelisted'
    if arg1 > borrowRateMax:
        revert with 0, '!rate'
    if arg2 > 10:
        revert with 0, '!depth'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
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
            _176 = mem[64]
            mem[64] = mem[64] + 64
            mem[_176] = 26
            mem[_176 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _182 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_182 + idx + 68] = mem[_176 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_182 + 68] = mem[_182 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _182 + -mem[64] + 100
            require borrowRate
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _209 = mem[64]
            mem[64] = mem[64] + 64
            mem[_209] = 30
            mem[_209 + 32] = 'SafeMath: subtraction overflow'
            if 0 / borrowRate > ext_call.return_data[0]:
                _215 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_215 + idx + 68] = mem[_209 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_215 + 68] = mem[_215 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _215 + -mem[64] + 100
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (0 / borrowRate))
        else:
            require ext_call.return_data[0]
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _181 = mem[64]
            mem[64] = mem[64] + 64
            mem[_181] = 26
            mem[_181 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _186 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_186 + idx + 68] = mem[_181 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_186 + 68] = mem[_186 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _186 + -mem[64] + 100
            require borrowRate
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _214 = mem[64]
            mem[64] = mem[64] + 64
            mem[_214] = 30
            mem[_214 + 32] = 'SafeMath: subtraction overflow'
            if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                _221 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_221 + idx + 68] = mem[_214 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_221 + 68] = mem[_221 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _221 + -mem[64] + 100
            require ext_code.size(address(sub_a7836e36Address))
            call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
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
    staticcall address(sub_a7836e36Address).0x70a08231 with:
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
    _195 = mem[64]
    mem[64] = mem[64] + 64
    mem[_195] = 30
    mem[_195 + 32] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOfPool = 0
    borrowRate = arg1
    borrowDepth = arg2
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
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
                _322 = mem[64]
                mem[64] = mem[64] + 64
                mem[_322] = 26
                mem[_322 + 32] = 'SafeMath: division by zero'
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
            _325 = mem[64]
            mem[64] = mem[64] + 64
            mem[_325] = 26
            mem[_325 + 32] = 'SafeMath: division by zero'
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
        if reserves + s < reserves:
            revert with 0, 'SafeMath: addition overflow'
        reserves += s
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
    staticcall tokenAddress.0x70a08231 with:
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
        staticcall tokenAddress.0x70a08231 with:
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
    staticcall address(sub_a7836e36Address).0x70a08231 with:
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
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
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
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
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
        require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
        staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0xdd62ed3e with:
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
        if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[516 len 4] = 0
        call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = 488
            mem[424] = 30
            mem[456] = 'SafeMath: subtraction overflow'
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
                            _3232 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3232] = 26
                            mem[_3232 + 32] = 'SafeMath: division by zero'
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
                        _3270 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3270] = 26
                        mem[_3270 + 32] = 'SafeMath: division by zero'
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
                    if reserves + s < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
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
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[64] = ceil32(return_data.size) + 489
                mem[ceil32(return_data.size) + 425] = 30
                mem[ceil32(return_data.size) + 457] = 'SafeMath: subtraction overflow'
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
                                _3233 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3233] = 26
                                mem[_3233 + 32] = 'SafeMath: division by zero'
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
                            _3272 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3272] = 26
                            mem[_3272 + 32] = 'SafeMath: division by zero'
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
                        if reserves + s < reserves:
                            revert with 0, 'SafeMath: addition overflow'
                        reserves += s
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
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[64] = ceil32(return_data.size) + 489
                mem[ceil32(return_data.size) + 425] = 30
                mem[ceil32(return_data.size) + 457] = 'SafeMath: subtraction overflow'
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
                                _3234 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3234] = 26
                                mem[_3234 + 32] = 'SafeMath: division by zero'
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
                            _3274 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3274] = 26
                            mem[_3274 + 32] = 'SafeMath: division by zero'
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
                        if reserves + s < reserves:
                            revert with 0, 'SafeMath: addition overflow'
                        reserves += s
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
            require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
            staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0xdd62ed3e with:
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
            if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
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
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[64] = ceil32(return_data.size) + 489
                mem[ceil32(return_data.size) + 425] = 30
                mem[ceil32(return_data.size) + 457] = 'SafeMath: subtraction overflow'
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
                                _3236 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3236] = 26
                                mem[_3236 + 32] = 'SafeMath: division by zero'
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
                            _3278 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3278] = 26
                            mem[_3278 + 32] = 'SafeMath: division by zero'
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
                        if reserves + s < reserves:
                            revert with 0, 'SafeMath: addition overflow'
                        reserves += s
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
                    if uint8(stor0.field_160):
                        revert with 0, 
                                    'Pausable: paused',
                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address), mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = (2 * ceil32(return_data.size)) + 490
                    mem[(2 * ceil32(return_data.size)) + 426] = 30
                    mem[(2 * ceil32(return_data.size)) + 458] = 'SafeMath: subtraction overflow'
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
                                    _3237 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3237] = 26
                                    mem[_3237 + 32] = 'SafeMath: division by zero'
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
                                _3280 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3280] = 26
                                mem[_3280 + 32] = 'SafeMath: division by zero'
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
                            if reserves + s < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
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
                    if uint8(stor0.field_160):
                        revert with 0, 
                                    'Pausable: paused',
                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address), mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = (2 * ceil32(return_data.size)) + 490
                    mem[(2 * ceil32(return_data.size)) + 426] = 30
                    mem[(2 * ceil32(return_data.size)) + 458] = 'SafeMath: subtraction overflow'
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
                                    _3238 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3238] = 26
                                    mem[_3238 + 32] = 'SafeMath: division by zero'
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
                                _3282 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3282] = 26
                                mem[_3282 + 32] = 'SafeMath: division by zero'
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
                            if reserves + s < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
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
            require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
            staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0xdd62ed3e with:
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
            if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
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
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[64] = ceil32(return_data.size) + 489
                mem[ceil32(return_data.size) + 425] = 30
                mem[ceil32(return_data.size) + 457] = 'SafeMath: subtraction overflow'
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
                                _3240 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3240] = 26
                                mem[_3240 + 32] = 'SafeMath: division by zero'
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
                            _3286 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3286] = 26
                            mem[_3286 + 32] = 'SafeMath: division by zero'
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
                        if reserves + s < reserves:
                            revert with 0, 'SafeMath: addition overflow'
                        reserves += s
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
                    if uint8(stor0.field_160):
                        revert with 0, 
                                    'Pausable: paused',
                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address), mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = (2 * ceil32(return_data.size)) + 490
                    mem[(2 * ceil32(return_data.size)) + 426] = 30
                    mem[(2 * ceil32(return_data.size)) + 458] = 'SafeMath: subtraction overflow'
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
                                    _3241 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3241] = 26
                                    mem[_3241 + 32] = 'SafeMath: division by zero'
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
                                _3288 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3288] = 26
                                mem[_3288 + 32] = 'SafeMath: division by zero'
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
                            if reserves + s < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
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
                    if uint8(stor0.field_160):
                        revert with 0, 
                                    'Pausable: paused',
                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address), mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = (2 * ceil32(return_data.size)) + 490
                    mem[(2 * ceil32(return_data.size)) + 426] = 30
                    mem[(2 * ceil32(return_data.size)) + 458] = 'SafeMath: subtraction overflow'
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
                                    _3242 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3242] = 26
                                    mem[_3242 + 32] = 'SafeMath: division by zero'
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
                                _3290 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3290] = 26
                                mem[_3290 + 32] = 'SafeMath: division by zero'
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
                            if reserves + s < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
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
    staticcall tokenAddress.0x70a08231 with:
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
                mem[196 len 28] = Mask(224, 0, stor14)
                mem[260] = 32
                mem[292] = 'SafeERC20: low-level call failed'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                mem[416 len 4] = 0
                call tokenAddress with:
                   funct uint32(stor14)
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
                    if not uint8(stor0.field_160):
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
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
                                    _8373 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8373] = 26
                                    mem[_8373 + 32] = 'SafeMath: division by zero'
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
                                _8504 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8504] = 26
                                mem[_8504 + 32] = 'SafeMath: division by zero'
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
                            if reserves + s < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
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
                    if not uint8(stor0.field_160):
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
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
                                    _8374 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8374] = 26
                                    mem[_8374 + 32] = 'SafeMath: division by zero'
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
                                _8506 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8506] = 26
                                mem[_8506 + 32] = 'SafeMath: division by zero'
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
                            if reserves + s < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
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
                if uint8(stor0.field_160):
                    mem[196] = address(vaultAddress)
                    mem[228] = ext_call.return_data[0] - reserves
                    mem[196 len 28] = Mask(224, 0, stor14)
                    mem[260] = 32
                    mem[292] = 'SafeERC20: low-level call failed'
                    if ext_code.size(tokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                    mem[416 len 4] = 0
                    call tokenAddress with:
                       funct uint32(stor14)
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
                        if not uint8(stor0.field_160):
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
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
                                        _8385 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8385] = 26
                                        mem[_8385 + 32] = 'SafeMath: division by zero'
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
                                    _8528 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8528] = 26
                                    mem[_8528 + 32] = 'SafeMath: division by zero'
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
                                if reserves + s < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                        if not uint8(stor0.field_160):
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
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
                                        _8386 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8386] = 26
                                        mem[_8386 + 32] = 'SafeMath: division by zero'
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
                                    _8530 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8530] = 26
                                    mem[_8530 + 32] = 'SafeMath: division by zero'
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
                                if reserves + s < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                        mem[324 len 28] = Mask(224, 0, stor14)
                        mem[320 len 4] = unknown_0xa9059cbb(?????)
                        mem[388] = 32
                        mem[420] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                        mem[544 len 4] = 0
                        call tokenAddress with:
                           funct uint32(stor14)
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
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
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
                                            _8381 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8381] = 26
                                            mem[_8381 + 32] = 'SafeMath: division by zero'
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
                                        _8520 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8520] = 26
                                        mem[_8520 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
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
                                            _8382 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8382] = 26
                                            mem[_8382 + 32] = 'SafeMath: division by zero'
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
                                        _8522 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8522] = 26
                                        mem[_8522 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                        mem[324 len 28] = Mask(224, 0, stor14)
                        mem[320 len 4] = unknown_0xa9059cbb(?????)
                        mem[388] = 32
                        mem[420] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * sub_d68e1302) - (reserves * sub_d68e1302) / 10000)) >> 32
                        mem[544 len 4] = 0
                        call tokenAddress with:
                           funct uint32(stor14)
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
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
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
                                            _8377 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8377] = 26
                                            mem[_8377 + 32] = 'SafeMath: division by zero'
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
                                        _8512 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8512] = 26
                                        mem[_8512 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
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
                                            _8378 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8378] = 26
                                            mem[_8378 + 32] = 'SafeMath: division by zero'
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
                                        _8514 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8514] = 26
                                        mem[_8514 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                mem[196 len 28] = Mask(224, 0, stor14)
                mem[260] = 32
                mem[292] = 'SafeERC20: low-level call failed'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call tokenAddress with:
                   funct uint32(stor14)
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
                    if not uint8(stor0.field_160):
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
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
                                    _8389 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8389] = 26
                                    mem[_8389 + 32] = 'SafeMath: division by zero'
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
                                _8536 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8536] = 26
                                mem[_8536 + 32] = 'SafeMath: division by zero'
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
                            if reserves + s < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
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
                    if not uint8(stor0.field_160):
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
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
                                    _8390 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8390] = 26
                                    mem[_8390 + 32] = 'SafeMath: division by zero'
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
                                _8538 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8538] = 26
                                mem[_8538 + 32] = 'SafeMath: division by zero'
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
                            if reserves + s < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
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
                if uint8(stor0.field_160):
                    mem[196] = address(vaultAddress)
                    mem[228] = arg1
                    mem[196 len 28] = Mask(224, 0, stor14)
                    mem[260] = 32
                    mem[292] = 'SafeERC20: low-level call failed'
                    if ext_code.size(tokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    call tokenAddress with:
                       funct uint32(stor14)
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
                        if not uint8(stor0.field_160):
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
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
                                        _8401 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8401] = 26
                                        mem[_8401 + 32] = 'SafeMath: division by zero'
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
                                    _8560 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8560] = 26
                                    mem[_8560 + 32] = 'SafeMath: division by zero'
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
                                if reserves + s < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                        if not uint8(stor0.field_160):
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
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
                                        _8402 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8402] = 26
                                        mem[_8402 + 32] = 'SafeMath: division by zero'
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
                                    _8562 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8562] = 26
                                    mem[_8562 + 32] = 'SafeMath: division by zero'
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
                                if reserves + s < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                        mem[324 len 28] = Mask(224, 0, stor14)
                        mem[320 len 4] = unknown_0xa9059cbb(?????)
                        mem[388] = 32
                        mem[420] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call tokenAddress with:
                           funct uint32(stor14)
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
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
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
                                            _8397 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8397] = 26
                                            mem[_8397 + 32] = 'SafeMath: division by zero'
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
                                        _8552 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8552] = 26
                                        mem[_8552 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
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
                                            _8398 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8398] = 26
                                            mem[_8398 + 32] = 'SafeMath: division by zero'
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
                                        _8554 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8554] = 26
                                        mem[_8554 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                        mem[324 len 28] = Mask(224, 0, stor14)
                        mem[320 len 4] = unknown_0xa9059cbb(?????)
                        mem[388] = 32
                        mem[420] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) >> 32
                        mem[544 len 4] = 0
                        call tokenAddress with:
                           funct uint32(stor14)
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
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
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
                                            _8393 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8393] = 26
                                            mem[_8393 + 32] = 'SafeMath: division by zero'
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
                                        _8544 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8544] = 26
                                        mem[_8544 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
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
                                            _8394 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8394] = 26
                                            mem[_8394 + 32] = 'SafeMath: division by zero'
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
                                        _8546 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8546] = 26
                                        mem[_8546 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
        staticcall tokenAddress.0x70a08231 with:
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
                _4109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4109] = 26
                mem[_4109 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _4115 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_4115 + idx + 68] = mem[_4109 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4115 + 68] = mem[_4115 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4115 + -mem[64] + 100
                require borrowRate
                require ext_code.size(address(sub_a7836e36Address))
                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4334 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4334] = 30
                mem[_4334 + 32] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate > ext_call.return_data[0]:
                    _4372 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4372 + idx + 68] = mem[_4334 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4372 + 68] = mem[_4372 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4372 + -mem[64] + 100
                require ext_code.size(address(sub_a7836e36Address))
                call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (0 / borrowRate))
            else:
                require ext_call.return_data[0]
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _4114 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4114] = 26
                mem[_4114 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _4151 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_4151 + idx + 68] = mem[_4114 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4151 + 68] = mem[_4151 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4151 + -mem[64] + 100
                require borrowRate
                require ext_code.size(address(sub_a7836e36Address))
                call address(sub_a7836e36Address).balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4371 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4371] = 30
                mem[_4371 + 32] = 'SafeMath: subtraction overflow'
                if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                    _4474 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4474 + idx + 68] = mem[_4371 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4474 + 68] = mem[_4474 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4474 + -mem[64] + 100
                require ext_code.size(address(sub_a7836e36Address))
                call address(sub_a7836e36Address).redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
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
        staticcall address(sub_a7836e36Address).0x70a08231 with:
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
        _4224 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4224] = 30
        mem[_4224 + 32] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOfPool = 0
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                _4807 = mem[64]
                mem[mem[64] + 36] = address(vaultAddress)
                mem[mem[64] + 68] = ext_call.return_data[0]
                _4808 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_4807 + 100] = 32
                mem[_4807 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _5144 = mem[_4808]
                mem[_4807 + 164 len floor32(mem[_4808])] = mem[_4808 + 32 len floor32(mem[_4808])]
                mem[_4807 + floor32(mem[_4808]) + -(mem[_4808] % 32) + 196 len mem[_4808] % 32] = mem[_4808 + -(mem[_4808] % 32) + floor32(mem[_4808]) + 64 len mem[_4808] % 32]
                call tokenAddress.mem[_4807 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_4807 + 168 len _5144 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] <= 0:
                        if not uint8(stor0.field_160):
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4807 + 228
                            mem[_4807 + 164] = 30
                            mem[_4807 + 196] = 'SafeMath: subtraction overflow'
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
                                        _11315 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11315] = 26
                                        mem[_11315 + 32] = 'SafeMath: division by zero'
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
                                    _11380 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11380] = 26
                                    mem[_11380 + 32] = 'SafeMath: division by zero'
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
                                if reserves + s < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                                        mem[_4807 + 274 len 22]
                        if not uint8(stor0.field_160):
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4807 + 228
                            mem[_4807 + 164] = 30
                            mem[_4807 + 196] = 'SafeMath: subtraction overflow'
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
                                        _11316 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11316] = 26
                                        mem[_11316 + 32] = 'SafeMath: division by zero'
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
                                    _11382 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11382] = 26
                                    mem[_11382 + 32] = 'SafeMath: division by zero'
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
                                if reserves + s < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                    mem[_4807 + 164] = return_data.size
                    mem[_4807 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if not uint8(stor0.field_160):
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4807 + ceil32(return_data.size) + 229
                            mem[_4807 + ceil32(return_data.size) + 165] = 30
                            mem[_4807 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                        _11317 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11317] = 26
                                        mem[_11317 + 32] = 'SafeMath: division by zero'
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
                                    _11384 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11384] = 26
                                    mem[_11384 + 32] = 'SafeMath: division by zero'
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
                                if reserves + s < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                        if not mem[_4807 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4807 + ceil32(return_data.size) + 275 len 22]
                        if not uint8(stor0.field_160):
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4807 + ceil32(return_data.size) + 229
                            mem[_4807 + ceil32(return_data.size) + 165] = 30
                            mem[_4807 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                        _11318 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11318] = 26
                                        mem[_11318 + 32] = 'SafeMath: division by zero'
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
                                    _11386 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11386] = 26
                                    mem[_11386 + 32] = 'SafeMath: division by zero'
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
                                if reserves + s < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                if uint8(stor0.field_160):
                    _4975 = mem[64]
                    mem[mem[64] + 36] = address(vaultAddress)
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _4976 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_4975 + 100] = 32
                    mem[_4975 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.size(tokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _5356 = mem[_4976]
                    mem[_4975 + 164 len floor32(mem[_4976])] = mem[_4976 + 32 len floor32(mem[_4976])]
                    mem[_4975 + floor32(mem[_4976]) + -(mem[_4976] % 32) + 196 len mem[_4976] % 32] = mem[_4976 + -(mem[_4976] % 32) + floor32(mem[_4976]) + 64 len mem[_4976] % 32]
                    call tokenAddress.mem[_4975 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_4975 + 168 len _5356 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] <= 0:
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _4975 + 228
                                mem[_4975 + 164] = 30
                                mem[_4975 + 196] = 'SafeMath: subtraction overflow'
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
                                            _11327 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11327] = 26
                                            mem[_11327 + 32] = 'SafeMath: division by zero'
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
                                        _11404 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11404] = 26
                                        mem[_11404 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                                            mem[_4975 + 274 len 22]
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _4975 + 228
                                mem[_4975 + 164] = 30
                                mem[_4975 + 196] = 'SafeMath: subtraction overflow'
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
                                            _11328 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11328] = 26
                                            mem[_11328 + 32] = 'SafeMath: division by zero'
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
                                        _11406 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11406] = 26
                                        mem[_11406 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                        mem[_4975 + 164] = return_data.size
                        mem[_4975 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _4975 + ceil32(return_data.size) + 229
                                mem[_4975 + ceil32(return_data.size) + 165] = 30
                                mem[_4975 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                            _11329 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11329] = 26
                                            mem[_11329 + 32] = 'SafeMath: division by zero'
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
                                        _11408 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11408] = 26
                                        mem[_11408 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not mem[_4975 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4975 + ceil32(return_data.size) + 275 len 22]
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _4975 + ceil32(return_data.size) + 229
                                mem[_4975 + ceil32(return_data.size) + 165] = 30
                                mem[_4975 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                            _11330 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11330] = 26
                                            mem[_11330 + 32] = 'SafeMath: division by zero'
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
                                        _11410 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11410] = 26
                                        mem[_11410 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                        _5261 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5261] = 26
                        mem[_5261 + 32] = 'SafeMath: division by zero'
                        _5678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5678] = 30
                        mem[_5678 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _5805 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        _5806 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_5805 + 100] = 32
                        mem[_5805 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _5886 = mem[_5806]
                        mem[_5805 + 164 len floor32(mem[_5806])] = mem[_5806 + 32 len floor32(mem[_5806])]
                        mem[_5805 + floor32(mem[_5806]) + -(mem[_5806] % 32) + 196 len mem[_5806] % 32] = mem[_5806 + -(mem[_5806] % 32) + floor32(mem[_5806]) + 64 len mem[_5806] % 32]
                        call tokenAddress.mem[_5805 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5805 + 168 len _5886 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] <= 0:
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5805 + 228
                                    mem[_5805 + 164] = 30
                                    mem[_5805 + 196] = 'SafeMath: subtraction overflow'
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
                                                _11323 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11323] = 26
                                                mem[_11323 + 32] = 'SafeMath: division by zero'
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
                                            _11396 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11396] = 26
                                            mem[_11396 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                                mem[_5805 + 274 len 22]
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5805 + 228
                                    mem[_5805 + 164] = 30
                                    mem[_5805 + 196] = 'SafeMath: subtraction overflow'
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
                                                _11324 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11324] = 26
                                                mem[_11324 + 32] = 'SafeMath: division by zero'
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
                                            _11398 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11398] = 26
                                            mem[_11398 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                            mem[_5805 + 164] = return_data.size
                            mem[_5805 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5805 + ceil32(return_data.size) + 229
                                    mem[_5805 + ceil32(return_data.size) + 165] = 30
                                    mem[_5805 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                                _11325 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11325] = 26
                                                mem[_11325 + 32] = 'SafeMath: division by zero'
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
                                            _11400 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11400] = 26
                                            mem[_11400 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                if not mem[_5805 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_5805 + ceil32(return_data.size) + 275 len 22]
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5805 + ceil32(return_data.size) + 229
                                    mem[_5805 + ceil32(return_data.size) + 165] = 30
                                    mem[_5805 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                                _11326 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11326] = 26
                                                mem[_11326 + 32] = 'SafeMath: division by zero'
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
                                            _11402 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11402] = 26
                                            mem[_11402 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                        _5354 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5354] = 26
                        mem[_5354 + 32] = 'SafeMath: division by zero'
                        _5749 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5749] = 30
                        mem[_5749 + 32] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] * sub_d68e1302 / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _5846 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)
                        _5847 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_5846 + 100] = 32
                        mem[_5846 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _5908 = mem[_5847]
                        mem[_5846 + 164 len floor32(mem[_5847])] = mem[_5847 + 32 len floor32(mem[_5847])]
                        mem[_5846 + floor32(mem[_5847]) + -(mem[_5847] % 32) + 196 len mem[_5847] % 32] = mem[_5847 + floor32(mem[_5847]) + -(mem[_5847] % 32) + 64 len mem[_5847] % 32]
                        call tokenAddress with:
                             gas gas_remaining wei
                            args mem[_5846 + 168 len _5908 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] <= 0:
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5846 + 228
                                    mem[_5846 + 164] = 30
                                    mem[_5846 + 196] = 'SafeMath: subtraction overflow'
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
                                                _11319 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11319] = 26
                                                mem[_11319 + 32] = 'SafeMath: division by zero'
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
                                            _11388 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11388] = 26
                                            mem[_11388 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                                mem[_5846 + 274 len 22]
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5846 + 228
                                    mem[_5846 + 164] = 30
                                    mem[_5846 + 196] = 'SafeMath: subtraction overflow'
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
                                                _11320 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11320] = 26
                                                mem[_11320 + 32] = 'SafeMath: division by zero'
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
                                            _11390 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11390] = 26
                                            mem[_11390 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                            mem[_5846 + 164] = return_data.size
                            mem[_5846 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5846 + ceil32(return_data.size) + 229
                                    mem[_5846 + ceil32(return_data.size) + 165] = 30
                                    mem[_5846 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                                _11321 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11321] = 26
                                                mem[_11321 + 32] = 'SafeMath: division by zero'
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
                                            _11392 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11392] = 26
                                            mem[_11392 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                if not mem[_5846 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_5846 + ceil32(return_data.size) + 275 len 22]
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5846 + ceil32(return_data.size) + 229
                                    mem[_5846 + ceil32(return_data.size) + 165] = 30
                                    mem[_5846 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                                _11322 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11322] = 26
                                                mem[_11322 + 32] = 'SafeMath: division by zero'
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
                                            _11394 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11394] = 26
                                            mem[_11394 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                _4923 = mem[64]
                mem[mem[64] + 36] = address(vaultAddress)
                mem[mem[64] + 68] = arg1
                _4924 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_4923 + 100] = 32
                mem[_4923 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _5263 = mem[_4924]
                mem[_4923 + 164 len floor32(mem[_4924])] = mem[_4924 + 32 len floor32(mem[_4924])]
                mem[_4923 + floor32(mem[_4924]) + -(mem[_4924] % 32) + 196 len mem[_4924] % 32] = mem[_4924 + -(mem[_4924] % 32) + floor32(mem[_4924]) + 64 len mem[_4924] % 32]
                call tokenAddress.mem[_4923 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_4923 + 168 len _5263 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] <= 0:
                        if not uint8(stor0.field_160):
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4923 + 228
                            mem[_4923 + 164] = 30
                            mem[_4923 + 196] = 'SafeMath: subtraction overflow'
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
                                        _11331 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11331] = 26
                                        mem[_11331 + 32] = 'SafeMath: division by zero'
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
                                    _11412 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11412] = 26
                                    mem[_11412 + 32] = 'SafeMath: division by zero'
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
                                if reserves + s < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                                        mem[_4923 + 274 len 22]
                        if not uint8(stor0.field_160):
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4923 + 228
                            mem[_4923 + 164] = 30
                            mem[_4923 + 196] = 'SafeMath: subtraction overflow'
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
                                        _11332 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11332] = 26
                                        mem[_11332 + 32] = 'SafeMath: division by zero'
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
                                    _11414 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11414] = 26
                                    mem[_11414 + 32] = 'SafeMath: division by zero'
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
                                if reserves + s < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                    mem[_4923 + 164] = return_data.size
                    mem[_4923 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if not uint8(stor0.field_160):
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4923 + ceil32(return_data.size) + 229
                            mem[_4923 + ceil32(return_data.size) + 165] = 30
                            mem[_4923 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                        _11333 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11333] = 26
                                        mem[_11333 + 32] = 'SafeMath: division by zero'
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
                                    _11416 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11416] = 26
                                    mem[_11416 + 32] = 'SafeMath: division by zero'
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
                                if reserves + s < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                        if not mem[_4923 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4923 + ceil32(return_data.size) + 275 len 22]
                        if not uint8(stor0.field_160):
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[64] = _4923 + ceil32(return_data.size) + 229
                            mem[_4923 + ceil32(return_data.size) + 165] = 30
                            mem[_4923 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                        _11334 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11334] = 26
                                        mem[_11334 + 32] = 'SafeMath: division by zero'
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
                                    _11418 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11418] = 26
                                    mem[_11418 + 32] = 'SafeMath: division by zero'
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
                                if reserves + s < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                if uint8(stor0.field_160):
                    _5091 = mem[64]
                    mem[mem[64] + 36] = address(vaultAddress)
                    mem[mem[64] + 68] = arg1
                    _5092 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_5091 + 100] = 32
                    mem[_5091 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.size(tokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _5494 = mem[_5092]
                    mem[_5091 + 164 len floor32(mem[_5092])] = mem[_5092 + 32 len floor32(mem[_5092])]
                    mem[_5091 + floor32(mem[_5092]) + -(mem[_5092] % 32) + 196 len mem[_5092] % 32] = mem[_5092 + -(mem[_5092] % 32) + floor32(mem[_5092]) + 64 len mem[_5092] % 32]
                    call tokenAddress.mem[_5091 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_5091 + 168 len _5494 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] <= 0:
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _5091 + 228
                                mem[_5091 + 164] = 30
                                mem[_5091 + 196] = 'SafeMath: subtraction overflow'
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
                                            _11343 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11343] = 26
                                            mem[_11343 + 32] = 'SafeMath: division by zero'
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
                                        _11436 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11436] = 26
                                        mem[_11436 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                                            mem[_5091 + 274 len 22]
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _5091 + 228
                                mem[_5091 + 164] = 30
                                mem[_5091 + 196] = 'SafeMath: subtraction overflow'
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
                                            _11344 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11344] = 26
                                            mem[_11344 + 32] = 'SafeMath: division by zero'
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
                                        _11438 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11438] = 26
                                        mem[_11438 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                        mem[_5091 + 164] = return_data.size
                        mem[_5091 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _5091 + ceil32(return_data.size) + 229
                                mem[_5091 + ceil32(return_data.size) + 165] = 30
                                mem[_5091 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                            _11345 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11345] = 26
                                            mem[_11345 + 32] = 'SafeMath: division by zero'
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
                                        _11440 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11440] = 26
                                        mem[_11440 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not mem[_5091 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5091 + ceil32(return_data.size) + 275 len 22]
                            if not uint8(stor0.field_160):
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[64] = _5091 + ceil32(return_data.size) + 229
                                mem[_5091 + ceil32(return_data.size) + 165] = 30
                                mem[_5091 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                            _11346 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11346] = 26
                                            mem[_11346 + 32] = 'SafeMath: division by zero'
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
                                        _11442 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11442] = 26
                                        mem[_11442 + 32] = 'SafeMath: division by zero'
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
                                    if reserves + s < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                        _5288 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5288] = 26
                        mem[_5288 + 32] = 'SafeMath: division by zero'
                        _5726 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5726] = 30
                        mem[_5726 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _5835 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = arg1
                        _5836 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_5835 + 100] = 32
                        mem[_5835 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _5902 = mem[_5836]
                        mem[_5835 + 164 len floor32(mem[_5836])] = mem[_5836 + 32 len floor32(mem[_5836])]
                        mem[_5835 + floor32(mem[_5836]) + -(mem[_5836] % 32) + 196 len mem[_5836] % 32] = mem[_5836 + -(mem[_5836] % 32) + floor32(mem[_5836]) + 64 len mem[_5836] % 32]
                        call tokenAddress.mem[_5835 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5835 + 168 len _5902 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] <= 0:
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5835 + 228
                                    mem[_5835 + 164] = 30
                                    mem[_5835 + 196] = 'SafeMath: subtraction overflow'
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
                                                _11339 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11339] = 26
                                                mem[_11339 + 32] = 'SafeMath: division by zero'
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
                                            _11428 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11428] = 26
                                            mem[_11428 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                                mem[_5835 + 274 len 22]
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5835 + 228
                                    mem[_5835 + 164] = 30
                                    mem[_5835 + 196] = 'SafeMath: subtraction overflow'
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
                                                _11340 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11340] = 26
                                                mem[_11340 + 32] = 'SafeMath: division by zero'
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
                                            _11430 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11430] = 26
                                            mem[_11430 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                            mem[_5835 + 164] = return_data.size
                            mem[_5835 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5835 + ceil32(return_data.size) + 229
                                    mem[_5835 + ceil32(return_data.size) + 165] = 30
                                    mem[_5835 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                                _11341 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11341] = 26
                                                mem[_11341 + 32] = 'SafeMath: division by zero'
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
                                            _11432 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11432] = 26
                                            mem[_11432 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                if not mem[_5835 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_5835 + ceil32(return_data.size) + 275 len 22]
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5835 + ceil32(return_data.size) + 229
                                    mem[_5835 + ceil32(return_data.size) + 165] = 30
                                    mem[_5835 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                                _11342 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11342] = 26
                                                mem[_11342 + 32] = 'SafeMath: division by zero'
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
                                            _11434 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11434] = 26
                                            mem[_11434 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                        _5492 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5492] = 26
                        mem[_5492 + 32] = 'SafeMath: division by zero'
                        _5777 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5777] = 30
                        mem[_5777 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * sub_d68e1302 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _5864 = mem[64]
                        mem[mem[64] + 36] = address(vaultAddress)
                        mem[mem[64] + 68] = arg1 - (arg1 * sub_d68e1302 / 10000)
                        _5865 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_5864 + 100] = 32
                        mem[_5864 + 132] = 'SafeERC20: low-level call failed'
                        if ext_code.size(tokenAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _5933 = mem[_5865]
                        mem[_5864 + 164 len floor32(mem[_5865])] = mem[_5865 + 32 len floor32(mem[_5865])]
                        mem[_5864 + floor32(mem[_5865]) + -(mem[_5865] % 32) + 196 len mem[_5865] % 32] = mem[_5865 + floor32(mem[_5865]) + -(mem[_5865] % 32) + 64 len mem[_5865] % 32]
                        call tokenAddress with:
                             gas gas_remaining wei
                            args mem[_5864 + 168 len _5933 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] <= 0:
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5864 + 228
                                    mem[_5864 + 164] = 30
                                    mem[_5864 + 196] = 'SafeMath: subtraction overflow'
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
                                                _11335 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11335] = 26
                                                mem[_11335 + 32] = 'SafeMath: division by zero'
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
                                            _11420 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11420] = 26
                                            mem[_11420 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                                mem[_5864 + 274 len 22]
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5864 + 228
                                    mem[_5864 + 164] = 30
                                    mem[_5864 + 196] = 'SafeMath: subtraction overflow'
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
                                                _11336 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11336] = 26
                                                mem[_11336 + 32] = 'SafeMath: division by zero'
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
                                            _11422 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11422] = 26
                                            mem[_11422 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                            mem[_5864 + 164] = return_data.size
                            mem[_5864 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5864 + ceil32(return_data.size) + 229
                                    mem[_5864 + ceil32(return_data.size) + 165] = 30
                                    mem[_5864 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                                _11337 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11337] = 26
                                                mem[_11337 + 32] = 'SafeMath: division by zero'
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
                                            _11424 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11424] = 26
                                            mem[_11424 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                if not mem[_5864 + 196]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_5864 + ceil32(return_data.size) + 275 len 22]
                                if not uint8(stor0.field_160):
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[64] = _5864 + ceil32(return_data.size) + 229
                                    mem[_5864 + ceil32(return_data.size) + 165] = 30
                                    mem[_5864 + ceil32(return_data.size) + 197] = 'SafeMath: subtraction overflow'
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
                                                _11338 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_11338] = 26
                                                mem[_11338 + 32] = 'SafeMath: division by zero'
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
                                            _11426 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11426] = 26
                                            mem[_11426 + 32] = 'SafeMath: division by zero'
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
                                        if reserves + s < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
