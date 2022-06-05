contract main {




// =====================  Runtime code  =====================


#
#  - sweep(address arg1)
#  - withdraw(uint256 arg1)
#
const sub_8ed8ea7e(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const unitroller = 0x260e596dabe3afc463e75b6cc05d8c46acacfb09

const scream = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


address vaultAddress;
uint32 stor1;
address strategyAddress;
uint256 stor1;
address wantAddress;
array of uint256 lenderName;
uint256 dust;
uint256 dustThreshold;
uint8 sub_1ff9634a;
uint256 sub_39a0e81a;
uint32 stor8;
address cTokenAddress;

function want() payable {
    return wantAddress
}

function sub_1ff9634a(?) payable {
    return bool(sub_1ff9634a)
}

function sub_39a0e81a(?) payable {
    return sub_39a0e81a
}

function cToken() payable {
    return address(cTokenAddress)
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
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > dustThreshold:
        return (ext_call.return_data[0] > dustThreshold)
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function convertFromUnderlying(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).exchangeRateStored() with:
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
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < dustThreshold:
        return 0
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).exchangeRateStored() with:
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
            staticcall address(strategyAddress).0x1fe4a686 with:
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
            staticcall address(strategyAddress).0x1fe4a686 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!management'
    dustThreshold = arg1
}

function sub_b40e764c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
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
            staticcall address(strategyAddress).0x1fe4a686 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!management'
    sub_1ff9634a = uint8(bool(arg1))
}

function cloneCompoundLender(address arg1, string arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
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
            staticcall address(strategyAddress).0x1fe4a686 with:
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
    require ext_code.size(address(cTokenAddress))
    call address(cTokenAddress).mint(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'ctoken: mint fail'
}

function nav() payable {
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).0x70a08231 with:
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
        require ext_code.size(address(cTokenAddress))
        staticcall address(cTokenAddress).exchangeRateStored() with:
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

function initialize(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
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

function priceCheck(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg3:
        return 0
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg1:
        mem[96] = 2
        mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
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
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _45 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223
        _47 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _45 + (32 * _47) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _47] = mem[_45 + 224 len 32 * _47]
        require _47 - 1 < _47
        mem[mem[64]] = mem[(32 * _47 - 1) + ceil32(return_data.size) + 224]
    else:
        mem[96] = 3
        mem[128] = arg1
        mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[192] = arg2
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        idx = 0
        s = 128
        t = 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _44 = mem[224 len 4], Mask(224, 32, arg3) >> 32
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255
        _46 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
        require (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        require return_data.size >= _44 + (32 * _46) + 32
        mem[ceil32(return_data.size) + 256 len 32 * _46] = mem[_44 + 256 len 32 * _46]
        require _46 - 1 < _46
        mem[mem[64]] = mem[(32 * _46 - 1) + ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(cTokenAddress):
        revert with 0, 'GenericCream already initialized'
    address(cTokenAddress) = arg1
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
        mem[(2 * ceil32(return_data.size)) + 264] = this.address
        mem[(2 * ceil32(return_data.size)) + 296] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
        require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
        staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
        mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(4 * ceil32(return_data.size)) + 296] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
        mem[(4 * ceil32(return_data.size)) + 328] = -1
        mem[(4 * ceil32(return_data.size)) + 260] = 68
        mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + 360] = 32
        mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1, 0
        mem[(4 * ceil32(return_data.size)) + 492] = 0
        call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
           funct Mask(32, 224, 0, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1, 0) << 288)
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
            mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                if not mem[(4 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        dustThreshold = 10000
    mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
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
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
    staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1, 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
       funct Mask(32, 224, 0, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1, 0) << 288)
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
        dustThreshold = 10000
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 430] = 32
        mem[(8 * ceil32(return_data.size)) + 462] = 32
        mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 426
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        dustThreshold = 10000
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        dustThreshold = 10000
    mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 430] = 32
    mem[(8 * ceil32(return_data.size)) + 462] = 42
    mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(8 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (8 * ceil32(return_data.size)) + 426
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == address(strategyAddress):
        mem[100] = arg1
        require ext_code.size(address(cTokenAddress))
        call address(cTokenAddress).redeem(uint256 arg1) with:
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
            require ext_code.size(address(cTokenAddress))
            call address(cTokenAddress).redeem(uint256 arg1) with:
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
            staticcall address(strategyAddress).0x1fe4a686 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!management'
            mem[(2 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(address(cTokenAddress))
            call address(cTokenAddress).redeem(uint256 arg1) with:
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

function apr() payable {
    mem[100] = address(cTokenAddress)
    require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
    staticcall 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.compSpeeds(address arg1) with:
            gas gas_remaining wei
           args address(cTokenAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).exchangeRateStored() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).0x18160ddd with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(cTokenAddress))
        staticcall address(cTokenAddress).supplyRatePerBlock() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            return 0
        if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return (31540000 * ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[(4 * ceil32(return_data.size)) + 96] = 26
    mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
    mem[(4 * ceil32(return_data.size)) + 160] = 30
    mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
    if 0 > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        require ext_code.size(address(cTokenAddress))
        staticcall address(cTokenAddress).supplyRatePerBlock() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            return 0
        if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return (31540000 * ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 224] = 26
        mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).supplyRatePerBlock() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 288] = 3
        mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        mem[(4 * ceil32(return_data.size)) + 352] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(4 * ceil32(return_data.size)) + 384] = wantAddress
        mem[(4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 420] = 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        mem[(4 * ceil32(return_data.size)) + 452] = 64
        mem[(4 * ceil32(return_data.size)) + 484] = 3
        idx = 0
        s = (4 * ceil32(return_data.size)) + 320
        t = (4 * ceil32(return_data.size)) + 516
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 516 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _214 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
        require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 447
        _216 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448 <= test266151307()
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448
        mem[(6 * ceil32(return_data.size)) + 416] = _216
        require return_data.size >= _214 + (32 * _216) + 32
        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _216] = mem[(4 * ceil32(return_data.size)) + _214 + 448 len 32 * _216]
        require _216 - 1 < _216
        _314 = mem[(32 * _216 - 1) + (6 * ceil32(return_data.size)) + 448]
        if not mem[(32 * _216 - 1) + (6 * ceil32(return_data.size)) + 448]:
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).supplyRatePerBlock() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _320 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_320] < mem[_320]:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[_320]:
                return 0
            if 31540000 * mem[_320] / mem[_320] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[mem[64]] = 31540000 * mem[_320]
        else:
            if not mem[(32 * _216 - 1) + (6 * ceil32(return_data.size)) + 448]:
                _326 = mem[64]
                mem[64] = mem[64] + 64
                mem[_326] = 26
                mem[_326 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _346 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_346] < mem[_346]:
                    revert with 0, 'SafeMath: addition overflow'
                if not mem[_346]:
                    return 0
                if 31540000 * mem[_346] / mem[_346] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = 31540000 * mem[_346]
            else:
                if 9 * mem[(32 * _216 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _216 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                _329 = mem[64]
                mem[64] = mem[64] + 64
                mem[_329] = 26
                mem[_329 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _352 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if (9 * _314 / 10) + mem[_352] < mem[_352]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (9 * _314 / 10) + mem[_352]:
                    return 0
                if (31540000 * 9 * _314 / 10) + (31540000 * mem[_352]) / (9 * _314 / 10) + mem[_352] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = (31540000 * 9 * _314 / 10) + (31540000 * mem[_352])
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(4 * ceil32(return_data.size)) + 224] = 26
        mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).supplyRatePerBlock() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 288] = 3
        mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        mem[(4 * ceil32(return_data.size)) + 352] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(4 * ceil32(return_data.size)) + 384] = wantAddress
        mem[(4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 420] = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        mem[(4 * ceil32(return_data.size)) + 452] = 64
        mem[(4 * ceil32(return_data.size)) + 484] = 3
        idx = 0
        s = (4 * ceil32(return_data.size)) + 320
        t = (4 * ceil32(return_data.size)) + 516
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 516 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _213 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
        require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 447
        _215 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448 <= test266151307()
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448
        mem[(6 * ceil32(return_data.size)) + 416] = _215
        require return_data.size >= _213 + (32 * _215) + 32
        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _215] = mem[(4 * ceil32(return_data.size)) + _213 + 448 len 32 * _215]
        require _215 - 1 < _215
        _313 = mem[(32 * _215 - 1) + (6 * ceil32(return_data.size)) + 448]
        if not mem[(32 * _215 - 1) + (6 * ceil32(return_data.size)) + 448]:
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).supplyRatePerBlock() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _319 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_319] < mem[_319]:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[_319]:
                return 0
            if 31540000 * mem[_319] / mem[_319] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[mem[64]] = 31540000 * mem[_319]
        else:
            if not mem[(32 * _215 - 1) + (6 * ceil32(return_data.size)) + 448]:
                _324 = mem[64]
                mem[64] = mem[64] + 64
                mem[_324] = 26
                mem[_324 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _345 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_345] < mem[_345]:
                    revert with 0, 'SafeMath: addition overflow'
                if not mem[_345]:
                    return 0
                if 31540000 * mem[_345] / mem[_345] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = 31540000 * mem[_345]
            else:
                if 9 * mem[(32 * _215 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _215 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                _327 = mem[64]
                mem[64] = mem[64] + 64
                mem[_327] = 26
                mem[_327 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _349 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if (9 * _313 / 10) + mem[_349] < mem[_349]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (9 * _313 / 10) + mem[_349]:
                    return 0
                if (31540000 * 9 * _313 / 10) + (31540000 * mem[_349]) / (9 * _313 / 10) + mem[_349] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = (31540000 * 9 * _313 / 10) + (31540000 * mem[_349])
    return memory
      from mem[64]
       len 32
}

function aprAfterDeposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = address(cTokenAddress)
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(cTokenAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).totalBorrows() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).totalReserves() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).reserveFactorMantissa() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).interestRateModel() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(7 * ceil32(return_data.size)) + 100] = arg1 + ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getSupplyRate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
            gas gas_remaining wei
           args arg1 + ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 100] = address(cTokenAddress)
    require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
    staticcall 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.compSpeeds(address arg1) with:
            gas gas_remaining wei
           args address(cTokenAddress)
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).exchangeRateStored() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).0x18160ddd with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(12 * ceil32(return_data.size)) + 96] = 26
        mem[(12 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if arg1 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if not ext_call.return_data[0]:
            mem[(12 * ceil32(return_data.size)) + 160] = 26
            mem[(12 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if not arg1:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / arg1:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 224] = 3
            mem[(12 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            mem[(12 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(12 * ceil32(return_data.size)) + 320] = wantAddress
            mem[(12 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 356] = 0 / arg1
            mem[(12 * ceil32(return_data.size)) + 388] = 64
            mem[(12 * ceil32(return_data.size)) + 420] = 3
            idx = 0
            s = (12 * ceil32(return_data.size)) + 256
            t = (12 * ceil32(return_data.size)) + 452
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0 / arg1, Array(len=3, data=mem[(12 * ceil32(return_data.size)) + 452 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _326 = mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32
            require mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + return_data.size + 352 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 383
            _330 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]
            require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352] <= test266151307()
            require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 384 <= test266151307()
            mem[(13 * ceil32(return_data.size)) + 352] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]
            require return_data.size >= _326 + (32 * _330) + 32
            mem[(13 * ceil32(return_data.size)) + 384 len 32 * _330] = mem[(12 * ceil32(return_data.size)) + _326 + 384 len 32 * _330]
            require _330 - 1 < _330
            if not mem[(32 * _330 - 1) + (13 * ceil32(return_data.size)) + 384]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            if not mem[(32 * _330 - 1) + (13 * ceil32(return_data.size)) + 384]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            if 9 * mem[(32 * _330 - 1) + (13 * ceil32(return_data.size)) + 384] / mem[(32 * _330 - 1) + (13 * ceil32(return_data.size)) + 384] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _330 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (9 * mem[(32 * _330 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0]:
                return 0
            if (31540000 * 9 * mem[(32 * _330 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _330 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((31540000 * 9 * mem[(32 * _330 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]))
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(12 * ceil32(return_data.size)) + 160] = 26
        mem[(12 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
        if not arg1:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * ext_call.return_data[0] / arg1:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        mem[(12 * ceil32(return_data.size)) + 224] = 3
        mem[(12 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        mem[(12 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(12 * ceil32(return_data.size)) + 320] = wantAddress
        mem[(12 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(12 * ceil32(return_data.size)) + 356] = 10^18 * ext_call.return_data[0] / arg1
        mem[(12 * ceil32(return_data.size)) + 388] = 64
        mem[(12 * ceil32(return_data.size)) + 420] = 3
        idx = 0
        s = (12 * ceil32(return_data.size)) + 256
        t = (12 * ceil32(return_data.size)) + 452
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^18 * ext_call.return_data[0] / arg1, Array(len=3, data=mem[(12 * ceil32(return_data.size)) + 452 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(12 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (13 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _325 = mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32
        require mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + return_data.size + 352 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 383
        _329 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]
        require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352] <= test266151307()
        require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 384 <= test266151307()
        mem[(13 * ceil32(return_data.size)) + 352] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]
        require return_data.size >= _325 + (32 * _329) + 32
        mem[(13 * ceil32(return_data.size)) + 384 len 32 * _329] = mem[(12 * ceil32(return_data.size)) + _325 + 384 len 32 * _329]
        require _329 - 1 < _329
        if not mem[(32 * _329 - 1) + (13 * ceil32(return_data.size)) + 384]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if not mem[(32 * _329 - 1) + (13 * ceil32(return_data.size)) + 384]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if 9 * mem[(32 * _329 - 1) + (13 * ceil32(return_data.size)) + 384] / mem[(32 * _329 - 1) + (13 * ceil32(return_data.size)) + 384] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if (9 * mem[(32 * _329 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (9 * mem[(32 * _329 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0]:
            return 0
        if (31540000 * 9 * mem[(32 * _329 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _329 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((31540000 * 9 * mem[(32 * _329 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[(12 * ceil32(return_data.size)) + 96] = 26
    mem[(12 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
    if arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            return 0
        if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return (31540000 * ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(12 * ceil32(return_data.size)) + 160] = 26
        mem[(12 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
        if not arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        mem[(12 * ceil32(return_data.size)) + 224] = 3
        mem[(12 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        mem[(12 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(12 * ceil32(return_data.size)) + 320] = wantAddress
        mem[(12 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(12 * ceil32(return_data.size)) + 356] = 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        mem[(12 * ceil32(return_data.size)) + 388] = 64
        mem[(12 * ceil32(return_data.size)) + 420] = 3
        idx = 0
        s = (12 * ceil32(return_data.size)) + 256
        t = (12 * ceil32(return_data.size)) + 452
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), Array(len=3, data=mem[(12 * ceil32(return_data.size)) + 452 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(12 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (13 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _324 = mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
        require mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + return_data.size + 352 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 383
        _328 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
        require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352] <= test266151307()
        require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384 <= test266151307()
        mem[(13 * ceil32(return_data.size)) + 352] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
        require return_data.size >= _324 + (32 * _328) + 32
        mem[(13 * ceil32(return_data.size)) + 384 len 32 * _328] = mem[(12 * ceil32(return_data.size)) + _324 + 384 len 32 * _328]
        require _328 - 1 < _328
        if not mem[(32 * _328 - 1) + (13 * ceil32(return_data.size)) + 384]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if not mem[(32 * _328 - 1) + (13 * ceil32(return_data.size)) + 384]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if 9 * mem[(32 * _328 - 1) + (13 * ceil32(return_data.size)) + 384] / mem[(32 * _328 - 1) + (13 * ceil32(return_data.size)) + 384] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if (9 * mem[(32 * _328 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (9 * mem[(32 * _328 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0]:
            return 0
        if (31540000 * 9 * mem[(32 * _328 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _328 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((31540000 * 9 * mem[(32 * _328 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]))
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[(12 * ceil32(return_data.size)) + 160] = 26
    mem[(12 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
    if not arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            return 0
        if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return (31540000 * ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + 224] = 3
    mem[(12 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
    mem[(12 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[(12 * ceil32(return_data.size)) + 320] = wantAddress
    mem[(12 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(12 * ceil32(return_data.size)) + 356] = 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    mem[(12 * ceil32(return_data.size)) + 388] = 64
    mem[(12 * ceil32(return_data.size)) + 420] = 3
    idx = 0
    s = (12 * ceil32(return_data.size)) + 256
    t = (12 * ceil32(return_data.size)) + 452
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), Array(len=3, data=mem[(12 * ceil32(return_data.size)) + 452 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(12 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (13 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _323 = mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
    require mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
    require (12 * ceil32(return_data.size)) + return_data.size + 352 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 383
    _327 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
    require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352] <= test266151307()
    require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384 <= test266151307()
    mem[(13 * ceil32(return_data.size)) + 352] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
    require return_data.size >= _323 + (32 * _327) + 32
    mem[(13 * ceil32(return_data.size)) + 384 len 32 * _327] = mem[(12 * ceil32(return_data.size)) + _323 + 384 len 32 * _327]
    require _327 - 1 < _327
    if not mem[(32 * _327 - 1) + (13 * ceil32(return_data.size)) + 384]:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            return 0
        if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return (31540000 * ext_call.return_data[0])
    if not mem[(32 * _327 - 1) + (13 * ceil32(return_data.size)) + 384]:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            return 0
        if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return (31540000 * ext_call.return_data[0])
    if 9 * mem[(32 * _327 - 1) + (13 * ceil32(return_data.size)) + 384] / mem[(32 * _327 - 1) + (13 * ceil32(return_data.size)) + 384] != 9:
        revert with 0, 'SafeMath: multiplication overflow'
    if (9 * mem[(32 * _327 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not (9 * mem[(32 * _327 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0]:
        return 0
    if (31540000 * 9 * mem[(32 * _327 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _327 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] != 31540000:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((31540000 * 9 * mem[(32 * _327 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]))
}

function sub_fdb03723(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    mem[100] = address(cTokenAddress)
    require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
    staticcall 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.compSpeeds(address arg1) with:
            gas gas_remaining wei
           args address(cTokenAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).exchangeRateStored() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).0x18160ddd with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 96] = 26
        mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if arg2:
            if arg1 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not arg1:
                return 0
            if not ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 160] = 26
                mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                if not arg1:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / arg1:
                    return 0
                mem[(4 * ceil32(return_data.size)) + 224] = 3
                mem[(4 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                mem[(4 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[(4 * ceil32(return_data.size)) + 320] = wantAddress
                mem[(4 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 356] = 0 / arg1
                mem[(4 * ceil32(return_data.size)) + 388] = 64
                mem[(4 * ceil32(return_data.size)) + 420] = 3
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = (4 * ceil32(return_data.size)) + 452
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / arg1, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 452 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _382 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32
                require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 352 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 383
                _390 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 384 <= test266151307()
                mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]
                require return_data.size >= _382 + (32 * _390) + 32
                mem[(6 * ceil32(return_data.size)) + 384 len 32 * _390] = mem[(4 * ceil32(return_data.size)) + _382 + 384 len 32 * _390]
                require _390 - 1 < _390
                if not mem[(32 * _390 - 1) + (6 * ceil32(return_data.size)) + 384]:
                    return 0
                if not mem[(32 * _390 - 1) + (6 * ceil32(return_data.size)) + 384]:
                    return 0
                if 9 * mem[(32 * _390 - 1) + (6 * ceil32(return_data.size)) + 384] / mem[(32 * _390 - 1) + (6 * ceil32(return_data.size)) + 384] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9 * mem[(32 * _390 - 1) + (6 * ceil32(return_data.size)) + 384] / 10)
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(4 * ceil32(return_data.size)) + 160] = 26
            mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if not arg1:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * ext_call.return_data[0] / arg1:
                return 0
            mem[(4 * ceil32(return_data.size)) + 224] = 3
            mem[(4 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            mem[(4 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(4 * ceil32(return_data.size)) + 320] = wantAddress
            mem[(4 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 356] = 10^18 * ext_call.return_data[0] / arg1
            mem[(4 * ceil32(return_data.size)) + 388] = 64
            mem[(4 * ceil32(return_data.size)) + 420] = 3
            idx = 0
            s = (4 * ceil32(return_data.size)) + 256
            t = (4 * ceil32(return_data.size)) + 452
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^18 * ext_call.return_data[0] / arg1, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 452 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _381 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32
            require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 352 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 383
            _389 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 384 <= test266151307()
            mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]
            require return_data.size >= _381 + (32 * _389) + 32
            mem[(6 * ceil32(return_data.size)) + 384 len 32 * _389] = mem[(4 * ceil32(return_data.size)) + _381 + 384 len 32 * _389]
            require _389 - 1 < _389
            if not mem[(32 * _389 - 1) + (6 * ceil32(return_data.size)) + 384]:
                return 0
            if not mem[(32 * _389 - 1) + (6 * ceil32(return_data.size)) + 384]:
                return 0
            if 9 * mem[(32 * _389 - 1) + (6 * ceil32(return_data.size)) + 384] / mem[(32 * _389 - 1) + (6 * ceil32(return_data.size)) + 384] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            return (9 * mem[(32 * _389 - 1) + (6 * ceil32(return_data.size)) + 384] / 10)
        mem[(4 * ceil32(return_data.size)) + 160] = 30
        mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
        if arg1 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not -arg1:
            return 0
        if not ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 224] = 26
            mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
            if not -arg1:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / -arg1:
                return 0
            mem[(4 * ceil32(return_data.size)) + 288] = 3
            mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            mem[(4 * ceil32(return_data.size)) + 352] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(4 * ceil32(return_data.size)) + 384] = wantAddress
            mem[(4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 420] = 0 / -arg1
            mem[(4 * ceil32(return_data.size)) + 452] = 64
            mem[(4 * ceil32(return_data.size)) + 484] = 3
            idx = 0
            s = (4 * ceil32(return_data.size)) + 320
            t = (4 * ceil32(return_data.size)) + 516
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0 / -arg1, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 516 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            _380 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32
            require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 447
            _388 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]) + 448 <= test266151307()
            mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]
            require return_data.size >= _380 + (32 * _388) + 32
            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _388] = mem[(4 * ceil32(return_data.size)) + _380 + 448 len 32 * _388]
            require _388 - 1 < _388
            if not mem[(32 * _388 - 1) + (6 * ceil32(return_data.size)) + 448]:
                return 0
            if not mem[(32 * _388 - 1) + (6 * ceil32(return_data.size)) + 448]:
                return 0
            if 9 * mem[(32 * _388 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _388 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            return (9 * mem[(32 * _388 - 1) + (6 * ceil32(return_data.size)) + 448] / 10)
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(4 * ceil32(return_data.size)) + 224] = 26
        mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
        if not -arg1:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * ext_call.return_data[0] / -arg1:
            return 0
        mem[(4 * ceil32(return_data.size)) + 288] = 3
        mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        mem[(4 * ceil32(return_data.size)) + 352] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(4 * ceil32(return_data.size)) + 384] = wantAddress
        mem[(4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 420] = 10^18 * ext_call.return_data[0] / -arg1
        mem[(4 * ceil32(return_data.size)) + 452] = 64
        mem[(4 * ceil32(return_data.size)) + 484] = 3
        idx = 0
        s = (4 * ceil32(return_data.size)) + 320
        t = (4 * ceil32(return_data.size)) + 516
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^18 * ext_call.return_data[0] / -arg1, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 516 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _379 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 447
        _387 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]) + 448 <= test266151307()
        mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]
        require return_data.size >= _379 + (32 * _387) + 32
        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _387] = mem[(4 * ceil32(return_data.size)) + _379 + 448 len 32 * _387]
        require _387 - 1 < _387
        if not mem[(32 * _387 - 1) + (6 * ceil32(return_data.size)) + 448]:
            return 0
        if not mem[(32 * _387 - 1) + (6 * ceil32(return_data.size)) + 448]:
            return 0
        if 9 * mem[(32 * _387 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _387 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        return (9 * mem[(32 * _387 - 1) + (6 * ceil32(return_data.size)) + 448] / 10)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[(4 * ceil32(return_data.size)) + 96] = 26
    mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
    if arg2:
        if arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            return 0
        if not ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 160] = 26
            mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if not arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                return 0
            mem[(4 * ceil32(return_data.size)) + 224] = 3
            mem[(4 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            mem[(4 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(4 * ceil32(return_data.size)) + 320] = wantAddress
            mem[(4 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 356] = 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            mem[(4 * ceil32(return_data.size)) + 388] = 64
            mem[(4 * ceil32(return_data.size)) + 420] = 3
            idx = 0
            s = (4 * ceil32(return_data.size)) + 256
            t = (4 * ceil32(return_data.size)) + 452
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 452 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _378 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
            require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 352 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 383
            _386 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384 <= test266151307()
            mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
            require return_data.size >= _378 + (32 * _386) + 32
            mem[(6 * ceil32(return_data.size)) + 384 len 32 * _386] = mem[(4 * ceil32(return_data.size)) + _378 + 384 len 32 * _386]
            require _386 - 1 < _386
            if not mem[(32 * _386 - 1) + (6 * ceil32(return_data.size)) + 384]:
                return 0
            if not mem[(32 * _386 - 1) + (6 * ceil32(return_data.size)) + 384]:
                return 0
            if 9 * mem[(32 * _386 - 1) + (6 * ceil32(return_data.size)) + 384] / mem[(32 * _386 - 1) + (6 * ceil32(return_data.size)) + 384] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            return (9 * mem[(32 * _386 - 1) + (6 * ceil32(return_data.size)) + 384] / 10)
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(4 * ceil32(return_data.size)) + 160] = 26
        mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
        if not arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            return 0
        mem[(4 * ceil32(return_data.size)) + 224] = 3
        mem[(4 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        mem[(4 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(4 * ceil32(return_data.size)) + 320] = wantAddress
        mem[(4 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 356] = 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        mem[(4 * ceil32(return_data.size)) + 388] = 64
        mem[(4 * ceil32(return_data.size)) + 420] = 3
        idx = 0
        s = (4 * ceil32(return_data.size)) + 256
        t = (4 * ceil32(return_data.size)) + 452
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 452 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _377 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
        require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 352 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 383
        _385 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384 <= test266151307()
        mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
        require return_data.size >= _377 + (32 * _385) + 32
        mem[(6 * ceil32(return_data.size)) + 384 len 32 * _385] = mem[(4 * ceil32(return_data.size)) + _377 + 384 len 32 * _385]
        require _385 - 1 < _385
        if not mem[(32 * _385 - 1) + (6 * ceil32(return_data.size)) + 384]:
            return 0
        if not mem[(32 * _385 - 1) + (6 * ceil32(return_data.size)) + 384]:
            return 0
        if 9 * mem[(32 * _385 - 1) + (6 * ceil32(return_data.size)) + 384] / mem[(32 * _385 - 1) + (6 * ceil32(return_data.size)) + 384] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        return (9 * mem[(32 * _385 - 1) + (6 * ceil32(return_data.size)) + 384] / 10)
    mem[(4 * ceil32(return_data.size)) + 160] = 30
    mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
    if arg1 > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1:
        return 0
    if not ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 224] = 26
        mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1:
            return 0
        mem[(4 * ceil32(return_data.size)) + 288] = 3
        mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        mem[(4 * ceil32(return_data.size)) + 352] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(4 * ceil32(return_data.size)) + 384] = wantAddress
        mem[(4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 420] = 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1
        mem[(4 * ceil32(return_data.size)) + 452] = 64
        mem[(4 * ceil32(return_data.size)) + 484] = 3
        idx = 0
        s = (4 * ceil32(return_data.size)) + 320
        t = (4 * ceil32(return_data.size)) + 516
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 516 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _376 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 447
        _384 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 448 <= test266151307()
        mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]
        require return_data.size >= _376 + (32 * _384) + 32
        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _384] = mem[(4 * ceil32(return_data.size)) + _376 + 448 len 32 * _384]
        require _384 - 1 < _384
        if not mem[(32 * _384 - 1) + (6 * ceil32(return_data.size)) + 448]:
            return 0
        if not mem[(32 * _384 - 1) + (6 * ceil32(return_data.size)) + 448]:
            return 0
        if 9 * mem[(32 * _384 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _384 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        return (9 * mem[(32 * _384 - 1) + (6 * ceil32(return_data.size)) + 448] / 10)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[(4 * ceil32(return_data.size)) + 224] = 26
    mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1:
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1:
        return 0
    mem[(4 * ceil32(return_data.size)) + 288] = 3
    mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
    mem[(4 * ceil32(return_data.size)) + 352] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[(4 * ceil32(return_data.size)) + 384] = wantAddress
    mem[(4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 420] = 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1
    mem[(4 * ceil32(return_data.size)) + 452] = 64
    mem[(4 * ceil32(return_data.size)) + 484] = 3
    idx = 0
    s = (4 * ceil32(return_data.size)) + 320
    t = (4 * ceil32(return_data.size)) + 516
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 516 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 416
    require return_data.size >= 32
    _375 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32
    require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 447
    _383 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416] <= test266151307()
    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 448 <= test266151307()
    mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]
    require return_data.size >= _375 + (32 * _383) + 32
    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _383] = mem[(4 * ceil32(return_data.size)) + _375 + 448 len 32 * _383]
    require _383 - 1 < _383
    if not mem[(32 * _383 - 1) + (6 * ceil32(return_data.size)) + 448]:
        return 0
    if not mem[(32 * _383 - 1) + (6 * ceil32(return_data.size)) + 448]:
        return 0
    if 9 * mem[(32 * _383 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _383 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
        revert with 0, 'SafeMath: multiplication overflow'
    return (9 * mem[(32 * _383 - 1) + (6 * ceil32(return_data.size)) + 448] / 10)
}

function weightedApr() payable {
    mem[100] = address(cTokenAddress)
    require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
    staticcall 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.compSpeeds(address arg1) with:
            gas gas_remaining wei
           args address(cTokenAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).exchangeRateStored() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cTokenAddress))
    staticcall address(cTokenAddress).0x18160ddd with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(cTokenAddress))
        staticcall address(cTokenAddress).supplyRatePerBlock() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).0x70a08231 with:
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
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).exchangeRateStored() with:
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
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).0x70a08231 with:
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
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).exchangeRateStored() with:
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
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[(4 * ceil32(return_data.size)) + 96] = 26
    mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
    mem[(4 * ceil32(return_data.size)) + 160] = 30
    mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
    if 0 > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        require ext_code.size(address(cTokenAddress))
        staticcall address(cTokenAddress).supplyRatePerBlock() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).0x70a08231 with:
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
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).exchangeRateStored() with:
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
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).0x70a08231 with:
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
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).exchangeRateStored() with:
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
    if not ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 224] = 26
        mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).supplyRatePerBlock() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
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
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).exchangeRateStored() with:
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
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
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
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).exchangeRateStored() with:
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
        mem[(4 * ceil32(return_data.size)) + 288] = 3
        mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        mem[(4 * ceil32(return_data.size)) + 352] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(4 * ceil32(return_data.size)) + 384] = wantAddress
        mem[(4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 420] = 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        mem[(4 * ceil32(return_data.size)) + 452] = 64
        mem[(4 * ceil32(return_data.size)) + 484] = 3
        idx = 0
        s = (4 * ceil32(return_data.size)) + 320
        t = (4 * ceil32(return_data.size)) + 516
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 516 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _1254 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
        require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 447
        _1256 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448 <= test266151307()
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448
        mem[(6 * ceil32(return_data.size)) + 416] = _1256
        require return_data.size >= _1254 + (32 * _1256) + 32
        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1256] = mem[(4 * ceil32(return_data.size)) + _1254 + 448 len 32 * _1256]
        require _1256 - 1 < _1256
        _1978 = mem[(32 * _1256 - 1) + (6 * ceil32(return_data.size)) + 448]
        if not mem[(32 * _1256 - 1) + (6 * ceil32(return_data.size)) + 448]:
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).supplyRatePerBlock() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1984 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1989 = mem[_1984]
            if mem[_1984] < mem[_1984]:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[_1984]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2031 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2039 = mem[_2031]
                if mem[_2031] < dustThreshold:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2088 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2088] < mem[_2088]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2058 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2073 = mem[_2058]
                    if not _2039:
                        _2116 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2116] = 26
                        mem[_2116 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2230 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2230] < mem[_2230]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if mem[_2058] * _2039 / _2039 != mem[_2058]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2127 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2127] = 26
                        mem[_2127 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2254 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (_2073 * _2039 / 10^18) + mem[_2254] < mem[_2254]:
                            revert with 0, 'SafeMath: addition overflow'
                return 0
            if 31540000 * mem[_1984] / mem[_1984] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2035 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2042 = mem[_2035]
            if mem[_2035] < dustThreshold:
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2094 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2094] < mem[_2094]:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_2094] < dustThreshold:
                    if 31540000 * _1989:
                        if 0 / 31540000 * _1989:
                            revert with 0, 'SafeMath: multiplication overflow'
                        else:
                            return 0
                    else:
                        return 0
                if not 31540000 * _1989:
                    return 0
                if 31540000 * mem[_2094] * _1989 / 31540000 * _1989 != mem[_2094]:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = 31540000 * mem[_2094] * _1989
            else:
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2065 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2081 = mem[_2065]
                if not _2042:
                    _2126 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2126] = 26
                    mem[_2126 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2249] < mem[_2249]:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_2249] < dustThreshold:
                        if 31540000 * _1989:
                            if 0 / 31540000 * _1989:
                                revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if not 31540000 * _1989:
                        return 0
                    if 31540000 * mem[_2249] * _1989 / 31540000 * _1989 != mem[_2249]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 31540000 * mem[_2249] * _1989
                else:
                    if mem[_2065] * _2042 / _2042 != mem[_2065]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2140 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2140] = 26
                    mem[_2140 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2274 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if (_2081 * _2042 / 10^18) + mem[_2274] < mem[_2274]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (_2081 * _2042 / 10^18) + mem[_2274] < dustThreshold:
                        if 31540000 * _1989:
                            if 0 / 31540000 * _1989:
                                revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if not 31540000 * _1989:
                        return 0
                    if (31540000 * _2081 * _2042 / 10^18 * _1989) + (31540000 * mem[_2274] * _1989) / 31540000 * _1989 != (_2081 * _2042 / 10^18) + mem[_2274]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = (31540000 * _2081 * _2042 / 10^18 * _1989) + (31540000 * mem[_2274] * _1989)
        else:
            if not mem[(32 * _1256 - 1) + (6 * ceil32(return_data.size)) + 448]:
                _1990 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1990] = 26
                mem[_1990 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2010 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2018 = mem[_2010]
                if mem[_2010] < mem[_2010]:
                    revert with 0, 'SafeMath: addition overflow'
                if not mem[_2010]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2096 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2110 = mem[_2096]
                    if mem[_2096] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2190 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2190] < mem[_2190]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require ext_code.size(address(cTokenAddress))
                        staticcall address(cTokenAddress).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2155 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2173 = mem[_2155]
                        if not _2110:
                            _2236 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2236] = 26
                            mem[_2236 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2372 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_2372] < mem[_2372]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2155] * _2110 / _2110 != mem[_2155]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2258 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2258] = 26
                            mem[_2258 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2394 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_2173 * _2110 / 10^18) + mem[_2394] < mem[_2394]:
                                revert with 0, 'SafeMath: addition overflow'
                    return 0
                if 31540000 * mem[_2010] / mem[_2010] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2102 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2118 = mem[_2102]
                if mem[_2102] < dustThreshold:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2198] < mem[_2198]:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_2198] < dustThreshold:
                        if 31540000 * _2018:
                            if 0 / 31540000 * _2018:
                                revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if not 31540000 * _2018:
                        return 0
                    if 31540000 * mem[_2198] * _2018 / 31540000 * _2018 != mem[_2198]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 31540000 * mem[_2198] * _2018
                else:
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2165 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2181 = mem[_2165]
                    if not _2118:
                        _2257 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2257] = 26
                        mem[_2257 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2389 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2389] < mem[_2389]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_2389] < dustThreshold:
                            if 31540000 * _2018:
                                if 0 / 31540000 * _2018:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _2018:
                            return 0
                        if 31540000 * mem[_2389] * _2018 / 31540000 * _2018 != mem[_2389]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_2389] * _2018
                    else:
                        if mem[_2165] * _2118 / _2118 != mem[_2165]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2284 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2284] = 26
                        mem[_2284 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2413 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (_2181 * _2118 / 10^18) + mem[_2413] < mem[_2413]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (_2181 * _2118 / 10^18) + mem[_2413] < dustThreshold:
                            if 31540000 * _2018:
                                if 0 / 31540000 * _2018:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _2018:
                            return 0
                        if (31540000 * _2181 * _2118 / 10^18 * _2018) + (31540000 * mem[_2413] * _2018) / 31540000 * _2018 != (_2181 * _2118 / 10^18) + mem[_2413]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * _2181 * _2118 / 10^18 * _2018) + (31540000 * mem[_2413] * _2018)
            else:
                if 9 * mem[(32 * _1256 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _1256 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1993 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1993] = 26
                mem[_1993 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2014 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2022 = mem[_2014]
                if (9 * _1978 / 10) + mem[_2014] < mem[_2014]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (9 * _1978 / 10) + mem[_2014]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2101 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2117 = mem[_2101]
                    if mem[_2101] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2197 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2197] < mem[_2197]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require ext_code.size(address(cTokenAddress))
                        staticcall address(cTokenAddress).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2179 = mem[_2163]
                        if not _2117:
                            _2256 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2256] = 26
                            mem[_2256 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2386 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_2386] < mem[_2386]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2163] * _2117 / _2117 != mem[_2163]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2281 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2281] = 26
                            mem[_2281 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2412 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_2179 * _2117 / 10^18) + mem[_2412] < mem[_2412]:
                                revert with 0, 'SafeMath: addition overflow'
                    return 0
                if (31540000 * 9 * _1978 / 10) + (31540000 * mem[_2014]) / (9 * _1978 / 10) + mem[_2014] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2109 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2130 = mem[_2109]
                if mem[_2109] < dustThreshold:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2205 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2205] < mem[_2205]:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_2205] < dustThreshold:
                        if (31540000 * 9 * _1978 / 10) + (31540000 * _2022):
                            if 0 / (31540000 * 9 * _1978 / 10) + (31540000 * _2022):
                                revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if not (31540000 * 9 * _1978 / 10) + (31540000 * _2022):
                        return 0
                    if (31540000 * 9 * _1978 / 10 * mem[_2205]) + (31540000 * _2022 * mem[_2205]) / (31540000 * 9 * _1978 / 10) + (31540000 * _2022) != mem[_2205]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = (31540000 * 9 * _1978 / 10 * mem[_2205]) + (31540000 * _2022 * mem[_2205])
                else:
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2188 = mem[_2171]
                    if not _2130:
                        _2280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2280] = 26
                        mem[_2280 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2407 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2407] < mem[_2407]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_2407] < dustThreshold:
                            if (31540000 * 9 * _1978 / 10) + (31540000 * _2022):
                                if 0 / (31540000 * 9 * _1978 / 10) + (31540000 * _2022):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not (31540000 * 9 * _1978 / 10) + (31540000 * _2022):
                            return 0
                        if (31540000 * 9 * _1978 / 10 * mem[_2407]) + (31540000 * _2022 * mem[_2407]) / (31540000 * 9 * _1978 / 10) + (31540000 * _2022) != mem[_2407]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * 9 * _1978 / 10 * mem[_2407]) + (31540000 * _2022 * mem[_2407])
                    else:
                        if mem[_2171] * _2130 / _2130 != mem[_2171]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2299 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2299] = 26
                        mem[_2299 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2433 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (_2188 * _2130 / 10^18) + mem[_2433] < mem[_2433]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (_2188 * _2130 / 10^18) + mem[_2433] < dustThreshold:
                            if (31540000 * 9 * _1978 / 10) + (31540000 * _2022):
                                if 0 / (31540000 * 9 * _1978 / 10) + (31540000 * _2022):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not (31540000 * 9 * _1978 / 10) + (31540000 * _2022):
                            return 0
                        if (31540000 * 9 * _1978 / 10 * _2188 * _2130 / 10^18) + (31540000 * _2022 * _2188 * _2130 / 10^18) + (31540000 * 9 * _1978 / 10 * mem[_2433]) + (31540000 * _2022 * mem[_2433]) / (31540000 * 9 * _1978 / 10) + (31540000 * _2022) != (_2188 * _2130 / 10^18) + mem[_2433]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * 9 * _1978 / 10 * _2188 * _2130 / 10^18) + (31540000 * _2022 * _2188 * _2130 / 10^18) + (31540000 * 9 * _1978 / 10 * mem[_2433]) + (31540000 * _2022 * mem[_2433])
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(4 * ceil32(return_data.size)) + 224] = 26
        mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).supplyRatePerBlock() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
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
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).exchangeRateStored() with:
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
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
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
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).exchangeRateStored() with:
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
        mem[(4 * ceil32(return_data.size)) + 288] = 3
        mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        mem[(4 * ceil32(return_data.size)) + 352] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(4 * ceil32(return_data.size)) + 384] = wantAddress
        mem[(4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 420] = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        mem[(4 * ceil32(return_data.size)) + 452] = 64
        mem[(4 * ceil32(return_data.size)) + 484] = 3
        idx = 0
        s = (4 * ceil32(return_data.size)) + 320
        t = (4 * ceil32(return_data.size)) + 516
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 516 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _1253 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
        require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 447
        _1255 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448 <= test266151307()
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448
        mem[(6 * ceil32(return_data.size)) + 416] = _1255
        require return_data.size >= _1253 + (32 * _1255) + 32
        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1255] = mem[(4 * ceil32(return_data.size)) + _1253 + 448 len 32 * _1255]
        require _1255 - 1 < _1255
        _1977 = mem[(32 * _1255 - 1) + (6 * ceil32(return_data.size)) + 448]
        if not mem[(32 * _1255 - 1) + (6 * ceil32(return_data.size)) + 448]:
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).supplyRatePerBlock() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1983 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1987 = mem[_1983]
            if mem[_1983] < mem[_1983]:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[_1983]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2029 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2037 = mem[_2029]
                if mem[_2029] < dustThreshold:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2085 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2085] < mem[_2085]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2055 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2069 = mem[_2055]
                    if not _2037:
                        _2112 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2112] = 26
                        mem[_2112 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2222 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2222] < mem[_2222]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if mem[_2055] * _2037 / _2037 != mem[_2055]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2120 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2120] = 26
                        mem[_2120 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (_2069 * _2037 / 10^18) + mem[_2242] < mem[_2242]:
                            revert with 0, 'SafeMath: addition overflow'
                return 0
            if 31540000 * mem[_1983] / mem[_1983] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2033 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2041 = mem[_2033]
            if mem[_2033] < dustThreshold:
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2091 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2091] < mem[_2091]:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_2091] < dustThreshold:
                    if 31540000 * _1987:
                        if 0 / 31540000 * _1987:
                            revert with 0, 'SafeMath: multiplication overflow'
                        else:
                            return 0
                    else:
                        return 0
                if not 31540000 * _1987:
                    return 0
                if 31540000 * mem[_2091] * _1987 / 31540000 * _1987 != mem[_2091]:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = 31540000 * mem[_2091] * _1987
            else:
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2061 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2077 = mem[_2061]
                if not _2041:
                    _2119 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2119] = 26
                    mem[_2119 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2237 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2237] < mem[_2237]:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_2237] < dustThreshold:
                        if 31540000 * _1987:
                            if 0 / 31540000 * _1987:
                                revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if not 31540000 * _1987:
                        return 0
                    if 31540000 * mem[_2237] * _1987 / 31540000 * _1987 != mem[_2237]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 31540000 * mem[_2237] * _1987
                else:
                    if mem[_2061] * _2041 / _2041 != mem[_2061]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2133 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2133] = 26
                    mem[_2133 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if (_2077 * _2041 / 10^18) + mem[_2261] < mem[_2261]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (_2077 * _2041 / 10^18) + mem[_2261] < dustThreshold:
                        if 31540000 * _1987:
                            if 0 / 31540000 * _1987:
                                revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if not 31540000 * _1987:
                        return 0
                    if (31540000 * _2077 * _2041 / 10^18 * _1987) + (31540000 * mem[_2261] * _1987) / 31540000 * _1987 != (_2077 * _2041 / 10^18) + mem[_2261]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = (31540000 * _2077 * _2041 / 10^18 * _1987) + (31540000 * mem[_2261] * _1987)
        else:
            if not mem[(32 * _1255 - 1) + (6 * ceil32(return_data.size)) + 448]:
                _1988 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1988] = 26
                mem[_1988 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2009 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2016 = mem[_2009]
                if mem[_2009] < mem[_2009]:
                    revert with 0, 'SafeMath: addition overflow'
                if not mem[_2009]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2093 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2106 = mem[_2093]
                    if mem[_2093] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2186 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2186] < mem[_2186]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require ext_code.size(address(cTokenAddress))
                        staticcall address(cTokenAddress).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2150 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2169 = mem[_2150]
                        if not _2106:
                            _2228 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2228] = 26
                            mem[_2228 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2364 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_2364] < mem[_2364]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2150] * _2106 / _2106 != mem[_2150]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2246 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2246] = 26
                            mem[_2246 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2384 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_2169 * _2106 / 10^18) + mem[_2384] < mem[_2384]:
                                revert with 0, 'SafeMath: addition overflow'
                    return 0
                if 31540000 * mem[_2009] / mem[_2009] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2099 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2114 = mem[_2099]
                if mem[_2099] < dustThreshold:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2194 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2194] < mem[_2194]:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_2194] < dustThreshold:
                        if 31540000 * _2016:
                            if 0 / 31540000 * _2016:
                                revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if not 31540000 * _2016:
                        return 0
                    if 31540000 * mem[_2194] * _2016 / 31540000 * _2016 != mem[_2194]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 31540000 * mem[_2194] * _2016
                else:
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2160 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2177 = mem[_2160]
                    if not _2114:
                        _2245 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2245] = 26
                        mem[_2245 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2379 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2379] < mem[_2379]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_2379] < dustThreshold:
                            if 31540000 * _2016:
                                if 0 / 31540000 * _2016:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _2016:
                            return 0
                        if 31540000 * mem[_2379] * _2016 / 31540000 * _2016 != mem[_2379]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_2379] * _2016
                    else:
                        if mem[_2160] * _2114 / _2114 != mem[_2160]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2271] = 26
                        mem[_2271 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2401 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (_2177 * _2114 / 10^18) + mem[_2401] < mem[_2401]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (_2177 * _2114 / 10^18) + mem[_2401] < dustThreshold:
                            if 31540000 * _2016:
                                if 0 / 31540000 * _2016:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _2016:
                            return 0
                        if (31540000 * _2177 * _2114 / 10^18 * _2016) + (31540000 * mem[_2401] * _2016) / 31540000 * _2016 != (_2177 * _2114 / 10^18) + mem[_2401]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * _2177 * _2114 / 10^18 * _2016) + (31540000 * mem[_2401] * _2016)
            else:
                if 9 * mem[(32 * _1255 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _1255 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1991 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1991] = 26
                mem[_1991 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2012 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2020 = mem[_2012]
                if (9 * _1977 / 10) + mem[_2012] < mem[_2012]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (9 * _1977 / 10) + mem[_2012]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2098 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2113 = mem[_2098]
                    if mem[_2098] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2193 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2193] < mem[_2193]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require ext_code.size(address(cTokenAddress))
                        staticcall address(cTokenAddress).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2175 = mem[_2158]
                        if not _2113:
                            _2244 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2244] = 26
                            mem[_2244 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2376 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_2376] < mem[_2376]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2158] * _2113 / _2113 != mem[_2158]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2268 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2268] = 26
                            mem[_2268 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2400 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_2175 * _2113 / 10^18) + mem[_2400] < mem[_2400]:
                                revert with 0, 'SafeMath: addition overflow'
                    return 0
                if (31540000 * 9 * _1977 / 10) + (31540000 * mem[_2012]) / (9 * _1977 / 10) + mem[_2012] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2105 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2123 = mem[_2105]
                if mem[_2105] < dustThreshold:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2201 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2201] < mem[_2201]:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_2201] < dustThreshold:
                        if (31540000 * 9 * _1977 / 10) + (31540000 * _2020):
                            if 0 / (31540000 * 9 * _1977 / 10) + (31540000 * _2020):
                                revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if not (31540000 * 9 * _1977 / 10) + (31540000 * _2020):
                        return 0
                    if (31540000 * 9 * _1977 / 10 * mem[_2201]) + (31540000 * _2020 * mem[_2201]) / (31540000 * 9 * _1977 / 10) + (31540000 * _2020) != mem[_2201]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = (31540000 * 9 * _1977 / 10 * mem[_2201]) + (31540000 * _2020 * mem[_2201])
                else:
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2167 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2184 = mem[_2167]
                    if not _2123:
                        _2267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2267] = 26
                        mem[_2267 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2395 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2395] < mem[_2395]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_2395] < dustThreshold:
                            if (31540000 * 9 * _1977 / 10) + (31540000 * _2020):
                                if 0 / (31540000 * 9 * _1977 / 10) + (31540000 * _2020):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not (31540000 * 9 * _1977 / 10) + (31540000 * _2020):
                            return 0
                        if (31540000 * 9 * _1977 / 10 * mem[_2395]) + (31540000 * _2020 * mem[_2395]) / (31540000 * 9 * _1977 / 10) + (31540000 * _2020) != mem[_2395]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * 9 * _1977 / 10 * mem[_2395]) + (31540000 * _2020 * mem[_2395])
                    else:
                        if mem[_2167] * _2123 / _2123 != mem[_2167]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2291 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2291] = 26
                        mem[_2291 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2421 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (_2184 * _2123 / 10^18) + mem[_2421] < mem[_2421]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (_2184 * _2123 / 10^18) + mem[_2421] < dustThreshold:
                            if (31540000 * 9 * _1977 / 10) + (31540000 * _2020):
                                if 0 / (31540000 * 9 * _1977 / 10) + (31540000 * _2020):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not (31540000 * 9 * _1977 / 10) + (31540000 * _2020):
                            return 0
                        if (31540000 * 9 * _1977 / 10 * _2184 * _2123 / 10^18) + (31540000 * _2020 * _2184 * _2123 / 10^18) + (31540000 * 9 * _1977 / 10 * mem[_2421]) + (31540000 * _2020 * mem[_2421]) / (31540000 * 9 * _1977 / 10) + (31540000 * _2020) != (_2184 * _2123 / 10^18) + mem[_2421]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * 9 * _1977 / 10 * _2184 * _2123 / 10^18) + (31540000 * _2020 * _2184 * _2123 / 10^18) + (31540000 * 9 * _1977 / 10 * mem[_2421]) + (31540000 * _2020 * mem[_2421])
    return memory
      from mem[64]
       len 32
}

function withdrawAll() payable {
    if msg.sender == address(strategyAddress):
        mem[100] = address(cTokenAddress)
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(cTokenAddress)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).0x70a08231 with:
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
            if ext_call.return_data[0]:
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
                        require uint32(stor8), mem[132 len 28] == bool(uint32(stor8), mem[132 len 28])
                        if not uint32(stor8), mem[132 len 28]:
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
            require ext_code.size(address(cTokenAddress))
            staticcall address(cTokenAddress).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 96] = 26
                mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[(2 * ceil32(return_data.size)) + 164] = this.address
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / ext_call.return_data[0] <= 2:
                    mem[(4 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        mem[(6 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 160] = 68
                        mem[(6 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                        mem[(6 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                        mem[(6 * ceil32(return_data.size)) + 260] = 32
                        mem[(6 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                        mem[(6 * ceil32(return_data.size)) + 392] = 0
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
                                require uint32(stor8), mem[132 len 28] == bool(uint32(stor8), mem[132 len 28])
                                if not uint32(stor8), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 356] == bool(mem[(6 * ceil32(return_data.size)) + 356])
                                if not mem[(6 * ceil32(return_data.size)) + 356]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if ext_call.return_data[0] <= (0 / ext_call.return_data[0]) - 1:
                        mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(cTokenAddress))
                        call address(cTokenAddress).redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(6 * ceil32(return_data.size)) + 164] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
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
                                    require uint32(stor8), mem[132 len 28] == bool(uint32(stor8), mem[132 len 28])
                                    if not uint32(stor8), mem[132 len 28]:
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
                        return 1
                    mem[(4 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(address(cTokenAddress))
                    call address(cTokenAddress).mint(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 164] = address(cTokenAddress)
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(cTokenAddress)
                    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(address(cTokenAddress))
                        call address(cTokenAddress).redeem(uint256 arg1) with:
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
                        if ext_call.return_data[0]:
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
                                    require uint32(stor8), mem[132 len 28] == bool(uint32(stor8), mem[132 len 28])
                                    if not uint32(stor8), mem[132 len 28]:
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
                        require ext_code.size(address(cTokenAddress))
                        staticcall address(cTokenAddress).exchangeRateStored() with:
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
                            require ext_code.size(address(cTokenAddress))
                            call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            require ext_code.size(address(cTokenAddress))
                            call address(cTokenAddress).redeem(uint256 arg1) with:
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
                        if ext_call.return_data[0]:
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
                                    require uint32(stor8), mem[132 len 28] == bool(uint32(stor8), mem[132 len 28])
                                    if not uint32(stor8), mem[132 len 28]:
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
                mem[(2 * ceil32(return_data.size)) + 96] = 26
                mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[(2 * ceil32(return_data.size)) + 164] = this.address
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 2:
                    mem[(4 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        mem[(6 * ceil32(return_data.size)) + 196] = address(strategyAddress)
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 160] = 68
                        mem[(6 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor1)
                        mem[(6 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                        mem[(6 * ceil32(return_data.size)) + 260] = 32
                        mem[(6 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                        mem[(6 * ceil32(return_data.size)) + 392] = 0
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
                                require uint32(stor8), mem[132 len 28] == bool(uint32(stor8), mem[132 len 28])
                                if not uint32(stor8), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 356] == bool(mem[(6 * ceil32(return_data.size)) + 356])
                                if not mem[(6 * ceil32(return_data.size)) + 356]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if ext_call.return_data[0] <= (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 1:
                        mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(cTokenAddress))
                        call address(cTokenAddress).redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(6 * ceil32(return_data.size)) + 164] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
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
                                    require uint32(stor8), mem[132 len 28] == bool(uint32(stor8), mem[132 len 28])
                                    if not uint32(stor8), mem[132 len 28]:
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
                        return 1
                    mem[(4 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(address(cTokenAddress))
                    call address(cTokenAddress).mint(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 164] = address(cTokenAddress)
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(cTokenAddress)
                    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(address(cTokenAddress))
                        call address(cTokenAddress).redeem(uint256 arg1) with:
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
                        if ext_call.return_data[0]:
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
                                    require uint32(stor8), mem[132 len 28] == bool(uint32(stor8), mem[132 len 28])
                                    if not uint32(stor8), mem[132 len 28]:
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
                        require ext_code.size(address(cTokenAddress))
                        staticcall address(cTokenAddress).exchangeRateStored() with:
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
                            require ext_code.size(address(cTokenAddress))
                            call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            require ext_code.size(address(cTokenAddress))
                            call address(cTokenAddress).redeem(uint256 arg1) with:
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
                        if ext_call.return_data[0]:
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
                                    require uint32(stor8), mem[132 len 28] == bool(uint32(stor8), mem[132 len 28])
                                    if not uint32(stor8), mem[132 len 28]:
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
            mem[ceil32(return_data.size) + 100] = address(cTokenAddress)
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(cTokenAddress)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
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
                if ext_call.return_data[0]:
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
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).exchangeRateStored() with:
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
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).0x70a08231 with:
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
                        if ext_call.return_data[0]:
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
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
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
                            require ext_code.size(address(cTokenAddress))
                            call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            if ext_call.return_data[0]:
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
                            return 1
                        mem[(6 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(address(cTokenAddress))
                        call address(cTokenAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(7 * ceil32(return_data.size)) + 164] = address(cTokenAddress)
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(cTokenAddress)
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 164] = 0
                            require ext_code.size(address(cTokenAddress))
                            call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            if ext_call.return_data[0]:
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
                            require ext_code.size(address(cTokenAddress))
                            staticcall address(cTokenAddress).exchangeRateStored() with:
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
                                require ext_code.size(address(cTokenAddress))
                                call address(cTokenAddress).redeem(uint256 arg1) with:
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
                                require ext_code.size(address(cTokenAddress))
                                call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            if ext_call.return_data[0]:
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
                    mem[(4 * ceil32(return_data.size)) + 96] = 26
                    mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(4 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).0x70a08231 with:
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
                        if ext_call.return_data[0]:
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
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
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
                            require ext_code.size(address(cTokenAddress))
                            call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            if ext_call.return_data[0]:
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
                            return 1
                        mem[(6 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(address(cTokenAddress))
                        call address(cTokenAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(7 * ceil32(return_data.size)) + 164] = address(cTokenAddress)
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(cTokenAddress)
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 164] = 0
                            require ext_code.size(address(cTokenAddress))
                            call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            if ext_call.return_data[0]:
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
                            require ext_code.size(address(cTokenAddress))
                            staticcall address(cTokenAddress).exchangeRateStored() with:
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
                                require ext_code.size(address(cTokenAddress))
                                call address(cTokenAddress).redeem(uint256 arg1) with:
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
                                require ext_code.size(address(cTokenAddress))
                                call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            if ext_call.return_data[0]:
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
            staticcall address(strategyAddress).0x1fe4a686 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!management'
            mem[(2 * ceil32(return_data.size)) + 100] = address(cTokenAddress)
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(cTokenAddress)
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).0x70a08231 with:
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
                if ext_call.return_data[0]:
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
                require ext_code.size(address(cTokenAddress))
                staticcall address(cTokenAddress).exchangeRateStored() with:
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
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).0x70a08231 with:
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
                        if ext_call.return_data[0]:
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
                            require ext_code.size(address(cTokenAddress))
                            call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            if ext_call.return_data[0]:
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
                        mem[(7 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(address(cTokenAddress))
                        call address(cTokenAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 164] = address(cTokenAddress)
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(cTokenAddress)
                        mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[(10 * ceil32(return_data.size)) + 164] = 0
                            require ext_code.size(address(cTokenAddress))
                            call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            if ext_call.return_data[0]:
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
                            require ext_code.size(address(cTokenAddress))
                            staticcall address(cTokenAddress).exchangeRateStored() with:
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
                                require ext_code.size(address(cTokenAddress))
                                call address(cTokenAddress).redeem(uint256 arg1) with:
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
                                require ext_code.size(address(cTokenAddress))
                                call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            if ext_call.return_data[0]:
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
                    mem[(6 * ceil32(return_data.size)) + 96] = 26
                    mem[(6 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(6 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(address(cTokenAddress))
                    staticcall address(cTokenAddress).0x70a08231 with:
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
                        if ext_call.return_data[0]:
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
                            require ext_code.size(address(cTokenAddress))
                            call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            if ext_call.return_data[0]:
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
                        mem[(7 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(address(cTokenAddress))
                        call address(cTokenAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 164] = address(cTokenAddress)
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(cTokenAddress)
                        mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[(10 * ceil32(return_data.size)) + 164] = 0
                            require ext_code.size(address(cTokenAddress))
                            call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            if ext_call.return_data[0]:
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
                            require ext_code.size(address(cTokenAddress))
                            staticcall address(cTokenAddress).exchangeRateStored() with:
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
                                require ext_code.size(address(cTokenAddress))
                                call address(cTokenAddress).redeem(uint256 arg1) with:
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
                                require ext_code.size(address(cTokenAddress))
                                call address(cTokenAddress).redeem(uint256 arg1) with:
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
                            if ext_call.return_data[0]:
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
