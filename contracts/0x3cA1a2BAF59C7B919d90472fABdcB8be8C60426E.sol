contract main {




// =====================  Runtime code  =====================


#
#  - sweep(address arg1)
#  - weightedApr()
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
uint256 sub_39a0e81a;
uint8 claimComp; offset 160
uint128 stor7; offset 160
address cTokenAddress;

function claimComp() payable {
    return bool(claimComp)
}

function want() payable {
    return wantAddress
}

function sub_39a0e81a(?) payable {
    return sub_39a0e81a
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

function sub_0d0cc782(?) payable {
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
            staticcall address(strategyAddress).management() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!management'
    stor7 = Mask(96, 0, bool(arg1))
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
        mem[128] = arg1
        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg1
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
        _121 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223
        _127 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _121 + (32 * _127) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _127] = mem[_121 + 224 len 32 * _127]
        require _127 - 1 < _127
        mem[mem[64]] = mem[(32 * _127 - 1) + ceil32(return_data.size) + 224]
    else:
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg2:
            mem[96] = 2
            mem[128] = arg1
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg2
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
            _123 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223
            _129 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
            require (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _123 + (32 * _129) + 32
            mem[ceil32(return_data.size) + 224 len 32 * _129] = mem[_123 + 224 len 32 * _129]
            require _129 - 1 < _129
            mem[mem[64]] = mem[(32 * _129 - 1) + ceil32(return_data.size) + 224]
        else:
            mem[96] = 3
            mem[128 len 96] = call.data[calldata.size len 96]
            mem[128] = arg1
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg2:
                mem[160] = arg2
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
                _125 = mem[224 len 4], Mask(224, 32, arg3) >> 32
                require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255
                _131 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                require (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require return_data.size >= _125 + (32 * _131) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _131] = mem[_125 + 256 len 32 * _131]
                require _131 - 1 < _131
                mem[mem[64]] = mem[(32 * _131 - 1) + ceil32(return_data.size) + 256]
            else:
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
                _124 = mem[224 len 4], Mask(224, 32, arg3) >> 32
                require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255
                _130 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                require (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require return_data.size >= _124 + (32 * _130) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _130] = mem[_124 + 256 len 32 * _130]
                require _130 - 1 < _130
                mem[mem[64]] = mem[(32 * _130 - 1) + ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
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
        claimComp = 1
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
        claimComp = 1
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
        claimComp = 1
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        dustThreshold = 10000
        claimComp = 1
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

function apr() payable {
    mem[100] = cTokenAddress
    require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
    staticcall 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.compSpeeds(address arg1) with:
            gas gas_remaining wei
           args cTokenAddress
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.exchangeRateStored() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(cTokenAddress)
        staticcall cTokenAddress.supplyRatePerBlock() with:
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
        require ext_code.size(cTokenAddress)
        staticcall cTokenAddress.supplyRatePerBlock() with:
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
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.supplyRatePerBlock() with:
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
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(4 * ceil32(return_data.size)) + 288] = 2
            mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
            mem[(4 * ceil32(return_data.size)) + 352] = wantAddress
            mem[(4 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 388] = 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            mem[(4 * ceil32(return_data.size)) + 420] = 64
            mem[(4 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 320
            t = (4 * ceil32(return_data.size)) + 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 484 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _560 = mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
            require mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 384 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 415
            _568 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]) + 416 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]) + 416
            mem[(6 * ceil32(return_data.size)) + 384] = _568
            require return_data.size >= _560 + (32 * _568) + 32
            mem[(6 * ceil32(return_data.size)) + 416 len 32 * _568] = mem[(4 * ceil32(return_data.size)) + _560 + 416 len 32 * _568]
            require _568 - 1 < _568
            _960 = mem[(32 * _568 - 1) + (6 * ceil32(return_data.size)) + 416]
            if not mem[(32 * _568 - 1) + (6 * ceil32(return_data.size)) + 416]:
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _984 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_984] < mem[_984]:
                    revert with 0, 'SafeMath: addition overflow'
                if not mem[_984]:
                    return 0
                if 31540000 * mem[_984] / mem[_984] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = 31540000 * mem[_984]
            else:
                if not mem[(32 * _568 - 1) + (6 * ceil32(return_data.size)) + 416]:
                    _1006 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1006] = 26
                    mem[_1006 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1088 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1088] < mem[_1088]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not mem[_1088]:
                        return 0
                    if 31540000 * mem[_1088] / mem[_1088] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 31540000 * mem[_1088]
                else:
                    if 9 * mem[(32 * _568 - 1) + (6 * ceil32(return_data.size)) + 416] / mem[(32 * _568 - 1) + (6 * ceil32(return_data.size)) + 416] != 9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1021 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1021] = 26
                    mem[_1021 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1108 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if (9 * _960 / 10) + mem[_1108] < mem[_1108]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (9 * _960 / 10) + mem[_1108]:
                        return 0
                    if (31540000 * 9 * _960 / 10) + (31540000 * mem[_1108]) / (9 * _960 / 10) + mem[_1108] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = (31540000 * 9 * _960 / 10) + (31540000 * mem[_1108])
        else:
            mem[(4 * ceil32(return_data.size)) + 288] = 3
            mem[(4 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
            mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(4 * ceil32(return_data.size)) + 352] = wantAddress
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
                _562 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 447
                _570 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448
                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
                require return_data.size >= _562 + (32 * _570) + 32
                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _570] = mem[(4 * ceil32(return_data.size)) + _562 + 448 len 32 * _570]
                require _570 - 1 < _570
                _962 = mem[(32 * _570 - 1) + (6 * ceil32(return_data.size)) + 448]
                if not mem[(32 * _570 - 1) + (6 * ceil32(return_data.size)) + 448]:
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _986 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_986] < mem[_986]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not mem[_986]:
                        return 0
                    if 31540000 * mem[_986] / mem[_986] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 31540000 * mem[_986]
                else:
                    if not mem[(32 * _570 - 1) + (6 * ceil32(return_data.size)) + 448]:
                        _1010 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1010] = 26
                        mem[_1010 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1090 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1090] < mem[_1090]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not mem[_1090]:
                            return 0
                        if 31540000 * mem[_1090] / mem[_1090] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_1090]
                    else:
                        if 9 * mem[(32 * _570 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _570 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1025 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1025] = 26
                        mem[_1025 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1114 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (9 * _962 / 10) + mem[_1114] < mem[_1114]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * _962 / 10) + mem[_1114]:
                            return 0
                        if (31540000 * 9 * _962 / 10) + (31540000 * mem[_1114]) / (9 * _962 / 10) + mem[_1114] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * 9 * _962 / 10) + (31540000 * mem[_1114])
            else:
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
                _561 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 447
                _569 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448
                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
                require return_data.size >= _561 + (32 * _569) + 32
                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _569] = mem[(4 * ceil32(return_data.size)) + _561 + 448 len 32 * _569]
                require _569 - 1 < _569
                _961 = mem[(32 * _569 - 1) + (6 * ceil32(return_data.size)) + 448]
                if not mem[(32 * _569 - 1) + (6 * ceil32(return_data.size)) + 448]:
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _985 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_985] < mem[_985]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not mem[_985]:
                        return 0
                    if 31540000 * mem[_985] / mem[_985] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 31540000 * mem[_985]
                else:
                    if not mem[(32 * _569 - 1) + (6 * ceil32(return_data.size)) + 448]:
                        _1008 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1008] = 26
                        mem[_1008 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1089 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1089] < mem[_1089]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not mem[_1089]:
                            return 0
                        if 31540000 * mem[_1089] / mem[_1089] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_1089]
                    else:
                        if 9 * mem[(32 * _569 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _569 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1023 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1023] = 26
                        mem[_1023 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1111 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (9 * _961 / 10) + mem[_1111] < mem[_1111]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * _961 / 10) + mem[_1111]:
                            return 0
                        if (31540000 * 9 * _961 / 10) + (31540000 * mem[_1111]) / (9 * _961 / 10) + mem[_1111] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * 9 * _961 / 10) + (31540000 * mem[_1111])
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(4 * ceil32(return_data.size)) + 224] = 26
        mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.supplyRatePerBlock() with:
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
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(4 * ceil32(return_data.size)) + 288] = 2
            mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
            mem[(4 * ceil32(return_data.size)) + 352] = wantAddress
            mem[(4 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 388] = 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            mem[(4 * ceil32(return_data.size)) + 420] = 64
            mem[(4 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 320
            t = (4 * ceil32(return_data.size)) + 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 484 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _556 = mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
            require mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 384 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 415
            _564 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]) + 416 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]) + 416
            mem[(6 * ceil32(return_data.size)) + 384] = _564
            require return_data.size >= _556 + (32 * _564) + 32
            mem[(6 * ceil32(return_data.size)) + 416 len 32 * _564] = mem[(4 * ceil32(return_data.size)) + _556 + 416 len 32 * _564]
            require _564 - 1 < _564
            _956 = mem[(32 * _564 - 1) + (6 * ceil32(return_data.size)) + 416]
            if not mem[(32 * _564 - 1) + (6 * ceil32(return_data.size)) + 416]:
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _980 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_980] < mem[_980]:
                    revert with 0, 'SafeMath: addition overflow'
                if not mem[_980]:
                    return 0
                if 31540000 * mem[_980] / mem[_980] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = 31540000 * mem[_980]
            else:
                if not mem[(32 * _564 - 1) + (6 * ceil32(return_data.size)) + 416]:
                    _998 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_998] = 26
                    mem[_998 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1084 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1084] < mem[_1084]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not mem[_1084]:
                        return 0
                    if 31540000 * mem[_1084] / mem[_1084] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 31540000 * mem[_1084]
                else:
                    if 9 * mem[(32 * _564 - 1) + (6 * ceil32(return_data.size)) + 416] / mem[(32 * _564 - 1) + (6 * ceil32(return_data.size)) + 416] != 9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1013 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1013] = 26
                    mem[_1013 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1096 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if (9 * _956 / 10) + mem[_1096] < mem[_1096]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (9 * _956 / 10) + mem[_1096]:
                        return 0
                    if (31540000 * 9 * _956 / 10) + (31540000 * mem[_1096]) / (9 * _956 / 10) + mem[_1096] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = (31540000 * 9 * _956 / 10) + (31540000 * mem[_1096])
        else:
            mem[(4 * ceil32(return_data.size)) + 288] = 3
            mem[(4 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
            mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(4 * ceil32(return_data.size)) + 352] = wantAddress
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
                _558 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 447
                _566 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448
                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
                require return_data.size >= _558 + (32 * _566) + 32
                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _566] = mem[(4 * ceil32(return_data.size)) + _558 + 448 len 32 * _566]
                require _566 - 1 < _566
                _958 = mem[(32 * _566 - 1) + (6 * ceil32(return_data.size)) + 448]
                if not mem[(32 * _566 - 1) + (6 * ceil32(return_data.size)) + 448]:
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _982 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_982] < mem[_982]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not mem[_982]:
                        return 0
                    if 31540000 * mem[_982] / mem[_982] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 31540000 * mem[_982]
                else:
                    if not mem[(32 * _566 - 1) + (6 * ceil32(return_data.size)) + 448]:
                        _1002 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1002] = 26
                        mem[_1002 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1086 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1086] < mem[_1086]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not mem[_1086]:
                            return 0
                        if 31540000 * mem[_1086] / mem[_1086] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_1086]
                    else:
                        if 9 * mem[(32 * _566 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _566 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1017 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1017] = 26
                        mem[_1017 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1102 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (9 * _958 / 10) + mem[_1102] < mem[_1102]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * _958 / 10) + mem[_1102]:
                            return 0
                        if (31540000 * 9 * _958 / 10) + (31540000 * mem[_1102]) / (9 * _958 / 10) + mem[_1102] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * 9 * _958 / 10) + (31540000 * mem[_1102])
            else:
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
                _557 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 447
                _565 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448
                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
                require return_data.size >= _557 + (32 * _565) + 32
                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _565] = mem[(4 * ceil32(return_data.size)) + _557 + 448 len 32 * _565]
                require _565 - 1 < _565
                _957 = mem[(32 * _565 - 1) + (6 * ceil32(return_data.size)) + 448]
                if not mem[(32 * _565 - 1) + (6 * ceil32(return_data.size)) + 448]:
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _981 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_981] < mem[_981]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not mem[_981]:
                        return 0
                    if 31540000 * mem[_981] / mem[_981] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 31540000 * mem[_981]
                else:
                    if not mem[(32 * _565 - 1) + (6 * ceil32(return_data.size)) + 448]:
                        _1000 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1000] = 26
                        mem[_1000 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1085 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1085] < mem[_1085]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not mem[_1085]:
                            return 0
                        if 31540000 * mem[_1085] / mem[_1085] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_1085]
                    else:
                        if 9 * mem[(32 * _565 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _565 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1015 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1015] = 26
                        mem[_1015 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1099 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (9 * _957 / 10) + mem[_1099] < mem[_1099]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * _957 / 10) + mem[_1099]:
                            return 0
                        if (31540000 * 9 * _957 / 10) + (31540000 * mem[_1099]) / (9 * _957 / 10) + mem[_1099] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * 9 * _957 / 10) + (31540000 * mem[_1099])
    return memory
      from mem[64]
       len 32
}

function aprAfterDeposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = cTokenAddress
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args cTokenAddress
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.totalBorrows() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.totalReserves() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.reserveFactorMantissa() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.interestRateModel() with:
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
    mem[(8 * ceil32(return_data.size)) + 100] = cTokenAddress
    require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
    staticcall 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.compSpeeds(address arg1) with:
            gas gas_remaining wei
           args cTokenAddress
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.exchangeRateStored() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.0x18160ddd with:
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
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(12 * ceil32(return_data.size)) + 224] = 2
                mem[(12 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                mem[(12 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(12 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(12 * ceil32(return_data.size)) + 324] = 0 / arg1
                mem[(12 * ceil32(return_data.size)) + 356] = 64
                mem[(12 * ceil32(return_data.size)) + 388] = 2
                idx = 0
                s = (12 * ceil32(return_data.size)) + 256
                t = (12 * ceil32(return_data.size)) + 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / arg1, Array(len=2, data=mem[(12 * ceil32(return_data.size)) + 420 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(12 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _876 = mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32
                require mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 <= test266151307()
                require (12 * ceil32(return_data.size)) + return_data.size + 320 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 351
                _892 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 320]
                require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 320] <= test266151307()
                require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 320]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 320]) + 352 <= test266151307()
                mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 320]) + 352
                mem[(13 * ceil32(return_data.size)) + 320] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 320]
                require return_data.size >= _876 + (32 * _892) + 32
                mem[(13 * ceil32(return_data.size)) + 352 len 32 * _892] = mem[(12 * ceil32(return_data.size)) + _876 + 352 len 32 * _892]
                require _892 - 1 < _892
                if not mem[(32 * _892 - 1) + (13 * ceil32(return_data.size)) + 352]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        return 0
                    if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (31540000 * ext_call.return_data[0])
                if not mem[(32 * _892 - 1) + (13 * ceil32(return_data.size)) + 352]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        return 0
                    if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (31540000 * ext_call.return_data[0])
                if 9 * mem[(32 * _892 - 1) + (13 * ceil32(return_data.size)) + 352] / mem[(32 * _892 - 1) + (13 * ceil32(return_data.size)) + 352] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9 * mem[(32 * _892 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (9 * mem[(32 * _892 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + ext_call.return_data[0]:
                    return 0
                if (31540000 * 9 * mem[(32 * _892 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _892 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((31540000 * 9 * mem[(32 * _892 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + (31540000 * ext_call.return_data[0]))
            mem[(12 * ceil32(return_data.size)) + 224] = 3
            mem[(12 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
            mem[(12 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(12 * ceil32(return_data.size)) + 288] = wantAddress
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
                _878 = mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32
                require mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 <= test266151307()
                require (12 * ceil32(return_data.size)) + return_data.size + 352 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 383
                _894 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]
                require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352] <= test266151307()
                require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 384 <= test266151307()
                mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 384
                mem[(13 * ceil32(return_data.size)) + 352] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]
                require return_data.size >= _878 + (32 * _894) + 32
                mem[(13 * ceil32(return_data.size)) + 384 len 32 * _894] = mem[(12 * ceil32(return_data.size)) + _878 + 384 len 32 * _894]
                require _894 - 1 < _894
                if not mem[(32 * _894 - 1) + (13 * ceil32(return_data.size)) + 384]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        return 0
                    if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (31540000 * ext_call.return_data[0])
                if not mem[(32 * _894 - 1) + (13 * ceil32(return_data.size)) + 384]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        return 0
                    if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (31540000 * ext_call.return_data[0])
                if 9 * mem[(32 * _894 - 1) + (13 * ceil32(return_data.size)) + 384] / mem[(32 * _894 - 1) + (13 * ceil32(return_data.size)) + 384] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9 * mem[(32 * _894 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (9 * mem[(32 * _894 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0]:
                    return 0
                if (31540000 * 9 * mem[(32 * _894 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _894 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((31540000 * 9 * mem[(32 * _894 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]))
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
            _877 = mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32
            require mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + return_data.size + 352 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 383
            _893 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]
            require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352] <= test266151307()
            require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 384 <= test266151307()
            mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 384
            mem[(13 * ceil32(return_data.size)) + 352] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]
            require return_data.size >= _877 + (32 * _893) + 32
            mem[(13 * ceil32(return_data.size)) + 384 len 32 * _893] = mem[(12 * ceil32(return_data.size)) + _877 + 384 len 32 * _893]
            require _893 - 1 < _893
            if not mem[(32 * _893 - 1) + (13 * ceil32(return_data.size)) + 384]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            if not mem[(32 * _893 - 1) + (13 * ceil32(return_data.size)) + 384]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            if 9 * mem[(32 * _893 - 1) + (13 * ceil32(return_data.size)) + 384] / mem[(32 * _893 - 1) + (13 * ceil32(return_data.size)) + 384] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _893 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (9 * mem[(32 * _893 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0]:
                return 0
            if (31540000 * 9 * mem[(32 * _893 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _893 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((31540000 * 9 * mem[(32 * _893 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]))
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
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(12 * ceil32(return_data.size)) + 224] = 2
            mem[(12 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
            mem[(12 * ceil32(return_data.size)) + 288] = wantAddress
            mem[(12 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 324] = 10^18 * ext_call.return_data[0] / arg1
            mem[(12 * ceil32(return_data.size)) + 356] = 64
            mem[(12 * ceil32(return_data.size)) + 388] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 256
            t = (12 * ceil32(return_data.size)) + 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^18 * ext_call.return_data[0] / arg1, Array(len=2, data=mem[(12 * ceil32(return_data.size)) + 420 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _872 = mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32
            require mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + return_data.size + 320 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 351
            _888 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 320]
            require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 320] <= test266151307()
            require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 320]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 320]) + 352 <= test266151307()
            mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 320]) + 352
            mem[(13 * ceil32(return_data.size)) + 320] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 320]
            require return_data.size >= _872 + (32 * _888) + 32
            mem[(13 * ceil32(return_data.size)) + 352 len 32 * _888] = mem[(12 * ceil32(return_data.size)) + _872 + 352 len 32 * _888]
            require _888 - 1 < _888
            if not mem[(32 * _888 - 1) + (13 * ceil32(return_data.size)) + 352]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            if not mem[(32 * _888 - 1) + (13 * ceil32(return_data.size)) + 352]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            if 9 * mem[(32 * _888 - 1) + (13 * ceil32(return_data.size)) + 352] / mem[(32 * _888 - 1) + (13 * ceil32(return_data.size)) + 352] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _888 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (9 * mem[(32 * _888 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + ext_call.return_data[0]:
                return 0
            if (31540000 * 9 * mem[(32 * _888 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _888 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((31540000 * 9 * mem[(32 * _888 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + (31540000 * ext_call.return_data[0]))
        mem[(12 * ceil32(return_data.size)) + 224] = 3
        mem[(12 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
        mem[(12 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(12 * ceil32(return_data.size)) + 288] = wantAddress
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
            _874 = mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32
            require mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + return_data.size + 352 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 383
            _890 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]
            require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352] <= test266151307()
            require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 384 <= test266151307()
            mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 384
            mem[(13 * ceil32(return_data.size)) + 352] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]
            require return_data.size >= _874 + (32 * _890) + 32
            mem[(13 * ceil32(return_data.size)) + 384 len 32 * _890] = mem[(12 * ceil32(return_data.size)) + _874 + 384 len 32 * _890]
            require _890 - 1 < _890
            if not mem[(32 * _890 - 1) + (13 * ceil32(return_data.size)) + 384]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            if not mem[(32 * _890 - 1) + (13 * ceil32(return_data.size)) + 384]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            if 9 * mem[(32 * _890 - 1) + (13 * ceil32(return_data.size)) + 384] / mem[(32 * _890 - 1) + (13 * ceil32(return_data.size)) + 384] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _890 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (9 * mem[(32 * _890 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0]:
                return 0
            if (31540000 * 9 * mem[(32 * _890 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _890 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((31540000 * 9 * mem[(32 * _890 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]))
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
        _873 = mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32
        require mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + return_data.size + 352 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 383
        _889 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]
        require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352] <= test266151307()
        require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 384 <= test266151307()
        mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 384
        mem[(13 * ceil32(return_data.size)) + 352] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]
        require return_data.size >= _873 + (32 * _889) + 32
        mem[(13 * ceil32(return_data.size)) + 384 len 32 * _889] = mem[(12 * ceil32(return_data.size)) + _873 + 384 len 32 * _889]
        require _889 - 1 < _889
        if not mem[(32 * _889 - 1) + (13 * ceil32(return_data.size)) + 384]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if not mem[(32 * _889 - 1) + (13 * ceil32(return_data.size)) + 384]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if 9 * mem[(32 * _889 - 1) + (13 * ceil32(return_data.size)) + 384] / mem[(32 * _889 - 1) + (13 * ceil32(return_data.size)) + 384] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if (9 * mem[(32 * _889 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (9 * mem[(32 * _889 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0]:
            return 0
        if (31540000 * 9 * mem[(32 * _889 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _889 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((31540000 * 9 * mem[(32 * _889 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]))
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
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(12 * ceil32(return_data.size)) + 224] = 2
            mem[(12 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
            mem[(12 * ceil32(return_data.size)) + 288] = wantAddress
            mem[(12 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 324] = 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            mem[(12 * ceil32(return_data.size)) + 356] = 64
            mem[(12 * ceil32(return_data.size)) + 388] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 256
            t = (12 * ceil32(return_data.size)) + 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), Array(len=2, data=mem[(12 * ceil32(return_data.size)) + 420 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _868 = mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
            require mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + return_data.size + 320 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 351
            _884 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]
            require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320] <= test266151307()
            require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]) + 352 <= test266151307()
            mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]) + 352
            mem[(13 * ceil32(return_data.size)) + 320] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]
            require return_data.size >= _868 + (32 * _884) + 32
            mem[(13 * ceil32(return_data.size)) + 352 len 32 * _884] = mem[(12 * ceil32(return_data.size)) + _868 + 352 len 32 * _884]
            require _884 - 1 < _884
            if not mem[(32 * _884 - 1) + (13 * ceil32(return_data.size)) + 352]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            if not mem[(32 * _884 - 1) + (13 * ceil32(return_data.size)) + 352]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            if 9 * mem[(32 * _884 - 1) + (13 * ceil32(return_data.size)) + 352] / mem[(32 * _884 - 1) + (13 * ceil32(return_data.size)) + 352] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _884 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (9 * mem[(32 * _884 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + ext_call.return_data[0]:
                return 0
            if (31540000 * 9 * mem[(32 * _884 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _884 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((31540000 * 9 * mem[(32 * _884 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + (31540000 * ext_call.return_data[0]))
        mem[(12 * ceil32(return_data.size)) + 224] = 3
        mem[(12 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
        mem[(12 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(12 * ceil32(return_data.size)) + 288] = wantAddress
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
            _870 = mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
            require mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + return_data.size + 352 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 383
            _886 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
            require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352] <= test266151307()
            require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384 <= test266151307()
            mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384
            mem[(13 * ceil32(return_data.size)) + 352] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
            require return_data.size >= _870 + (32 * _886) + 32
            mem[(13 * ceil32(return_data.size)) + 384 len 32 * _886] = mem[(12 * ceil32(return_data.size)) + _870 + 384 len 32 * _886]
            require _886 - 1 < _886
            if not mem[(32 * _886 - 1) + (13 * ceil32(return_data.size)) + 384]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            if not mem[(32 * _886 - 1) + (13 * ceil32(return_data.size)) + 384]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (31540000 * ext_call.return_data[0])
            if 9 * mem[(32 * _886 - 1) + (13 * ceil32(return_data.size)) + 384] / mem[(32 * _886 - 1) + (13 * ceil32(return_data.size)) + 384] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _886 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (9 * mem[(32 * _886 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0]:
                return 0
            if (31540000 * 9 * mem[(32 * _886 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _886 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((31540000 * 9 * mem[(32 * _886 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]))
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
        _869 = mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
        require mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + return_data.size + 352 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 383
        _885 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
        require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352] <= test266151307()
        require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384 <= test266151307()
        mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384
        mem[(13 * ceil32(return_data.size)) + 352] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
        require return_data.size >= _869 + (32 * _885) + 32
        mem[(13 * ceil32(return_data.size)) + 384 len 32 * _885] = mem[(12 * ceil32(return_data.size)) + _869 + 384 len 32 * _885]
        require _885 - 1 < _885
        if not mem[(32 * _885 - 1) + (13 * ceil32(return_data.size)) + 384]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if not mem[(32 * _885 - 1) + (13 * ceil32(return_data.size)) + 384]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if 9 * mem[(32 * _885 - 1) + (13 * ceil32(return_data.size)) + 384] / mem[(32 * _885 - 1) + (13 * ceil32(return_data.size)) + 384] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if (9 * mem[(32 * _885 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (9 * mem[(32 * _885 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0]:
            return 0
        if (31540000 * 9 * mem[(32 * _885 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _885 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((31540000 * 9 * mem[(32 * _885 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]))
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
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
        mem[(12 * ceil32(return_data.size)) + 224] = 2
        mem[(12 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
        mem[(12 * ceil32(return_data.size)) + 288] = wantAddress
        mem[(12 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(12 * ceil32(return_data.size)) + 324] = 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        mem[(12 * ceil32(return_data.size)) + 356] = 64
        mem[(12 * ceil32(return_data.size)) + 388] = 2
        idx = 0
        s = (12 * ceil32(return_data.size)) + 256
        t = (12 * ceil32(return_data.size)) + 420
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), Array(len=2, data=mem[(12 * ceil32(return_data.size)) + 420 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(12 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (13 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _864 = mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
        require mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + return_data.size + 320 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 351
        _880 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]
        require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320] <= test266151307()
        require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]) + 352 <= test266151307()
        mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]) + 352
        mem[(13 * ceil32(return_data.size)) + 320] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]
        require return_data.size >= _864 + (32 * _880) + 32
        mem[(13 * ceil32(return_data.size)) + 352 len 32 * _880] = mem[(12 * ceil32(return_data.size)) + _864 + 352 len 32 * _880]
        require _880 - 1 < _880
        if not mem[(32 * _880 - 1) + (13 * ceil32(return_data.size)) + 352]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if not mem[(32 * _880 - 1) + (13 * ceil32(return_data.size)) + 352]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if 9 * mem[(32 * _880 - 1) + (13 * ceil32(return_data.size)) + 352] / mem[(32 * _880 - 1) + (13 * ceil32(return_data.size)) + 352] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if (9 * mem[(32 * _880 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (9 * mem[(32 * _880 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + ext_call.return_data[0]:
            return 0
        if (31540000 * 9 * mem[(32 * _880 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _880 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((31540000 * 9 * mem[(32 * _880 - 1) + (13 * ceil32(return_data.size)) + 352] / 10) + (31540000 * ext_call.return_data[0]))
    mem[(12 * ceil32(return_data.size)) + 224] = 3
    mem[(12 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
    mem[(12 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
        mem[(12 * ceil32(return_data.size)) + 288] = wantAddress
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
        _866 = mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
        require mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + return_data.size + 352 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 383
        _882 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
        require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352] <= test266151307()
        require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384 <= test266151307()
        mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384
        mem[(13 * ceil32(return_data.size)) + 352] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
        require return_data.size >= _866 + (32 * _882) + 32
        mem[(13 * ceil32(return_data.size)) + 384 len 32 * _882] = mem[(12 * ceil32(return_data.size)) + _866 + 384 len 32 * _882]
        require _882 - 1 < _882
        if not mem[(32 * _882 - 1) + (13 * ceil32(return_data.size)) + 384]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if not mem[(32 * _882 - 1) + (13 * ceil32(return_data.size)) + 384]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                return 0
            if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
                revert with 0, 'SafeMath: multiplication overflow'
            return (31540000 * ext_call.return_data[0])
        if 9 * mem[(32 * _882 - 1) + (13 * ceil32(return_data.size)) + 384] / mem[(32 * _882 - 1) + (13 * ceil32(return_data.size)) + 384] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if (9 * mem[(32 * _882 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (9 * mem[(32 * _882 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0]:
            return 0
        if (31540000 * 9 * mem[(32 * _882 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _882 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((31540000 * 9 * mem[(32 * _882 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]))
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
    _865 = mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
    require mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
    require (12 * ceil32(return_data.size)) + return_data.size + 352 > (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 383
    _881 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
    require mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352] <= test266151307()
    require (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 32 >= 0 and (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384 <= test266151307()
    mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384
    mem[(13 * ceil32(return_data.size)) + 352] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
    require return_data.size >= _865 + (32 * _881) + 32
    mem[(13 * ceil32(return_data.size)) + 384 len 32 * _881] = mem[(12 * ceil32(return_data.size)) + _865 + 384 len 32 * _881]
    require _881 - 1 < _881
    if not mem[(32 * _881 - 1) + (13 * ceil32(return_data.size)) + 384]:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            return 0
        if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return (31540000 * ext_call.return_data[0])
    if not mem[(32 * _881 - 1) + (13 * ceil32(return_data.size)) + 384]:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            return 0
        if 31540000 * ext_call.return_data[0] / ext_call.return_data[0] != 31540000:
            revert with 0, 'SafeMath: multiplication overflow'
        return (31540000 * ext_call.return_data[0])
    if 9 * mem[(32 * _881 - 1) + (13 * ceil32(return_data.size)) + 384] / mem[(32 * _881 - 1) + (13 * ceil32(return_data.size)) + 384] != 9:
        revert with 0, 'SafeMath: multiplication overflow'
    if (9 * mem[(32 * _881 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not (9 * mem[(32 * _881 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0]:
        return 0
    if (31540000 * 9 * mem[(32 * _881 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]) / (9 * mem[(32 * _881 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + ext_call.return_data[0] != 31540000:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((31540000 * 9 * mem[(32 * _881 - 1) + (13 * ceil32(return_data.size)) + 384] / 10) + (31540000 * ext_call.return_data[0]))
}

function sub_fdb03723(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    mem[100] = cTokenAddress
    require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
    staticcall 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.compSpeeds(address arg1) with:
            gas gas_remaining wei
           args cTokenAddress
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.exchangeRateStored() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.0x18160ddd with:
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
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                    mem[(4 * ceil32(return_data.size)) + 224] = 2
                    mem[(4 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                    mem[(4 * ceil32(return_data.size)) + 288] = wantAddress
                    mem[(4 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 0 / arg1
                    mem[(4 * ceil32(return_data.size)) + 356] = 64
                    mem[(4 * ceil32(return_data.size)) + 388] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 256
                    t = (4 * ceil32(return_data.size)) + 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0 / arg1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1052 = mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 320 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 351
                    _1084 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 320]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 320] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 320]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 320]) + 352 <= test266151307()
                    mem[(6 * ceil32(return_data.size)) + 320] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 320]
                    require return_data.size >= _1052 + (32 * _1084) + 32
                    mem[(6 * ceil32(return_data.size)) + 352 len 32 * _1084] = mem[(4 * ceil32(return_data.size)) + _1052 + 352 len 32 * _1084]
                    require _1084 - 1 < _1084
                    if not mem[(32 * _1084 - 1) + (6 * ceil32(return_data.size)) + 352]:
                        return 0
                    if not mem[(32 * _1084 - 1) + (6 * ceil32(return_data.size)) + 352]:
                        return 0
                    if 9 * mem[(32 * _1084 - 1) + (6 * ceil32(return_data.size)) + 352] / mem[(32 * _1084 - 1) + (6 * ceil32(return_data.size)) + 352] != 9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9 * mem[(32 * _1084 - 1) + (6 * ceil32(return_data.size)) + 352] / 10)
                mem[(4 * ceil32(return_data.size)) + 224] = 3
                mem[(4 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
                mem[(4 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                    mem[(4 * ceil32(return_data.size)) + 288] = wantAddress
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
                    _1054 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 352 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 383
                    _1086 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 384 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 384
                    mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]
                    require return_data.size >= _1054 + (32 * _1086) + 32
                    mem[(6 * ceil32(return_data.size)) + 384 len 32 * _1086] = mem[(4 * ceil32(return_data.size)) + _1054 + 384 len 32 * _1086]
                    require _1086 - 1 < _1086
                    if not mem[(32 * _1086 - 1) + (6 * ceil32(return_data.size)) + 384]:
                        return 0
                    if not mem[(32 * _1086 - 1) + (6 * ceil32(return_data.size)) + 384]:
                        return 0
                    if 9 * mem[(32 * _1086 - 1) + (6 * ceil32(return_data.size)) + 384] / mem[(32 * _1086 - 1) + (6 * ceil32(return_data.size)) + 384] != 9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (9 * mem[(32 * _1086 - 1) + (6 * ceil32(return_data.size)) + 384] / 10)
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
                _1053 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32
                require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 352 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 383
                _1085 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 384 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]) + 384
                mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1) >> 32 + 352]
                require return_data.size >= _1053 + (32 * _1085) + 32
                mem[(6 * ceil32(return_data.size)) + 384 len 32 * _1085] = mem[(4 * ceil32(return_data.size)) + _1053 + 384 len 32 * _1085]
                require _1085 - 1 < _1085
                if not mem[(32 * _1085 - 1) + (6 * ceil32(return_data.size)) + 384]:
                    return 0
                if not mem[(32 * _1085 - 1) + (6 * ceil32(return_data.size)) + 384]:
                    return 0
                if 9 * mem[(32 * _1085 - 1) + (6 * ceil32(return_data.size)) + 384] / mem[(32 * _1085 - 1) + (6 * ceil32(return_data.size)) + 384] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9 * mem[(32 * _1085 - 1) + (6 * ceil32(return_data.size)) + 384] / 10)
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(4 * ceil32(return_data.size)) + 160] = 26
            mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if not arg1:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * ext_call.return_data[0] / arg1:
                return 0
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(4 * ceil32(return_data.size)) + 224] = 2
                mem[(4 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                mem[(4 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(4 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 324] = 10^18 * ext_call.return_data[0] / arg1
                mem[(4 * ceil32(return_data.size)) + 356] = 64
                mem[(4 * ceil32(return_data.size)) + 388] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = (4 * ceil32(return_data.size)) + 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^18 * ext_call.return_data[0] / arg1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _1048 = mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32
                require mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 320 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 351
                _1080 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 320]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 320] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 320]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 320]) + 352 <= test266151307()
                mem[(6 * ceil32(return_data.size)) + 320] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 320]
                require return_data.size >= _1048 + (32 * _1080) + 32
                mem[(6 * ceil32(return_data.size)) + 352 len 32 * _1080] = mem[(4 * ceil32(return_data.size)) + _1048 + 352 len 32 * _1080]
                require _1080 - 1 < _1080
                if not mem[(32 * _1080 - 1) + (6 * ceil32(return_data.size)) + 352]:
                    return 0
                if not mem[(32 * _1080 - 1) + (6 * ceil32(return_data.size)) + 352]:
                    return 0
                if 9 * mem[(32 * _1080 - 1) + (6 * ceil32(return_data.size)) + 352] / mem[(32 * _1080 - 1) + (6 * ceil32(return_data.size)) + 352] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9 * mem[(32 * _1080 - 1) + (6 * ceil32(return_data.size)) + 352] / 10)
            mem[(4 * ceil32(return_data.size)) + 224] = 3
            mem[(4 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
            mem[(4 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(4 * ceil32(return_data.size)) + 288] = wantAddress
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
                _1050 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32
                require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 352 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 383
                _1082 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 384 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 384
                mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]
                require return_data.size >= _1050 + (32 * _1082) + 32
                mem[(6 * ceil32(return_data.size)) + 384 len 32 * _1082] = mem[(4 * ceil32(return_data.size)) + _1050 + 384 len 32 * _1082]
                require _1082 - 1 < _1082
                if not mem[(32 * _1082 - 1) + (6 * ceil32(return_data.size)) + 384]:
                    return 0
                if not mem[(32 * _1082 - 1) + (6 * ceil32(return_data.size)) + 384]:
                    return 0
                if 9 * mem[(32 * _1082 - 1) + (6 * ceil32(return_data.size)) + 384] / mem[(32 * _1082 - 1) + (6 * ceil32(return_data.size)) + 384] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9 * mem[(32 * _1082 - 1) + (6 * ceil32(return_data.size)) + 384] / 10)
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
            _1049 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32
            require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 352 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 383
            _1081 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 384 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]) + 384
            mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 352]
            require return_data.size >= _1049 + (32 * _1081) + 32
            mem[(6 * ceil32(return_data.size)) + 384 len 32 * _1081] = mem[(4 * ceil32(return_data.size)) + _1049 + 384 len 32 * _1081]
            require _1081 - 1 < _1081
            if not mem[(32 * _1081 - 1) + (6 * ceil32(return_data.size)) + 384]:
                return 0
            if not mem[(32 * _1081 - 1) + (6 * ceil32(return_data.size)) + 384]:
                return 0
            if 9 * mem[(32 * _1081 - 1) + (6 * ceil32(return_data.size)) + 384] / mem[(32 * _1081 - 1) + (6 * ceil32(return_data.size)) + 384] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            return (9 * mem[(32 * _1081 - 1) + (6 * ceil32(return_data.size)) + 384] / 10)
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
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(4 * ceil32(return_data.size)) + 288] = 2
                mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                mem[(4 * ceil32(return_data.size)) + 352] = wantAddress
                mem[(4 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 388] = 0 / -arg1
                mem[(4 * ceil32(return_data.size)) + 420] = 64
                mem[(4 * ceil32(return_data.size)) + 452] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 320
                t = (4 * ceil32(return_data.size)) + 484
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / -arg1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 484 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 384
                require return_data.size >= 32
                _1044 = mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / -arg1) >> 32
                require mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / -arg1) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 384 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 415
                _1076 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 384]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 384] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 384]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 384]) + 416 <= test266151307()
                mem[(6 * ceil32(return_data.size)) + 384] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 384]
                require return_data.size >= _1044 + (32 * _1076) + 32
                mem[(6 * ceil32(return_data.size)) + 416 len 32 * _1076] = mem[(4 * ceil32(return_data.size)) + _1044 + 416 len 32 * _1076]
                require _1076 - 1 < _1076
                if not mem[(32 * _1076 - 1) + (6 * ceil32(return_data.size)) + 416]:
                    return 0
                if not mem[(32 * _1076 - 1) + (6 * ceil32(return_data.size)) + 416]:
                    return 0
                if 9 * mem[(32 * _1076 - 1) + (6 * ceil32(return_data.size)) + 416] / mem[(32 * _1076 - 1) + (6 * ceil32(return_data.size)) + 416] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9 * mem[(32 * _1076 - 1) + (6 * ceil32(return_data.size)) + 416] / 10)
            mem[(4 * ceil32(return_data.size)) + 288] = 3
            mem[(4 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
            mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(4 * ceil32(return_data.size)) + 352] = wantAddress
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
                _1046 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32
                require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 447
                _1078 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]) + 448 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]) + 448
                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]
                require return_data.size >= _1046 + (32 * _1078) + 32
                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1078] = mem[(4 * ceil32(return_data.size)) + _1046 + 448 len 32 * _1078]
                require _1078 - 1 < _1078
                if not mem[(32 * _1078 - 1) + (6 * ceil32(return_data.size)) + 448]:
                    return 0
                if not mem[(32 * _1078 - 1) + (6 * ceil32(return_data.size)) + 448]:
                    return 0
                if 9 * mem[(32 * _1078 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _1078 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9 * mem[(32 * _1078 - 1) + (6 * ceil32(return_data.size)) + 448] / 10)
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
            _1045 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32
            require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 447
            _1077 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]) + 448 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]) + 448
            mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 416]
            require return_data.size >= _1045 + (32 * _1077) + 32
            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1077] = mem[(4 * ceil32(return_data.size)) + _1045 + 448 len 32 * _1077]
            require _1077 - 1 < _1077
            if not mem[(32 * _1077 - 1) + (6 * ceil32(return_data.size)) + 448]:
                return 0
            if not mem[(32 * _1077 - 1) + (6 * ceil32(return_data.size)) + 448]:
                return 0
            if 9 * mem[(32 * _1077 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _1077 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            return (9 * mem[(32 * _1077 - 1) + (6 * ceil32(return_data.size)) + 448] / 10)
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(4 * ceil32(return_data.size)) + 224] = 26
        mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
        if not -arg1:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * ext_call.return_data[0] / -arg1:
            return 0
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(4 * ceil32(return_data.size)) + 288] = 2
            mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
            mem[(4 * ceil32(return_data.size)) + 352] = wantAddress
            mem[(4 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 388] = 10^18 * ext_call.return_data[0] / -arg1
            mem[(4 * ceil32(return_data.size)) + 420] = 64
            mem[(4 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 320
            t = (4 * ceil32(return_data.size)) + 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^18 * ext_call.return_data[0] / -arg1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 484 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _1040 = mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32
            require mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 384 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 415
            _1072 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 384]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 384] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 384]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 384]) + 416 <= test266151307()
            mem[(6 * ceil32(return_data.size)) + 384] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 384]
            require return_data.size >= _1040 + (32 * _1072) + 32
            mem[(6 * ceil32(return_data.size)) + 416 len 32 * _1072] = mem[(4 * ceil32(return_data.size)) + _1040 + 416 len 32 * _1072]
            require _1072 - 1 < _1072
            if not mem[(32 * _1072 - 1) + (6 * ceil32(return_data.size)) + 416]:
                return 0
            if not mem[(32 * _1072 - 1) + (6 * ceil32(return_data.size)) + 416]:
                return 0
            if 9 * mem[(32 * _1072 - 1) + (6 * ceil32(return_data.size)) + 416] / mem[(32 * _1072 - 1) + (6 * ceil32(return_data.size)) + 416] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            return (9 * mem[(32 * _1072 - 1) + (6 * ceil32(return_data.size)) + 416] / 10)
        mem[(4 * ceil32(return_data.size)) + 288] = 3
        mem[(4 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
        mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(4 * ceil32(return_data.size)) + 352] = wantAddress
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
            _1042 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32
            require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 447
            _1074 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]) + 448 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]) + 448
            mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]
            require return_data.size >= _1042 + (32 * _1074) + 32
            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1074] = mem[(4 * ceil32(return_data.size)) + _1042 + 448 len 32 * _1074]
            require _1074 - 1 < _1074
            if not mem[(32 * _1074 - 1) + (6 * ceil32(return_data.size)) + 448]:
                return 0
            if not mem[(32 * _1074 - 1) + (6 * ceil32(return_data.size)) + 448]:
                return 0
            if 9 * mem[(32 * _1074 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _1074 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            return (9 * mem[(32 * _1074 - 1) + (6 * ceil32(return_data.size)) + 448] / 10)
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
        _1041 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 447
        _1073 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]) + 448 <= test266151307()
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]) + 448
        mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 416]
        require return_data.size >= _1041 + (32 * _1073) + 32
        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1073] = mem[(4 * ceil32(return_data.size)) + _1041 + 448 len 32 * _1073]
        require _1073 - 1 < _1073
        if not mem[(32 * _1073 - 1) + (6 * ceil32(return_data.size)) + 448]:
            return 0
        if not mem[(32 * _1073 - 1) + (6 * ceil32(return_data.size)) + 448]:
            return 0
        if 9 * mem[(32 * _1073 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _1073 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        return (9 * mem[(32 * _1073 - 1) + (6 * ceil32(return_data.size)) + 448] / 10)
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
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(4 * ceil32(return_data.size)) + 224] = 2
                mem[(4 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                mem[(4 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(4 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 324] = 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                mem[(4 * ceil32(return_data.size)) + 356] = 64
                mem[(4 * ceil32(return_data.size)) + 388] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = (4 * ceil32(return_data.size)) + 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _1036 = mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
                require mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 320 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 351
                _1068 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]) + 352 <= test266151307()
                mem[(6 * ceil32(return_data.size)) + 320] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]
                require return_data.size >= _1036 + (32 * _1068) + 32
                mem[(6 * ceil32(return_data.size)) + 352 len 32 * _1068] = mem[(4 * ceil32(return_data.size)) + _1036 + 352 len 32 * _1068]
                require _1068 - 1 < _1068
                if not mem[(32 * _1068 - 1) + (6 * ceil32(return_data.size)) + 352]:
                    return 0
                if not mem[(32 * _1068 - 1) + (6 * ceil32(return_data.size)) + 352]:
                    return 0
                if 9 * mem[(32 * _1068 - 1) + (6 * ceil32(return_data.size)) + 352] / mem[(32 * _1068 - 1) + (6 * ceil32(return_data.size)) + 352] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9 * mem[(32 * _1068 - 1) + (6 * ceil32(return_data.size)) + 352] / 10)
            mem[(4 * ceil32(return_data.size)) + 224] = 3
            mem[(4 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
            mem[(4 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(4 * ceil32(return_data.size)) + 288] = wantAddress
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
                _1038 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
                require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 352 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 383
                _1070 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384
                mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
                require return_data.size >= _1038 + (32 * _1070) + 32
                mem[(6 * ceil32(return_data.size)) + 384 len 32 * _1070] = mem[(4 * ceil32(return_data.size)) + _1038 + 384 len 32 * _1070]
                require _1070 - 1 < _1070
                if not mem[(32 * _1070 - 1) + (6 * ceil32(return_data.size)) + 384]:
                    return 0
                if not mem[(32 * _1070 - 1) + (6 * ceil32(return_data.size)) + 384]:
                    return 0
                if 9 * mem[(32 * _1070 - 1) + (6 * ceil32(return_data.size)) + 384] / mem[(32 * _1070 - 1) + (6 * ceil32(return_data.size)) + 384] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (9 * mem[(32 * _1070 - 1) + (6 * ceil32(return_data.size)) + 384] / 10)
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
            _1037 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
            require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 352 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 383
            _1069 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384
            mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
            require return_data.size >= _1037 + (32 * _1069) + 32
            mem[(6 * ceil32(return_data.size)) + 384 len 32 * _1069] = mem[(4 * ceil32(return_data.size)) + _1037 + 384 len 32 * _1069]
            require _1069 - 1 < _1069
            if not mem[(32 * _1069 - 1) + (6 * ceil32(return_data.size)) + 384]:
                return 0
            if not mem[(32 * _1069 - 1) + (6 * ceil32(return_data.size)) + 384]:
                return 0
            if 9 * mem[(32 * _1069 - 1) + (6 * ceil32(return_data.size)) + 384] / mem[(32 * _1069 - 1) + (6 * ceil32(return_data.size)) + 384] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            return (9 * mem[(32 * _1069 - 1) + (6 * ceil32(return_data.size)) + 384] / 10)
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(4 * ceil32(return_data.size)) + 160] = 26
        mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
        if not arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            return 0
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(4 * ceil32(return_data.size)) + 224] = 2
            mem[(4 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
            mem[(4 * ceil32(return_data.size)) + 288] = wantAddress
            mem[(4 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 324] = 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            mem[(4 * ceil32(return_data.size)) + 356] = 64
            mem[(4 * ceil32(return_data.size)) + 388] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 256
            t = (4 * ceil32(return_data.size)) + 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _1032 = mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
            require mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 320 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 351
            _1064 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]) + 352 <= test266151307()
            mem[(6 * ceil32(return_data.size)) + 320] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]
            require return_data.size >= _1032 + (32 * _1064) + 32
            mem[(6 * ceil32(return_data.size)) + 352 len 32 * _1064] = mem[(4 * ceil32(return_data.size)) + _1032 + 352 len 32 * _1064]
            require _1064 - 1 < _1064
            if not mem[(32 * _1064 - 1) + (6 * ceil32(return_data.size)) + 352]:
                return 0
            if not mem[(32 * _1064 - 1) + (6 * ceil32(return_data.size)) + 352]:
                return 0
            if 9 * mem[(32 * _1064 - 1) + (6 * ceil32(return_data.size)) + 352] / mem[(32 * _1064 - 1) + (6 * ceil32(return_data.size)) + 352] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            return (9 * mem[(32 * _1064 - 1) + (6 * ceil32(return_data.size)) + 352] / 10)
        mem[(4 * ceil32(return_data.size)) + 224] = 3
        mem[(4 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
        mem[(4 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(4 * ceil32(return_data.size)) + 288] = wantAddress
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
            _1034 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
            require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 352 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 383
            _1066 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384
            mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
            require return_data.size >= _1034 + (32 * _1066) + 32
            mem[(6 * ceil32(return_data.size)) + 384 len 32 * _1066] = mem[(4 * ceil32(return_data.size)) + _1034 + 384 len 32 * _1066]
            require _1066 - 1 < _1066
            if not mem[(32 * _1066 - 1) + (6 * ceil32(return_data.size)) + 384]:
                return 0
            if not mem[(32 * _1066 - 1) + (6 * ceil32(return_data.size)) + 384]:
                return 0
            if 9 * mem[(32 * _1066 - 1) + (6 * ceil32(return_data.size)) + 384] / mem[(32 * _1066 - 1) + (6 * ceil32(return_data.size)) + 384] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            return (9 * mem[(32 * _1066 - 1) + (6 * ceil32(return_data.size)) + 384] / 10)
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
        _1033 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32
        require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 352 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 383
        _1065 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384 <= test266151307()
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]) + 384
        mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 352]
        require return_data.size >= _1033 + (32 * _1065) + 32
        mem[(6 * ceil32(return_data.size)) + 384 len 32 * _1065] = mem[(4 * ceil32(return_data.size)) + _1033 + 384 len 32 * _1065]
        require _1065 - 1 < _1065
        if not mem[(32 * _1065 - 1) + (6 * ceil32(return_data.size)) + 384]:
            return 0
        if not mem[(32 * _1065 - 1) + (6 * ceil32(return_data.size)) + 384]:
            return 0
        if 9 * mem[(32 * _1065 - 1) + (6 * ceil32(return_data.size)) + 384] / mem[(32 * _1065 - 1) + (6 * ceil32(return_data.size)) + 384] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        return (9 * mem[(32 * _1065 - 1) + (6 * ceil32(return_data.size)) + 384] / 10)
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
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(4 * ceil32(return_data.size)) + 288] = 2
            mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
            mem[(4 * ceil32(return_data.size)) + 352] = wantAddress
            mem[(4 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 388] = 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1
            mem[(4 * ceil32(return_data.size)) + 420] = 64
            mem[(4 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 320
            t = (4 * ceil32(return_data.size)) + 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 484 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _1028 = mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32
            require mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 384 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 415
            _1060 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 384]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 384] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 384]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 384]) + 416 <= test266151307()
            mem[(6 * ceil32(return_data.size)) + 384] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 384]
            require return_data.size >= _1028 + (32 * _1060) + 32
            mem[(6 * ceil32(return_data.size)) + 416 len 32 * _1060] = mem[(4 * ceil32(return_data.size)) + _1028 + 416 len 32 * _1060]
            require _1060 - 1 < _1060
            if not mem[(32 * _1060 - 1) + (6 * ceil32(return_data.size)) + 416]:
                return 0
            if not mem[(32 * _1060 - 1) + (6 * ceil32(return_data.size)) + 416]:
                return 0
            if 9 * mem[(32 * _1060 - 1) + (6 * ceil32(return_data.size)) + 416] / mem[(32 * _1060 - 1) + (6 * ceil32(return_data.size)) + 416] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            return (9 * mem[(32 * _1060 - 1) + (6 * ceil32(return_data.size)) + 416] / 10)
        mem[(4 * ceil32(return_data.size)) + 288] = 3
        mem[(4 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
        mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(4 * ceil32(return_data.size)) + 352] = wantAddress
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
            _1030 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32
            require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 447
            _1062 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 448 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 448
            mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]
            require return_data.size >= _1030 + (32 * _1062) + 32
            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1062] = mem[(4 * ceil32(return_data.size)) + _1030 + 448 len 32 * _1062]
            require _1062 - 1 < _1062
            if not mem[(32 * _1062 - 1) + (6 * ceil32(return_data.size)) + 448]:
                return 0
            if not mem[(32 * _1062 - 1) + (6 * ceil32(return_data.size)) + 448]:
                return 0
            if 9 * mem[(32 * _1062 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _1062 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            return (9 * mem[(32 * _1062 - 1) + (6 * ceil32(return_data.size)) + 448] / 10)
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
        _1029 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 447
        _1061 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 448 <= test266151307()
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 448
        mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]
        require return_data.size >= _1029 + (32 * _1061) + 32
        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1061] = mem[(4 * ceil32(return_data.size)) + _1029 + 448 len 32 * _1061]
        require _1061 - 1 < _1061
        if not mem[(32 * _1061 - 1) + (6 * ceil32(return_data.size)) + 448]:
            return 0
        if not mem[(32 * _1061 - 1) + (6 * ceil32(return_data.size)) + 448]:
            return 0
        if 9 * mem[(32 * _1061 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _1061 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        return (9 * mem[(32 * _1061 - 1) + (6 * ceil32(return_data.size)) + 448] / 10)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[(4 * ceil32(return_data.size)) + 224] = 26
    mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1:
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1:
        return 0
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
        mem[(4 * ceil32(return_data.size)) + 288] = 2
        mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
        mem[(4 * ceil32(return_data.size)) + 352] = wantAddress
        mem[(4 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 388] = 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1
        mem[(4 * ceil32(return_data.size)) + 420] = 64
        mem[(4 * ceil32(return_data.size)) + 452] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 320
        t = (4 * ceil32(return_data.size)) + 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 484 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _1024 = mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 384 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 415
        _1056 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 384]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 384] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 384]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 384]) + 416 <= test266151307()
        mem[(6 * ceil32(return_data.size)) + 384] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 384]
        require return_data.size >= _1024 + (32 * _1056) + 32
        mem[(6 * ceil32(return_data.size)) + 416 len 32 * _1056] = mem[(4 * ceil32(return_data.size)) + _1024 + 416 len 32 * _1056]
        require _1056 - 1 < _1056
        if not mem[(32 * _1056 - 1) + (6 * ceil32(return_data.size)) + 416]:
            return 0
        if not mem[(32 * _1056 - 1) + (6 * ceil32(return_data.size)) + 416]:
            return 0
        if 9 * mem[(32 * _1056 - 1) + (6 * ceil32(return_data.size)) + 416] / mem[(32 * _1056 - 1) + (6 * ceil32(return_data.size)) + 416] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        return (9 * mem[(32 * _1056 - 1) + (6 * ceil32(return_data.size)) + 416] / 10)
    mem[(4 * ceil32(return_data.size)) + 288] = 3
    mem[(4 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
    mem[(4 * ceil32(return_data.size)) + 320] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
        mem[(4 * ceil32(return_data.size)) + 352] = wantAddress
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
        _1026 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 447
        _1058 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 448 <= test266151307()
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 448
        mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]
        require return_data.size >= _1026 + (32 * _1058) + 32
        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1058] = mem[(4 * ceil32(return_data.size)) + _1026 + 448 len 32 * _1058]
        require _1058 - 1 < _1058
        if not mem[(32 * _1058 - 1) + (6 * ceil32(return_data.size)) + 448]:
            return 0
        if not mem[(32 * _1058 - 1) + (6 * ceil32(return_data.size)) + 448]:
            return 0
        if 9 * mem[(32 * _1058 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _1058 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        return (9 * mem[(32 * _1058 - 1) + (6 * ceil32(return_data.size)) + 448] / 10)
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
    _1025 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32
    require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 447
    _1057 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416] <= test266151307()
    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 448 <= test266151307()
    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]) + 448
    mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 416]
    require return_data.size >= _1025 + (32 * _1057) + 32
    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1057] = mem[(4 * ceil32(return_data.size)) + _1025 + 448 len 32 * _1057]
    require _1057 - 1 < _1057
    if not mem[(32 * _1057 - 1) + (6 * ceil32(return_data.size)) + 448]:
        return 0
    if not mem[(32 * _1057 - 1) + (6 * ceil32(return_data.size)) + 448]:
        return 0
    if 9 * mem[(32 * _1057 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _1057 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
        revert with 0, 'SafeMath: multiplication overflow'
    return (9 * mem[(32 * _1057 - 1) + (6 * ceil32(return_data.size)) + 448] / 10)
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
                if not ext_call.return_data[0]:
                    return 0
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
                if not ext_call.return_data[0]:
                    return 0
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
            return ext_call.return_data[0]
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
            if not claimComp:
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
                return ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 96] = 1
            mem[(4 * ceil32(return_data.size)) + 128] = cTokenAddress
            mem[(4 * ceil32(return_data.size)) + 160] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 164] = this.address
            mem[(4 * ceil32(return_data.size)) + 196] = 64
            mem[(4 * ceil32(return_data.size)) + 228] = 1
            idx = 0
            s = (4 * ceil32(return_data.size)) + 260
            t = (4 * ceil32(return_data.size)) + 128
            while idx < 1:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
            call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
                 gas gas_remaining wei
                args address(this.address), Array(len=1, data=mem[(4 * ceil32(return_data.size)) + 260])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 164] = this.address
            require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
            staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= sub_39a0e81a:
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
                mem[(7 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 260] = 32
                mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 324 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
                mem[(7 * ceil32(return_data.size)) + 392] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
                return ext_call.return_data[0]
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(6 * ceil32(return_data.size)) + 160] = 2
                mem[(6 * ceil32(return_data.size)) + 192] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                mem[(6 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(6 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 292] = 0
                mem[(6 * ceil32(return_data.size)) + 324] = 160
                mem[(6 * ceil32(return_data.size)) + 420] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 192
                t = (6 * ceil32(return_data.size)) + 452
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 356] = this.address
                mem[(6 * ceil32(return_data.size)) + 388] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 452 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _18416 = mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 256 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287
                _18598 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288
                mem[(7 * ceil32(return_data.size)) + 256] = _18598
                require return_data.size >= _18416 + (32 * _18598) + 32
                mem[(7 * ceil32(return_data.size)) + 288 len 32 * _18598] = mem[(6 * ceil32(return_data.size)) + _18416 + 288 len 32 * _18598]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24954 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25014 = mem[_24954]
                _25074 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25014
                _25135 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25074 + 100] = 32
                mem[_25074 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25494 = mem[_25135]
                mem[_25074 + 164 len ceil32(mem[_25135])] = mem[_25135 + 32 len ceil32(mem[_25135])]
                if ceil32(_25494) > _25494:
                    mem[_25494 + _25074 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25074 + 168 len _25494 - 4]
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
                    mem[_25074 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25074 + 196] == bool(mem[_25074 + 196])
                        if not mem[_25074 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25014
            mem[(6 * ceil32(return_data.size)) + 160] = 3
            mem[(6 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
            mem[(6 * ceil32(return_data.size)) + 192] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(6 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(6 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 324] = 0
                mem[(6 * ceil32(return_data.size)) + 356] = 160
                mem[(6 * ceil32(return_data.size)) + 452] = 3
                idx = 0
                s = (6 * ceil32(return_data.size)) + 192
                t = (6 * ceil32(return_data.size)) + 484
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 388] = this.address
                mem[(6 * ceil32(return_data.size)) + 420] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 484 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _18418 = mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 288 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
                _18600 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
                mem[(7 * ceil32(return_data.size)) + 288] = _18600
                require return_data.size >= _18418 + (32 * _18600) + 32
                mem[(7 * ceil32(return_data.size)) + 320 len 32 * _18600] = mem[(6 * ceil32(return_data.size)) + _18418 + 320 len 32 * _18600]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24956 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25016 = mem[_24956]
                _25076 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25016
                _25139 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25076 + 100] = 32
                mem[_25076 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25496 = mem[_25139]
                mem[_25076 + 164 len ceil32(mem[_25139])] = mem[_25139 + 32 len ceil32(mem[_25139])]
                if ceil32(_25496) > _25496:
                    mem[_25496 + _25076 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25076 + 168 len _25496 - 4]
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
                    mem[_25076 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25076 + 196] == bool(mem[_25076 + 196])
                        if not mem[_25076 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25016
            mem[(6 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(6 * ceil32(return_data.size)) + 256] = wantAddress
            mem[(6 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 324] = 0
            mem[(6 * ceil32(return_data.size)) + 356] = 160
            mem[(6 * ceil32(return_data.size)) + 452] = 3
            idx = 0
            s = (6 * ceil32(return_data.size)) + 192
            t = (6 * ceil32(return_data.size)) + 484
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 388] = this.address
            mem[(6 * ceil32(return_data.size)) + 420] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 484 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _18417 = mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
            require mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (6 * ceil32(return_data.size)) + return_data.size + 288 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
            _18599 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
            mem[(7 * ceil32(return_data.size)) + 288] = _18599
            require return_data.size >= _18417 + (32 * _18599) + 32
            mem[(7 * ceil32(return_data.size)) + 320 len 32 * _18599] = mem[(6 * ceil32(return_data.size)) + _18417 + 320 len 32 * _18599]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24955 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25015 = mem[_24955]
            _25075 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25015
            _25137 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25075 + 100] = 32
            mem[_25075 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25495 = mem[_25137]
            mem[_25075 + 164 len ceil32(mem[_25137])] = mem[_25137 + 32 len ceil32(mem[_25137])]
            if ceil32(_25495) > _25495:
                mem[_25495 + _25075 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25075 + 168 len _25495 - 4]
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
                mem[_25075 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25075 + 196] == bool(mem[_25075 + 196])
                    if not mem[_25075 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25015
        mem[(4 * ceil32(return_data.size)) + 96] = 30
        mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - ext_call.return_data[0] <= ext_call.return_data[0]:
            if arg1 - ext_call.return_data[0] <= dustThreshold:
                if not claimComp:
                    mem[(4 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
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
                    return ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 160] = 1
                mem[(4 * ceil32(return_data.size)) + 192] = cTokenAddress
                mem[(4 * ceil32(return_data.size)) + 224] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 228] = this.address
                mem[(4 * ceil32(return_data.size)) + 260] = 64
                mem[(4 * ceil32(return_data.size)) + 292] = 1
                idx = 0
                s = (4 * ceil32(return_data.size)) + 324
                t = (4 * ceil32(return_data.size)) + 192
                while idx < 1:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
                call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args address(this.address), Array(len=1, data=mem[(4 * ceil32(return_data.size)) + 324])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
                staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= sub_39a0e81a:
                    mem[(6 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                    mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 224] = 68
                    mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 324] = 32
                    mem[(7 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 388 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
                    mem[(7 * ceil32(return_data.size)) + 456] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
                        mem[(7 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 420] == bool(mem[(7 * ceil32(return_data.size)) + 420])
                            if not mem[(7 * ceil32(return_data.size)) + 420]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return ext_call.return_data[0]
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                    mem[(6 * ceil32(return_data.size)) + 224] = 2
                    mem[(6 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                    mem[(6 * ceil32(return_data.size)) + 288] = wantAddress
                    mem[(6 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 356] = 0
                    mem[(6 * ceil32(return_data.size)) + 388] = 160
                    mem[(6 * ceil32(return_data.size)) + 484] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 256
                    t = (6 * ceil32(return_data.size)) + 516
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 420] = this.address
                    mem[(6 * ceil32(return_data.size)) + 452] = block.timestamp
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 516 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _18422 = mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                    require mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 320 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                    _18606 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                    mem[(7 * ceil32(return_data.size)) + 320] = _18606
                    require return_data.size >= _18422 + (32 * _18606) + 32
                    mem[(7 * ceil32(return_data.size)) + 352 len 32 * _18606] = mem[(6 * ceil32(return_data.size)) + _18422 + 352 len 32 * _18606]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24958 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _25018 = mem[_24958]
                    _25078 = mem[64]
                    mem[mem[64] + 36] = address(strategyAddress)
                    mem[mem[64] + 68] = _25018
                    _25143 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_25078 + 100] = 32
                    mem[_25078 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _25498 = mem[_25143]
                    mem[_25078 + 164 len ceil32(mem[_25143])] = mem[_25143 + 32 len ceil32(mem[_25143])]
                    if ceil32(_25498) > _25498:
                        mem[_25498 + _25078 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_25078 + 168 len _25498 - 4]
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
                        mem[_25078 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_25078 + 196] == bool(mem[_25078 + 196])
                            if not mem[_25078 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return _25018
                mem[(6 * ceil32(return_data.size)) + 224] = 3
                mem[(6 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
                mem[(6 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                    mem[(6 * ceil32(return_data.size)) + 288] = wantAddress
                    mem[(6 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 388] = 0
                    mem[(6 * ceil32(return_data.size)) + 420] = 160
                    mem[(6 * ceil32(return_data.size)) + 516] = 3
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 256
                    t = (6 * ceil32(return_data.size)) + 548
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 452] = this.address
                    mem[(6 * ceil32(return_data.size)) + 484] = block.timestamp
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 548 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _18424 = mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                    require mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 352 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                    _18608 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                    mem[(7 * ceil32(return_data.size)) + 352] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                    require return_data.size >= _18424 + (32 * _18608) + 32
                    mem[(7 * ceil32(return_data.size)) + 384 len 32 * _18608] = mem[(6 * ceil32(return_data.size)) + _18424 + 384 len 32 * _18608]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24960 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _25020 = mem[_24960]
                    _25080 = mem[64]
                    mem[mem[64] + 36] = address(strategyAddress)
                    mem[mem[64] + 68] = _25020
                    _25147 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_25080 + 100] = 32
                    mem[_25080 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _25500 = mem[_25147]
                    mem[_25080 + 164 len ceil32(mem[_25147])] = mem[_25147 + 32 len ceil32(mem[_25147])]
                    if ceil32(_25500) > _25500:
                        mem[_25500 + _25080 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_25080 + 168 len _25500 - 4]
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
                        mem[_25080 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_25080 + 196] == bool(mem[_25080 + 196])
                            if not mem[_25080 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return _25020
                mem[(6 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[(6 * ceil32(return_data.size)) + 320] = wantAddress
                mem[(6 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 388] = 0
                mem[(6 * ceil32(return_data.size)) + 420] = 160
                mem[(6 * ceil32(return_data.size)) + 516] = 3
                idx = 0
                s = (6 * ceil32(return_data.size)) + 256
                t = (6 * ceil32(return_data.size)) + 548
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 452] = this.address
                mem[(6 * ceil32(return_data.size)) + 484] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 548 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _18423 = mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 352 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _18607 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(7 * ceil32(return_data.size)) + 352] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require return_data.size >= _18423 + (32 * _18607) + 32
                mem[(7 * ceil32(return_data.size)) + 384 len 32 * _18607] = mem[(6 * ceil32(return_data.size)) + _18423 + 384 len 32 * _18607]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24959 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25019 = mem[_24959]
                _25079 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25019
                _25145 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25079 + 100] = 32
                mem[_25079 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25499 = mem[_25145]
                mem[_25079 + 164 len ceil32(mem[_25145])] = mem[_25145 + 32 len ceil32(mem[_25145])]
                if ceil32(_25499) > _25499:
                    mem[_25499 + _25079 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25079 + 168 len _25499 - 4]
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
                    mem[_25079 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25079 + 196] == bool(mem[_25079 + 196])
                        if not mem[_25079 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25019
            mem[(4 * ceil32(return_data.size)) + 164] = arg1 - ext_call.return_data[0]
            require ext_code.size(cTokenAddress)
            call cTokenAddress.redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (arg1 - ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'ctoken: redeemUnderlying fail'
            if not claimComp:
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
                return ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 160] = 1
            mem[(6 * ceil32(return_data.size)) + 192] = cTokenAddress
            mem[(6 * ceil32(return_data.size)) + 224] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 228] = this.address
            mem[(6 * ceil32(return_data.size)) + 260] = 64
            mem[(6 * ceil32(return_data.size)) + 292] = 1
            idx = 0
            s = (6 * ceil32(return_data.size)) + 324
            t = (6 * ceil32(return_data.size)) + 192
            while idx < 1:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
            call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
                 gas gas_remaining wei
                args address(this.address), Array(len=1, data=mem[(6 * ceil32(return_data.size)) + 324])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
            staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= sub_39a0e81a:
                mem[(7 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(8 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 224] = 68
                mem[(8 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 324] = 32
                mem[(8 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 388 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
                mem[(8 * ceil32(return_data.size)) + 456] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
                    mem[(8 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 420] == bool(mem[(8 * ceil32(return_data.size)) + 420])
                        if not mem[(8 * ceil32(return_data.size)) + 420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return ext_call.return_data[0]
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(7 * ceil32(return_data.size)) + 224] = 2
                mem[(7 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                mem[(7 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 356] = 0
                mem[(7 * ceil32(return_data.size)) + 388] = 160
                mem[(7 * ceil32(return_data.size)) + 484] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 256
                t = (7 * ceil32(return_data.size)) + 516
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 420] = this.address
                mem[(7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 516 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _18428 = mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 320 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                _18614 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                mem[(8 * ceil32(return_data.size)) + 320] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require return_data.size >= _18428 + (32 * _18614) + 32
                mem[(8 * ceil32(return_data.size)) + 352 len 32 * _18614] = mem[(7 * ceil32(return_data.size)) + _18428 + 352 len 32 * _18614]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24962 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25022 = mem[_24962]
                _25082 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25022
                _25151 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25082 + 100] = 32
                mem[_25082 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25502 = mem[_25151]
                mem[_25082 + 164 len ceil32(mem[_25151])] = mem[_25151 + 32 len ceil32(mem[_25151])]
                if ceil32(_25502) > _25502:
                    mem[_25502 + _25082 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25082 + 168 len _25502 - 4]
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
                    mem[_25082 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25082 + 196] == bool(mem[_25082 + 196])
                        if not mem[_25082 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25022
            mem[(7 * ceil32(return_data.size)) + 224] = 3
            mem[(7 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
            mem[(7 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(7 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(7 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 388] = 0
                mem[(7 * ceil32(return_data.size)) + 420] = 160
                mem[(7 * ceil32(return_data.size)) + 516] = 3
                idx = 0
                s = (7 * ceil32(return_data.size)) + 256
                t = (7 * ceil32(return_data.size)) + 548
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 452] = this.address
                mem[(7 * ceil32(return_data.size)) + 484] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 548 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _18430 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _18616 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(8 * ceil32(return_data.size)) + 352] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require return_data.size >= _18430 + (32 * _18616) + 32
                mem[(8 * ceil32(return_data.size)) + 384 len 32 * _18616] = mem[(7 * ceil32(return_data.size)) + _18430 + 384 len 32 * _18616]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24964 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25024 = mem[_24964]
                _25084 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25024
                _25155 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25084 + 100] = 32
                mem[_25084 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25504 = mem[_25155]
                mem[_25084 + 164 len ceil32(mem[_25155])] = mem[_25155 + 32 len ceil32(mem[_25155])]
                if ceil32(_25504) > _25504:
                    mem[_25504 + _25084 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25084 + 168 len _25504 - 4]
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
                    mem[_25084 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25084 + 196] == bool(mem[_25084 + 196])
                        if not mem[_25084 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25024
            mem[(7 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(7 * ceil32(return_data.size)) + 320] = wantAddress
            mem[(7 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 388] = 0
            mem[(7 * ceil32(return_data.size)) + 420] = 160
            mem[(7 * ceil32(return_data.size)) + 516] = 3
            idx = 0
            s = (7 * ceil32(return_data.size)) + 256
            t = (7 * ceil32(return_data.size)) + 548
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 452] = this.address
            mem[(7 * ceil32(return_data.size)) + 484] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 548 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _18429 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _18615 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(8 * ceil32(return_data.size)) + 352] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require return_data.size >= _18429 + (32 * _18615) + 32
            mem[(8 * ceil32(return_data.size)) + 384 len 32 * _18615] = mem[(7 * ceil32(return_data.size)) + _18429 + 384 len 32 * _18615]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24963 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25023 = mem[_24963]
            _25083 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25023
            _25153 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25083 + 100] = 32
            mem[_25083 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25503 = mem[_25153]
            mem[_25083 + 164 len ceil32(mem[_25153])] = mem[_25153 + 32 len ceil32(mem[_25153])]
            if ceil32(_25503) > _25503:
                mem[_25503 + _25083 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25083 + 168 len _25503 - 4]
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
                mem[_25083 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25083 + 196] == bool(mem[_25083 + 196])
                    if not mem[_25083 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25023
        if ext_call.return_data[0] <= dustThreshold:
            if not claimComp:
                mem[(4 * ceil32(return_data.size)) + 164] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
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
                return ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 160] = 1
            mem[(4 * ceil32(return_data.size)) + 192] = cTokenAddress
            mem[(4 * ceil32(return_data.size)) + 224] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 228] = this.address
            mem[(4 * ceil32(return_data.size)) + 260] = 64
            mem[(4 * ceil32(return_data.size)) + 292] = 1
            idx = 0
            s = (4 * ceil32(return_data.size)) + 324
            t = (4 * ceil32(return_data.size)) + 192
            while idx < 1:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
            call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
                 gas gas_remaining wei
                args address(this.address), Array(len=1, data=mem[(4 * ceil32(return_data.size)) + 324])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
            staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= sub_39a0e81a:
                mem[(6 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 224] = 68
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 324] = 32
                mem[(7 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 388 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
                mem[(7 * ceil32(return_data.size)) + 456] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
                    mem[(7 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 420] == bool(mem[(7 * ceil32(return_data.size)) + 420])
                        if not mem[(7 * ceil32(return_data.size)) + 420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return ext_call.return_data[0]
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(6 * ceil32(return_data.size)) + 224] = 2
                mem[(6 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                mem[(6 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(6 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 356] = 0
                mem[(6 * ceil32(return_data.size)) + 388] = 160
                mem[(6 * ceil32(return_data.size)) + 484] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 256
                t = (6 * ceil32(return_data.size)) + 516
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 420] = this.address
                mem[(6 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 516 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _18434 = mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 320 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                _18622 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                mem[(7 * ceil32(return_data.size)) + 320] = _18622
                require return_data.size >= _18434 + (32 * _18622) + 32
                mem[(7 * ceil32(return_data.size)) + 352 len 32 * _18622] = mem[(6 * ceil32(return_data.size)) + _18434 + 352 len 32 * _18622]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24966 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25026 = mem[_24966]
                _25086 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25026
                _25159 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25086 + 100] = 32
                mem[_25086 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25506 = mem[_25159]
                mem[_25086 + 164 len ceil32(mem[_25159])] = mem[_25159 + 32 len ceil32(mem[_25159])]
                if ceil32(_25506) > _25506:
                    mem[_25506 + _25086 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25086 + 168 len _25506 - 4]
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
                    mem[_25086 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25086 + 196] == bool(mem[_25086 + 196])
                        if not mem[_25086 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25026
            mem[(6 * ceil32(return_data.size)) + 224] = 3
            mem[(6 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
            mem[(6 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(6 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(6 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 388] = 0
                mem[(6 * ceil32(return_data.size)) + 420] = 160
                mem[(6 * ceil32(return_data.size)) + 516] = 3
                idx = 0
                s = (6 * ceil32(return_data.size)) + 256
                t = (6 * ceil32(return_data.size)) + 548
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 452] = this.address
                mem[(6 * ceil32(return_data.size)) + 484] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 548 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _18436 = mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 352 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _18624 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(7 * ceil32(return_data.size)) + 352] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require return_data.size >= _18436 + (32 * _18624) + 32
                mem[(7 * ceil32(return_data.size)) + 384 len 32 * _18624] = mem[(6 * ceil32(return_data.size)) + _18436 + 384 len 32 * _18624]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24968 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25028 = mem[_24968]
                _25088 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25028
                _25163 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25088 + 100] = 32
                mem[_25088 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25508 = mem[_25163]
                mem[_25088 + 164 len ceil32(mem[_25163])] = mem[_25163 + 32 len ceil32(mem[_25163])]
                if ceil32(_25508) > _25508:
                    mem[_25508 + _25088 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25088 + 168 len _25508 - 4]
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
                    mem[_25088 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25088 + 196] == bool(mem[_25088 + 196])
                        if not mem[_25088 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25028
            mem[(6 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(6 * ceil32(return_data.size)) + 320] = wantAddress
            mem[(6 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 388] = 0
            mem[(6 * ceil32(return_data.size)) + 420] = 160
            mem[(6 * ceil32(return_data.size)) + 516] = 3
            idx = 0
            s = (6 * ceil32(return_data.size)) + 256
            t = (6 * ceil32(return_data.size)) + 548
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 452] = this.address
            mem[(6 * ceil32(return_data.size)) + 484] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 548 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _18435 = mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (6 * ceil32(return_data.size)) + return_data.size + 352 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _18623 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(7 * ceil32(return_data.size)) + 352] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require return_data.size >= _18435 + (32 * _18623) + 32
            mem[(7 * ceil32(return_data.size)) + 384 len 32 * _18623] = mem[(6 * ceil32(return_data.size)) + _18435 + 384 len 32 * _18623]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24967 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25027 = mem[_24967]
            _25087 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25027
            _25161 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25087 + 100] = 32
            mem[_25087 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25507 = mem[_25161]
            mem[_25087 + 164 len ceil32(mem[_25161])] = mem[_25161 + 32 len ceil32(mem[_25161])]
            if ceil32(_25507) > _25507:
                mem[_25507 + _25087 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25087 + 168 len _25507 - 4]
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
                mem[_25087 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25087 + 196] == bool(mem[_25087 + 196])
                    if not mem[_25087 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25027
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
        if not claimComp:
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
            return ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 160] = 1
        mem[(6 * ceil32(return_data.size)) + 192] = cTokenAddress
        mem[(6 * ceil32(return_data.size)) + 224] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 228] = this.address
        mem[(6 * ceil32(return_data.size)) + 260] = 64
        mem[(6 * ceil32(return_data.size)) + 292] = 1
        idx = 0
        s = (6 * ceil32(return_data.size)) + 324
        t = (6 * ceil32(return_data.size)) + 192
        while idx < 1:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
        call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
             gas gas_remaining wei
            args address(this.address), Array(len=1, data=mem[(6 * ceil32(return_data.size)) + 324])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
        staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= sub_39a0e81a:
            mem[(7 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(8 * ceil32(return_data.size)) + 260] = address(strategyAddress)
            mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 224] = 68
            mem[(8 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
            mem[(8 * ceil32(return_data.size)) + 324] = 32
            mem[(8 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 388 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
            mem[(8 * ceil32(return_data.size)) + 456] = 0
            call wantAddress with:
               funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
                mem[(8 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 420] == bool(mem[(8 * ceil32(return_data.size)) + 420])
                    if not mem[(8 * ceil32(return_data.size)) + 420]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return ext_call.return_data[0]
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(7 * ceil32(return_data.size)) + 224] = 2
            mem[(7 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
            mem[(7 * ceil32(return_data.size)) + 288] = wantAddress
            mem[(7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 356] = 0
            mem[(7 * ceil32(return_data.size)) + 388] = 160
            mem[(7 * ceil32(return_data.size)) + 484] = 2
            idx = 0
            s = (7 * ceil32(return_data.size)) + 256
            t = (7 * ceil32(return_data.size)) + 516
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 420] = this.address
            mem[(7 * ceil32(return_data.size)) + 452] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _18440 = mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
            require mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (7 * ceil32(return_data.size)) + return_data.size + 320 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
            _18630 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
            mem[(8 * ceil32(return_data.size)) + 320] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
            require return_data.size >= _18440 + (32 * _18630) + 32
            mem[(8 * ceil32(return_data.size)) + 352 len 32 * _18630] = mem[(7 * ceil32(return_data.size)) + _18440 + 352 len 32 * _18630]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24970 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25030 = mem[_24970]
            _25090 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25030
            _25167 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25090 + 100] = 32
            mem[_25090 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25510 = mem[_25167]
            mem[_25090 + 164 len ceil32(mem[_25167])] = mem[_25167 + 32 len ceil32(mem[_25167])]
            if ceil32(_25510) > _25510:
                mem[_25510 + _25090 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25090 + 168 len _25510 - 4]
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
                mem[_25090 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25090 + 196] == bool(mem[_25090 + 196])
                    if not mem[_25090 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25030
        mem[(7 * ceil32(return_data.size)) + 224] = 3
        mem[(7 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
        mem[(7 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(7 * ceil32(return_data.size)) + 288] = wantAddress
            mem[(7 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 388] = 0
            mem[(7 * ceil32(return_data.size)) + 420] = 160
            mem[(7 * ceil32(return_data.size)) + 516] = 3
            idx = 0
            s = (7 * ceil32(return_data.size)) + 256
            t = (7 * ceil32(return_data.size)) + 548
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 452] = this.address
            mem[(7 * ceil32(return_data.size)) + 484] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 548 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _18442 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _18632 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(8 * ceil32(return_data.size)) + 352] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require return_data.size >= _18442 + (32 * _18632) + 32
            mem[(8 * ceil32(return_data.size)) + 384 len 32 * _18632] = mem[(7 * ceil32(return_data.size)) + _18442 + 384 len 32 * _18632]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24972 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25032 = mem[_24972]
            _25092 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25032
            _25171 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25092 + 100] = 32
            mem[_25092 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25512 = mem[_25171]
            mem[_25092 + 164 len ceil32(mem[_25171])] = mem[_25171 + 32 len ceil32(mem[_25171])]
            if ceil32(_25512) > _25512:
                mem[_25512 + _25092 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25092 + 168 len _25512 - 4]
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
                mem[_25092 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25092 + 196] == bool(mem[_25092 + 196])
                    if not mem[_25092 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25032
        mem[(7 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(7 * ceil32(return_data.size)) + 320] = wantAddress
        mem[(7 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 388] = 0
        mem[(7 * ceil32(return_data.size)) + 420] = 160
        mem[(7 * ceil32(return_data.size)) + 516] = 3
        idx = 0
        s = (7 * ceil32(return_data.size)) + 256
        t = (7 * ceil32(return_data.size)) + 548
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 452] = this.address
        mem[(7 * ceil32(return_data.size)) + 484] = block.timestamp
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 548 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _18441 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
        _18631 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
        require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
        mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
        mem[(8 * ceil32(return_data.size)) + 352] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require return_data.size >= _18441 + (32 * _18631) + 32
        mem[(8 * ceil32(return_data.size)) + 384 len 32 * _18631] = mem[(7 * ceil32(return_data.size)) + _18441 + 384 len 32 * _18631]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24971 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25031 = mem[_24971]
        _25091 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _25031
        _25169 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_25091 + 100] = 32
        mem[_25091 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _25511 = mem[_25169]
        mem[_25091 + 164 len ceil32(mem[_25169])] = mem[_25169 + 32 len ceil32(mem[_25169])]
        if ceil32(_25511) > _25511:
            mem[_25511 + _25091 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_25091 + 168 len _25511 - 4]
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
            mem[_25091 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_25091 + 196] == bool(mem[_25091 + 196])
                if not mem[_25091 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _25031
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
                if not ext_call.return_data[0]:
                    return 0
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
                if not ext_call.return_data[0]:
                    return 0
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
            return ext_call.return_data[0]
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
            if not claimComp:
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
                return ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = 1
            mem[(6 * ceil32(return_data.size)) + 128] = cTokenAddress
            mem[(6 * ceil32(return_data.size)) + 160] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 164] = this.address
            mem[(6 * ceil32(return_data.size)) + 196] = 64
            mem[(6 * ceil32(return_data.size)) + 228] = 1
            idx = 0
            s = (6 * ceil32(return_data.size)) + 260
            t = (6 * ceil32(return_data.size)) + 128
            while idx < 1:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
            call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
                 gas gas_remaining wei
                args address(this.address), Array(len=1, data=mem[(6 * ceil32(return_data.size)) + 260])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 164] = this.address
            require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
            staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= sub_39a0e81a:
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
                mem[(8 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 260] = 32
                mem[(8 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 324 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
                mem[(8 * ceil32(return_data.size)) + 392] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
                return ext_call.return_data[0]
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(7 * ceil32(return_data.size)) + 160] = 2
                mem[(7 * ceil32(return_data.size)) + 192] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                mem[(7 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(7 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 292] = 0
                mem[(7 * ceil32(return_data.size)) + 324] = 160
                mem[(7 * ceil32(return_data.size)) + 420] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 192
                t = (7 * ceil32(return_data.size)) + 452
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 356] = this.address
                mem[(7 * ceil32(return_data.size)) + 388] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 452 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _18446 = mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 256 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287
                _18638 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288
                mem[(8 * ceil32(return_data.size)) + 256] = _18638
                require return_data.size >= _18446 + (32 * _18638) + 32
                mem[(8 * ceil32(return_data.size)) + 288 len 32 * _18638] = mem[(7 * ceil32(return_data.size)) + _18446 + 288 len 32 * _18638]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24974 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25034 = mem[_24974]
                _25094 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25034
                _25175 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25094 + 100] = 32
                mem[_25094 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25514 = mem[_25175]
                mem[_25094 + 164 len ceil32(mem[_25175])] = mem[_25175 + 32 len ceil32(mem[_25175])]
                if ceil32(_25514) > _25514:
                    mem[_25514 + _25094 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25094 + 168 len _25514 - 4]
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
                    mem[_25094 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25094 + 196] == bool(mem[_25094 + 196])
                        if not mem[_25094 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25034
            mem[(7 * ceil32(return_data.size)) + 160] = 3
            mem[(7 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
            mem[(7 * ceil32(return_data.size)) + 192] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(7 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(7 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 324] = 0
                mem[(7 * ceil32(return_data.size)) + 356] = 160
                mem[(7 * ceil32(return_data.size)) + 452] = 3
                idx = 0
                s = (7 * ceil32(return_data.size)) + 192
                t = (7 * ceil32(return_data.size)) + 484
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 388] = this.address
                mem[(7 * ceil32(return_data.size)) + 420] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 484 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _18448 = mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 288 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
                _18640 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
                mem[(8 * ceil32(return_data.size)) + 288] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                require return_data.size >= _18448 + (32 * _18640) + 32
                mem[(8 * ceil32(return_data.size)) + 320 len 32 * _18640] = mem[(7 * ceil32(return_data.size)) + _18448 + 320 len 32 * _18640]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24976 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25036 = mem[_24976]
                _25096 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25036
                _25179 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25096 + 100] = 32
                mem[_25096 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25516 = mem[_25179]
                mem[_25096 + 164 len ceil32(mem[_25179])] = mem[_25179 + 32 len ceil32(mem[_25179])]
                if ceil32(_25516) > _25516:
                    mem[_25516 + _25096 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25096 + 168 len _25516 - 4]
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
                    mem[_25096 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25096 + 196] == bool(mem[_25096 + 196])
                        if not mem[_25096 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25036
            mem[(7 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(7 * ceil32(return_data.size)) + 256] = wantAddress
            mem[(7 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 324] = 0
            mem[(7 * ceil32(return_data.size)) + 356] = 160
            mem[(7 * ceil32(return_data.size)) + 452] = 3
            idx = 0
            s = (7 * ceil32(return_data.size)) + 192
            t = (7 * ceil32(return_data.size)) + 484
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 388] = this.address
            mem[(7 * ceil32(return_data.size)) + 420] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 484 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _18447 = mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
            require mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (7 * ceil32(return_data.size)) + return_data.size + 288 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
            _18639 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
            mem[(8 * ceil32(return_data.size)) + 288] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
            require return_data.size >= _18447 + (32 * _18639) + 32
            mem[(8 * ceil32(return_data.size)) + 320 len 32 * _18639] = mem[(7 * ceil32(return_data.size)) + _18447 + 320 len 32 * _18639]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24975 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25035 = mem[_24975]
            _25095 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25035
            _25177 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25095 + 100] = 32
            mem[_25095 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25515 = mem[_25177]
            mem[_25095 + 164 len ceil32(mem[_25177])] = mem[_25177 + 32 len ceil32(mem[_25177])]
            if ceil32(_25515) > _25515:
                mem[_25515 + _25095 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25095 + 168 len _25515 - 4]
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
                mem[_25095 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25095 + 196] == bool(mem[_25095 + 196])
                    if not mem[_25095 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25035
        mem[(6 * ceil32(return_data.size)) + 96] = 30
        mem[(6 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - ext_call.return_data[0] <= ext_call.return_data[0]:
            if arg1 - ext_call.return_data[0] <= dustThreshold:
                if not claimComp:
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
                    return ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 160] = 1
                mem[(6 * ceil32(return_data.size)) + 192] = cTokenAddress
                mem[(6 * ceil32(return_data.size)) + 224] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 228] = this.address
                mem[(6 * ceil32(return_data.size)) + 260] = 64
                mem[(6 * ceil32(return_data.size)) + 292] = 1
                idx = 0
                s = (6 * ceil32(return_data.size)) + 324
                t = (6 * ceil32(return_data.size)) + 192
                while idx < 1:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
                call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args address(this.address), Array(len=1, data=mem[(6 * ceil32(return_data.size)) + 324])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
                staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= sub_39a0e81a:
                    mem[(7 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                    mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 224] = 68
                    mem[(8 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 324] = 32
                    mem[(8 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 388 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
                    mem[(8 * ceil32(return_data.size)) + 456] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
                        mem[(8 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 420] == bool(mem[(8 * ceil32(return_data.size)) + 420])
                            if not mem[(8 * ceil32(return_data.size)) + 420]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return ext_call.return_data[0]
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                    mem[(7 * ceil32(return_data.size)) + 224] = 2
                    mem[(7 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                    require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                    mem[(7 * ceil32(return_data.size)) + 288] = wantAddress
                    mem[(7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 356] = 0
                    mem[(7 * ceil32(return_data.size)) + 388] = 160
                    mem[(7 * ceil32(return_data.size)) + 484] = 2
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 256
                    t = (7 * ceil32(return_data.size)) + 516
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + 420] = this.address
                    mem[(7 * ceil32(return_data.size)) + 452] = block.timestamp
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 516 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (8 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _18452 = mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                    require mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (7 * ceil32(return_data.size)) + return_data.size + 320 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                    _18646 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                    mem[(8 * ceil32(return_data.size)) + 320] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                    require return_data.size >= _18452 + (32 * _18646) + 32
                    mem[(8 * ceil32(return_data.size)) + 352 len 32 * _18646] = mem[(7 * ceil32(return_data.size)) + _18452 + 352 len 32 * _18646]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24978 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _25038 = mem[_24978]
                    _25098 = mem[64]
                    mem[mem[64] + 36] = address(strategyAddress)
                    mem[mem[64] + 68] = _25038
                    _25183 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_25098 + 100] = 32
                    mem[_25098 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _25518 = mem[_25183]
                    mem[_25098 + 164 len ceil32(mem[_25183])] = mem[_25183 + 32 len ceil32(mem[_25183])]
                    if ceil32(_25518) > _25518:
                        mem[_25518 + _25098 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_25098 + 168 len _25518 - 4]
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
                        mem[_25098 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_25098 + 196] == bool(mem[_25098 + 196])
                            if not mem[_25098 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return _25038
                mem[(7 * ceil32(return_data.size)) + 224] = 3
                mem[(7 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
                mem[(7 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                    mem[(7 * ceil32(return_data.size)) + 288] = wantAddress
                    mem[(7 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 388] = 0
                    mem[(7 * ceil32(return_data.size)) + 420] = 160
                    mem[(7 * ceil32(return_data.size)) + 516] = 3
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 256
                    t = (7 * ceil32(return_data.size)) + 548
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + 452] = this.address
                    mem[(7 * ceil32(return_data.size)) + 484] = block.timestamp
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 548 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (8 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _18454 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                    require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                    _18648 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                    mem[(8 * ceil32(return_data.size)) + 352] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                    require return_data.size >= _18454 + (32 * _18648) + 32
                    mem[(8 * ceil32(return_data.size)) + 384 len 32 * _18648] = mem[(7 * ceil32(return_data.size)) + _18454 + 384 len 32 * _18648]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24980 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _25040 = mem[_24980]
                    _25100 = mem[64]
                    mem[mem[64] + 36] = address(strategyAddress)
                    mem[mem[64] + 68] = _25040
                    _25187 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_25100 + 100] = 32
                    mem[_25100 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _25520 = mem[_25187]
                    mem[_25100 + 164 len ceil32(mem[_25187])] = mem[_25187 + 32 len ceil32(mem[_25187])]
                    if ceil32(_25520) > _25520:
                        mem[_25520 + _25100 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_25100 + 168 len _25520 - 4]
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
                        mem[_25100 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_25100 + 196] == bool(mem[_25100 + 196])
                            if not mem[_25100 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return _25040
                mem[(7 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[(7 * ceil32(return_data.size)) + 320] = wantAddress
                mem[(7 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 388] = 0
                mem[(7 * ceil32(return_data.size)) + 420] = 160
                mem[(7 * ceil32(return_data.size)) + 516] = 3
                idx = 0
                s = (7 * ceil32(return_data.size)) + 256
                t = (7 * ceil32(return_data.size)) + 548
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 452] = this.address
                mem[(7 * ceil32(return_data.size)) + 484] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 548 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _18453 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _18647 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(8 * ceil32(return_data.size)) + 352] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require return_data.size >= _18453 + (32 * _18647) + 32
                mem[(8 * ceil32(return_data.size)) + 384 len 32 * _18647] = mem[(7 * ceil32(return_data.size)) + _18453 + 384 len 32 * _18647]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24979 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25039 = mem[_24979]
                _25099 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25039
                _25185 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25099 + 100] = 32
                mem[_25099 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25519 = mem[_25185]
                mem[_25099 + 164 len ceil32(mem[_25185])] = mem[_25185 + 32 len ceil32(mem[_25185])]
                if ceil32(_25519) > _25519:
                    mem[_25519 + _25099 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25099 + 168 len _25519 - 4]
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
                    mem[_25099 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25099 + 196] == bool(mem[_25099 + 196])
                        if not mem[_25099 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25039
            mem[(6 * ceil32(return_data.size)) + 164] = arg1 - ext_call.return_data[0]
            require ext_code.size(cTokenAddress)
            call cTokenAddress.redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (arg1 - ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'ctoken: redeemUnderlying fail'
            if not claimComp:
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
                return ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 160] = 1
            mem[(7 * ceil32(return_data.size)) + 192] = cTokenAddress
            mem[(7 * ceil32(return_data.size)) + 224] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 228] = this.address
            mem[(7 * ceil32(return_data.size)) + 260] = 64
            mem[(7 * ceil32(return_data.size)) + 292] = 1
            idx = 0
            s = (7 * ceil32(return_data.size)) + 324
            t = (7 * ceil32(return_data.size)) + 192
            while idx < 1:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
            call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
                 gas gas_remaining wei
                args address(this.address), Array(len=1, data=mem[(7 * ceil32(return_data.size)) + 324])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
            staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= sub_39a0e81a:
                mem[(8 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(10 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                mem[(10 * ceil32(return_data.size)) + 224] = 68
                mem[(10 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(10 * ceil32(return_data.size)) + 324] = 32
                mem[(10 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(10 * ceil32(return_data.size)) + 388 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
                mem[(10 * ceil32(return_data.size)) + 456] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
                    mem[(10 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(10 * ceil32(return_data.size)) + 420] == bool(mem[(10 * ceil32(return_data.size)) + 420])
                        if not mem[(10 * ceil32(return_data.size)) + 420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return ext_call.return_data[0]
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 224] = 2
                mem[(8 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                mem[(8 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 356] = 0
                mem[(8 * ceil32(return_data.size)) + 388] = 160
                mem[(8 * ceil32(return_data.size)) + 484] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 256
                t = (8 * ceil32(return_data.size)) + 516
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 420] = this.address
                mem[(8 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 516 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _18458 = mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                require mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 320 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                _18654 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                mem[(10 * ceil32(return_data.size)) + 320] = _18654
                require return_data.size >= _18458 + (32 * _18654) + 32
                mem[(10 * ceil32(return_data.size)) + 352 len 32 * _18654] = mem[(8 * ceil32(return_data.size)) + _18458 + 352 len 32 * _18654]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24982 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25042 = mem[_24982]
                _25102 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25042
                _25191 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25102 + 100] = 32
                mem[_25102 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25522 = mem[_25191]
                mem[_25102 + 164 len ceil32(mem[_25191])] = mem[_25191 + 32 len ceil32(mem[_25191])]
                if ceil32(_25522) > _25522:
                    mem[_25522 + _25102 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25102 + 168 len _25522 - 4]
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
                    mem[_25102 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25102 + 196] == bool(mem[_25102 + 196])
                        if not mem[_25102 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25042
            mem[(8 * ceil32(return_data.size)) + 224] = 3
            mem[(8 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
            mem[(8 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 388] = 0
                mem[(8 * ceil32(return_data.size)) + 420] = 160
                mem[(8 * ceil32(return_data.size)) + 516] = 3
                idx = 0
                s = (8 * ceil32(return_data.size)) + 256
                t = (8 * ceil32(return_data.size)) + 548
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 452] = this.address
                mem[(8 * ceil32(return_data.size)) + 484] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 548 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _18460 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _18656 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(10 * ceil32(return_data.size)) + 352] = _18656
                require return_data.size >= _18460 + (32 * _18656) + 32
                mem[(10 * ceil32(return_data.size)) + 384 len 32 * _18656] = mem[(8 * ceil32(return_data.size)) + _18460 + 384 len 32 * _18656]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24984 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25044 = mem[_24984]
                _25104 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25044
                _25195 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25104 + 100] = 32
                mem[_25104 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25524 = mem[_25195]
                mem[_25104 + 164 len ceil32(mem[_25195])] = mem[_25195 + 32 len ceil32(mem[_25195])]
                if ceil32(_25524) > _25524:
                    mem[_25524 + _25104 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25104 + 168 len _25524 - 4]
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
                    mem[_25104 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25104 + 196] == bool(mem[_25104 + 196])
                        if not mem[_25104 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25044
            mem[(8 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(8 * ceil32(return_data.size)) + 320] = wantAddress
            mem[(8 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 388] = 0
            mem[(8 * ceil32(return_data.size)) + 420] = 160
            mem[(8 * ceil32(return_data.size)) + 516] = 3
            idx = 0
            s = (8 * ceil32(return_data.size)) + 256
            t = (8 * ceil32(return_data.size)) + 548
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 452] = this.address
            mem[(8 * ceil32(return_data.size)) + 484] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 548 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _18459 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _18655 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(10 * ceil32(return_data.size)) + 352] = _18655
            require return_data.size >= _18459 + (32 * _18655) + 32
            mem[(10 * ceil32(return_data.size)) + 384 len 32 * _18655] = mem[(8 * ceil32(return_data.size)) + _18459 + 384 len 32 * _18655]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24983 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25043 = mem[_24983]
            _25103 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25043
            _25193 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25103 + 100] = 32
            mem[_25103 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25523 = mem[_25193]
            mem[_25103 + 164 len ceil32(mem[_25193])] = mem[_25193 + 32 len ceil32(mem[_25193])]
            if ceil32(_25523) > _25523:
                mem[_25523 + _25103 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25103 + 168 len _25523 - 4]
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
                mem[_25103 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25103 + 196] == bool(mem[_25103 + 196])
                    if not mem[_25103 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25043
        if ext_call.return_data[0] <= dustThreshold:
            if not claimComp:
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
                return ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 160] = 1
            mem[(6 * ceil32(return_data.size)) + 192] = cTokenAddress
            mem[(6 * ceil32(return_data.size)) + 224] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 228] = this.address
            mem[(6 * ceil32(return_data.size)) + 260] = 64
            mem[(6 * ceil32(return_data.size)) + 292] = 1
            idx = 0
            s = (6 * ceil32(return_data.size)) + 324
            t = (6 * ceil32(return_data.size)) + 192
            while idx < 1:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
            call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
                 gas gas_remaining wei
                args address(this.address), Array(len=1, data=mem[(6 * ceil32(return_data.size)) + 324])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
            staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= sub_39a0e81a:
                mem[(7 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(8 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 224] = 68
                mem[(8 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 324] = 32
                mem[(8 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 388 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
                mem[(8 * ceil32(return_data.size)) + 456] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
                    mem[(8 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 420] == bool(mem[(8 * ceil32(return_data.size)) + 420])
                        if not mem[(8 * ceil32(return_data.size)) + 420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return ext_call.return_data[0]
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(7 * ceil32(return_data.size)) + 224] = 2
                mem[(7 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                mem[(7 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 356] = 0
                mem[(7 * ceil32(return_data.size)) + 388] = 160
                mem[(7 * ceil32(return_data.size)) + 484] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 256
                t = (7 * ceil32(return_data.size)) + 516
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 420] = this.address
                mem[(7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 516 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _18464 = mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 320 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                _18662 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                mem[(8 * ceil32(return_data.size)) + 320] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require return_data.size >= _18464 + (32 * _18662) + 32
                mem[(8 * ceil32(return_data.size)) + 352 len 32 * _18662] = mem[(7 * ceil32(return_data.size)) + _18464 + 352 len 32 * _18662]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24986 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25046 = mem[_24986]
                _25106 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25046
                _25199 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25106 + 100] = 32
                mem[_25106 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25526 = mem[_25199]
                mem[_25106 + 164 len ceil32(mem[_25199])] = mem[_25199 + 32 len ceil32(mem[_25199])]
                if ceil32(_25526) > _25526:
                    mem[_25526 + _25106 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25106 + 168 len _25526 - 4]
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
                    mem[_25106 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25106 + 196] == bool(mem[_25106 + 196])
                        if not mem[_25106 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25046
            mem[(7 * ceil32(return_data.size)) + 224] = 3
            mem[(7 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
            mem[(7 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(7 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(7 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 388] = 0
                mem[(7 * ceil32(return_data.size)) + 420] = 160
                mem[(7 * ceil32(return_data.size)) + 516] = 3
                idx = 0
                s = (7 * ceil32(return_data.size)) + 256
                t = (7 * ceil32(return_data.size)) + 548
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 452] = this.address
                mem[(7 * ceil32(return_data.size)) + 484] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 548 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _18466 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _18664 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(8 * ceil32(return_data.size)) + 352] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require return_data.size >= _18466 + (32 * _18664) + 32
                mem[(8 * ceil32(return_data.size)) + 384 len 32 * _18664] = mem[(7 * ceil32(return_data.size)) + _18466 + 384 len 32 * _18664]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24988 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25048 = mem[_24988]
                _25108 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25048
                _25203 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25108 + 100] = 32
                mem[_25108 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25528 = mem[_25203]
                mem[_25108 + 164 len ceil32(mem[_25203])] = mem[_25203 + 32 len ceil32(mem[_25203])]
                if ceil32(_25528) > _25528:
                    mem[_25528 + _25108 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25108 + 168 len _25528 - 4]
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
                    mem[_25108 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25108 + 196] == bool(mem[_25108 + 196])
                        if not mem[_25108 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25048
            mem[(7 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(7 * ceil32(return_data.size)) + 320] = wantAddress
            mem[(7 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 388] = 0
            mem[(7 * ceil32(return_data.size)) + 420] = 160
            mem[(7 * ceil32(return_data.size)) + 516] = 3
            idx = 0
            s = (7 * ceil32(return_data.size)) + 256
            t = (7 * ceil32(return_data.size)) + 548
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 452] = this.address
            mem[(7 * ceil32(return_data.size)) + 484] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(7 * ceil32(return_data.size)) + 548 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _18465 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _18663 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(8 * ceil32(return_data.size)) + 352] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require return_data.size >= _18465 + (32 * _18663) + 32
            mem[(8 * ceil32(return_data.size)) + 384 len 32 * _18663] = mem[(7 * ceil32(return_data.size)) + _18465 + 384 len 32 * _18663]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24987 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25047 = mem[_24987]
            _25107 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25047
            _25201 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25107 + 100] = 32
            mem[_25107 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25527 = mem[_25201]
            mem[_25107 + 164 len ceil32(mem[_25201])] = mem[_25201 + 32 len ceil32(mem[_25201])]
            if ceil32(_25527) > _25527:
                mem[_25527 + _25107 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25107 + 168 len _25527 - 4]
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
                mem[_25107 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25107 + 196] == bool(mem[_25107 + 196])
                    if not mem[_25107 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25047
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
        if not claimComp:
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
            return ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 160] = 1
        mem[(7 * ceil32(return_data.size)) + 192] = cTokenAddress
        mem[(7 * ceil32(return_data.size)) + 224] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 228] = this.address
        mem[(7 * ceil32(return_data.size)) + 260] = 64
        mem[(7 * ceil32(return_data.size)) + 292] = 1
        idx = 0
        s = (7 * ceil32(return_data.size)) + 324
        t = (7 * ceil32(return_data.size)) + 192
        while idx < 1:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
        call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
             gas gas_remaining wei
            args address(this.address), Array(len=1, data=mem[(7 * ceil32(return_data.size)) + 324])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
        staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= sub_39a0e81a:
            mem[(8 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(10 * ceil32(return_data.size)) + 260] = address(strategyAddress)
            mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 224] = 68
            mem[(10 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
            mem[(10 * ceil32(return_data.size)) + 324] = 32
            mem[(10 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(10 * ceil32(return_data.size)) + 388 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
            mem[(10 * ceil32(return_data.size)) + 456] = 0
            call wantAddress with:
               funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
                mem[(10 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(10 * ceil32(return_data.size)) + 420] == bool(mem[(10 * ceil32(return_data.size)) + 420])
                    if not mem[(10 * ceil32(return_data.size)) + 420]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return ext_call.return_data[0]
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(8 * ceil32(return_data.size)) + 224] = 2
            mem[(8 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
            mem[(8 * ceil32(return_data.size)) + 288] = wantAddress
            mem[(8 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 356] = 0
            mem[(8 * ceil32(return_data.size)) + 388] = 160
            mem[(8 * ceil32(return_data.size)) + 484] = 2
            idx = 0
            s = (8 * ceil32(return_data.size)) + 256
            t = (8 * ceil32(return_data.size)) + 516
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 420] = this.address
            mem[(8 * ceil32(return_data.size)) + 452] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _18470 = mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 320 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
            _18670 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
            mem[(10 * ceil32(return_data.size)) + 320] = _18670
            require return_data.size >= _18470 + (32 * _18670) + 32
            mem[(10 * ceil32(return_data.size)) + 352 len 32 * _18670] = mem[(8 * ceil32(return_data.size)) + _18470 + 352 len 32 * _18670]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24990 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25050 = mem[_24990]
            _25110 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25050
            _25207 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25110 + 100] = 32
            mem[_25110 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25530 = mem[_25207]
            mem[_25110 + 164 len ceil32(mem[_25207])] = mem[_25207 + 32 len ceil32(mem[_25207])]
            if ceil32(_25530) > _25530:
                mem[_25530 + _25110 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25110 + 168 len _25530 - 4]
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
                mem[_25110 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25110 + 196] == bool(mem[_25110 + 196])
                    if not mem[_25110 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25050
        mem[(8 * ceil32(return_data.size)) + 224] = 3
        mem[(8 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
        mem[(8 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(8 * ceil32(return_data.size)) + 288] = wantAddress
            mem[(8 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 388] = 0
            mem[(8 * ceil32(return_data.size)) + 420] = 160
            mem[(8 * ceil32(return_data.size)) + 516] = 3
            idx = 0
            s = (8 * ceil32(return_data.size)) + 256
            t = (8 * ceil32(return_data.size)) + 548
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 452] = this.address
            mem[(8 * ceil32(return_data.size)) + 484] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 548 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _18472 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _18672 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(10 * ceil32(return_data.size)) + 352] = _18672
            require return_data.size >= _18472 + (32 * _18672) + 32
            mem[(10 * ceil32(return_data.size)) + 384 len 32 * _18672] = mem[(8 * ceil32(return_data.size)) + _18472 + 384 len 32 * _18672]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24992 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25052 = mem[_24992]
            _25112 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25052
            _25211 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25112 + 100] = 32
            mem[_25112 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25532 = mem[_25211]
            mem[_25112 + 164 len ceil32(mem[_25211])] = mem[_25211 + 32 len ceil32(mem[_25211])]
            if ceil32(_25532) > _25532:
                mem[_25532 + _25112 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25112 + 168 len _25532 - 4]
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
                mem[_25112 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25112 + 196] == bool(mem[_25112 + 196])
                    if not mem[_25112 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25052
        mem[(8 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(8 * ceil32(return_data.size)) + 320] = wantAddress
        mem[(8 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 388] = 0
        mem[(8 * ceil32(return_data.size)) + 420] = 160
        mem[(8 * ceil32(return_data.size)) + 516] = 3
        idx = 0
        s = (8 * ceil32(return_data.size)) + 256
        t = (8 * ceil32(return_data.size)) + 548
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 452] = this.address
        mem[(8 * ceil32(return_data.size)) + 484] = block.timestamp
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 548 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _18471 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
        _18671 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
        mem[(10 * ceil32(return_data.size)) + 352] = _18671
        require return_data.size >= _18471 + (32 * _18671) + 32
        mem[(10 * ceil32(return_data.size)) + 384 len 32 * _18671] = mem[(8 * ceil32(return_data.size)) + _18471 + 384 len 32 * _18671]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24991 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25051 = mem[_24991]
        _25111 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _25051
        _25209 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_25111 + 100] = 32
        mem[_25111 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _25531 = mem[_25209]
        mem[_25111 + 164 len ceil32(mem[_25209])] = mem[_25209 + 32 len ceil32(mem[_25209])]
        if ceil32(_25531) > _25531:
            mem[_25531 + _25111 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_25111 + 168 len _25531 - 4]
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
            mem[_25111 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_25111 + 196] == bool(mem[_25111 + 196])
                if not mem[_25111 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _25051
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
            if not ext_call.return_data[0]:
                return 0
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
            if not ext_call.return_data[0]:
                return 0
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
        return ext_call.return_data[0]
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
        if not claimComp:
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
            return ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = 1
        mem[(7 * ceil32(return_data.size)) + 128] = cTokenAddress
        mem[(7 * ceil32(return_data.size)) + 160] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 164] = this.address
        mem[(7 * ceil32(return_data.size)) + 196] = 64
        mem[(7 * ceil32(return_data.size)) + 228] = 1
        idx = 0
        s = (7 * ceil32(return_data.size)) + 260
        t = (7 * ceil32(return_data.size)) + 128
        while idx < 1:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
        call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
             gas gas_remaining wei
            args address(this.address), Array(len=1, data=mem[(7 * ceil32(return_data.size)) + 260])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
        staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= sub_39a0e81a:
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
            mem[(10 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
            mem[(10 * ceil32(return_data.size)) + 260] = 32
            mem[(10 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(10 * ceil32(return_data.size)) + 324 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
            mem[(10 * ceil32(return_data.size)) + 392] = 0
            call wantAddress with:
               funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(8 * ceil32(return_data.size)) + 160] = 2
            mem[(8 * ceil32(return_data.size)) + 192] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
            mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
            mem[(8 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 292] = 0
            mem[(8 * ceil32(return_data.size)) + 324] = 160
            mem[(8 * ceil32(return_data.size)) + 420] = 2
            idx = 0
            s = (8 * ceil32(return_data.size)) + 192
            t = (8 * ceil32(return_data.size)) + 452
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 356] = this.address
            mem[(8 * ceil32(return_data.size)) + 388] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 452 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _18476 = mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287
            _18678 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288
            mem[(10 * ceil32(return_data.size)) + 256] = _18678
            require return_data.size >= _18476 + (32 * _18678) + 32
            mem[(10 * ceil32(return_data.size)) + 288 len 32 * _18678] = mem[(8 * ceil32(return_data.size)) + _18476 + 288 len 32 * _18678]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24994 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25054 = mem[_24994]
            _25114 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25054
            _25215 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25114 + 100] = 32
            mem[_25114 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25534 = mem[_25215]
            mem[_25114 + 164 len ceil32(mem[_25215])] = mem[_25215 + 32 len ceil32(mem[_25215])]
            if ceil32(_25534) > _25534:
                mem[_25534 + _25114 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25114 + 168 len _25534 - 4]
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
                mem[_25114 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25114 + 196] == bool(mem[_25114 + 196])
                    if not mem[_25114 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25054
        mem[(8 * ceil32(return_data.size)) + 160] = 3
        mem[(8 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
        mem[(8 * ceil32(return_data.size)) + 192] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(8 * ceil32(return_data.size)) + 224] = wantAddress
            mem[(8 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 324] = 0
            mem[(8 * ceil32(return_data.size)) + 356] = 160
            mem[(8 * ceil32(return_data.size)) + 452] = 3
            idx = 0
            s = (8 * ceil32(return_data.size)) + 192
            t = (8 * ceil32(return_data.size)) + 484
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 388] = this.address
            mem[(8 * ceil32(return_data.size)) + 420] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 484 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _18478 = mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
            _18680 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
            mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
            require return_data.size >= _18478 + (32 * _18680) + 32
            mem[(10 * ceil32(return_data.size)) + 320 len 32 * _18680] = mem[(8 * ceil32(return_data.size)) + _18478 + 320 len 32 * _18680]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24996 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25056 = mem[_24996]
            _25116 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25056
            _25219 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25116 + 100] = 32
            mem[_25116 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25536 = mem[_25219]
            mem[_25116 + 164 len ceil32(mem[_25219])] = mem[_25219 + 32 len ceil32(mem[_25219])]
            if ceil32(_25536) > _25536:
                mem[_25536 + _25116 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25116 + 168 len _25536 - 4]
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
                mem[_25116 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25116 + 196] == bool(mem[_25116 + 196])
                    if not mem[_25116 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25056
        mem[(8 * ceil32(return_data.size)) + 224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(8 * ceil32(return_data.size)) + 256] = wantAddress
        mem[(8 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 324] = 0
        mem[(8 * ceil32(return_data.size)) + 356] = 160
        mem[(8 * ceil32(return_data.size)) + 452] = 3
        idx = 0
        s = (8 * ceil32(return_data.size)) + 192
        t = (8 * ceil32(return_data.size)) + 484
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 388] = this.address
        mem[(8 * ceil32(return_data.size)) + 420] = block.timestamp
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 484 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _18477 = mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
        _18679 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
        mem[(10 * ceil32(return_data.size)) + 288] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
        require return_data.size >= _18477 + (32 * _18679) + 32
        mem[(10 * ceil32(return_data.size)) + 320 len 32 * _18679] = mem[(8 * ceil32(return_data.size)) + _18477 + 320 len 32 * _18679]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24995 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25055 = mem[_24995]
        _25115 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _25055
        _25217 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_25115 + 100] = 32
        mem[_25115 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _25535 = mem[_25217]
        mem[_25115 + 164 len ceil32(mem[_25217])] = mem[_25217 + 32 len ceil32(mem[_25217])]
        if ceil32(_25535) > _25535:
            mem[_25535 + _25115 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_25115 + 168 len _25535 - 4]
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
            mem[_25115 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_25115 + 196] == bool(mem[_25115 + 196])
                if not mem[_25115 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _25055
    mem[(7 * ceil32(return_data.size)) + 96] = 30
    mem[(7 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 - ext_call.return_data[0] <= ext_call.return_data[0]:
        if arg1 - ext_call.return_data[0] <= dustThreshold:
            if not claimComp:
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
                return ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 160] = 1
            mem[(7 * ceil32(return_data.size)) + 192] = cTokenAddress
            mem[(7 * ceil32(return_data.size)) + 224] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 228] = this.address
            mem[(7 * ceil32(return_data.size)) + 260] = 64
            mem[(7 * ceil32(return_data.size)) + 292] = 1
            idx = 0
            s = (7 * ceil32(return_data.size)) + 324
            t = (7 * ceil32(return_data.size)) + 192
            while idx < 1:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
            call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
                 gas gas_remaining wei
                args address(this.address), Array(len=1, data=mem[(7 * ceil32(return_data.size)) + 324])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
            staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= sub_39a0e81a:
                mem[(8 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(10 * ceil32(return_data.size)) + 260] = address(strategyAddress)
                mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                mem[(10 * ceil32(return_data.size)) + 224] = 68
                mem[(10 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(10 * ceil32(return_data.size)) + 324] = 32
                mem[(10 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(10 * ceil32(return_data.size)) + 388 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
                mem[(10 * ceil32(return_data.size)) + 456] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
                    mem[(10 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(10 * ceil32(return_data.size)) + 420] == bool(mem[(10 * ceil32(return_data.size)) + 420])
                        if not mem[(10 * ceil32(return_data.size)) + 420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return ext_call.return_data[0]
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 224] = 2
                mem[(8 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
                require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
                mem[(8 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 356] = 0
                mem[(8 * ceil32(return_data.size)) + 388] = 160
                mem[(8 * ceil32(return_data.size)) + 484] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 256
                t = (8 * ceil32(return_data.size)) + 516
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 420] = this.address
                mem[(8 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 516 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _18482 = mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                require mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 320 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                _18686 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                mem[(10 * ceil32(return_data.size)) + 320] = _18686
                require return_data.size >= _18482 + (32 * _18686) + 32
                mem[(10 * ceil32(return_data.size)) + 352 len 32 * _18686] = mem[(8 * ceil32(return_data.size)) + _18482 + 352 len 32 * _18686]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24998 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25058 = mem[_24998]
                _25118 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25058
                _25223 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25118 + 100] = 32
                mem[_25118 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25538 = mem[_25223]
                mem[_25118 + 164 len ceil32(mem[_25223])] = mem[_25223 + 32 len ceil32(mem[_25223])]
                if ceil32(_25538) > _25538:
                    mem[_25538 + _25118 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25118 + 168 len _25538 - 4]
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
                    mem[_25118 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25118 + 196] == bool(mem[_25118 + 196])
                        if not mem[_25118 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25058
            mem[(8 * ceil32(return_data.size)) + 224] = 3
            mem[(8 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
            mem[(8 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
                mem[(8 * ceil32(return_data.size)) + 288] = wantAddress
                mem[(8 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 388] = 0
                mem[(8 * ceil32(return_data.size)) + 420] = 160
                mem[(8 * ceil32(return_data.size)) + 516] = 3
                idx = 0
                s = (8 * ceil32(return_data.size)) + 256
                t = (8 * ceil32(return_data.size)) + 548
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 452] = this.address
                mem[(8 * ceil32(return_data.size)) + 484] = block.timestamp
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 548 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _18484 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _18688 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(10 * ceil32(return_data.size)) + 352] = _18688
                require return_data.size >= _18484 + (32 * _18688) + 32
                mem[(10 * ceil32(return_data.size)) + 384 len 32 * _18688] = mem[(8 * ceil32(return_data.size)) + _18484 + 384 len 32 * _18688]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _25000 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25060 = mem[_25000]
                _25120 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _25060
                _25227 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_25120 + 100] = 32
                mem[_25120 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _25540 = mem[_25227]
                mem[_25120 + 164 len ceil32(mem[_25227])] = mem[_25227 + 32 len ceil32(mem[_25227])]
                if ceil32(_25540) > _25540:
                    mem[_25540 + _25120 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_25120 + 168 len _25540 - 4]
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
                    mem[_25120 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_25120 + 196] == bool(mem[_25120 + 196])
                        if not mem[_25120 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _25060
            mem[(8 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[(8 * ceil32(return_data.size)) + 320] = wantAddress
            mem[(8 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 388] = 0
            mem[(8 * ceil32(return_data.size)) + 420] = 160
            mem[(8 * ceil32(return_data.size)) + 516] = 3
            idx = 0
            s = (8 * ceil32(return_data.size)) + 256
            t = (8 * ceil32(return_data.size)) + 548
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 452] = this.address
            mem[(8 * ceil32(return_data.size)) + 484] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 548 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _18483 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _18687 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(10 * ceil32(return_data.size)) + 352] = _18687
            require return_data.size >= _18483 + (32 * _18687) + 32
            mem[(10 * ceil32(return_data.size)) + 384 len 32 * _18687] = mem[(8 * ceil32(return_data.size)) + _18483 + 384 len 32 * _18687]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24999 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25059 = mem[_24999]
            _25119 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25059
            _25225 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25119 + 100] = 32
            mem[_25119 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25539 = mem[_25225]
            mem[_25119 + 164 len ceil32(mem[_25225])] = mem[_25225 + 32 len ceil32(mem[_25225])]
            if ceil32(_25539) > _25539:
                mem[_25539 + _25119 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25119 + 168 len _25539 - 4]
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
                mem[_25119 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25119 + 196] == bool(mem[_25119 + 196])
                    if not mem[_25119 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25059
        mem[(7 * ceil32(return_data.size)) + 164] = arg1 - ext_call.return_data[0]
        require ext_code.size(cTokenAddress)
        call cTokenAddress.redeemUnderlying(uint256 arg1) with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'ctoken: redeemUnderlying fail'
        if not claimComp:
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
        mem[(8 * ceil32(return_data.size)) + 160] = 1
        mem[(8 * ceil32(return_data.size)) + 192] = cTokenAddress
        mem[(8 * ceil32(return_data.size)) + 224] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 228] = this.address
        mem[(8 * ceil32(return_data.size)) + 260] = 64
        mem[(8 * ceil32(return_data.size)) + 292] = 1
        idx = 0
        s = (8 * ceil32(return_data.size)) + 324
        t = (8 * ceil32(return_data.size)) + 192
        while idx < 1:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
        call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
             gas gas_remaining wei
            args address(this.address), Array(len=1, data=mem[(8 * ceil32(return_data.size)) + 324])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
        staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= sub_39a0e81a:
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
            mem[(11 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
            mem[(11 * ceil32(return_data.size)) + 324] = 32
            mem[(11 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(11 * ceil32(return_data.size)) + 388 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
            mem[(11 * ceil32(return_data.size)) + 456] = 0
            call wantAddress with:
               funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
            return ext_call.return_data[0]
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(10 * ceil32(return_data.size)) + 224] = 2
            mem[(10 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
            mem[(10 * ceil32(return_data.size)) + 288] = wantAddress
            mem[(10 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(10 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 356] = 0
            mem[(10 * ceil32(return_data.size)) + 388] = 160
            mem[(10 * ceil32(return_data.size)) + 484] = 2
            idx = 0
            s = (10 * ceil32(return_data.size)) + 256
            t = (10 * ceil32(return_data.size)) + 516
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(10 * ceil32(return_data.size)) + 420] = this.address
            mem[(10 * ceil32(return_data.size)) + 452] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(10 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (11 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _18488 = mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
            require mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (10 * ceil32(return_data.size)) + return_data.size + 320 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
            _18694 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
            require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
            mem[(11 * ceil32(return_data.size)) + 320] = _18694
            require return_data.size >= _18488 + (32 * _18694) + 32
            mem[(11 * ceil32(return_data.size)) + 352 len 32 * _18694] = mem[(10 * ceil32(return_data.size)) + _18488 + 352 len 32 * _18694]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25002 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25062 = mem[_25002]
            _25122 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25062
            _25231 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25122 + 100] = 32
            mem[_25122 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25542 = mem[_25231]
            mem[_25122 + 164 len ceil32(mem[_25231])] = mem[_25231 + 32 len ceil32(mem[_25231])]
            if ceil32(_25542) > _25542:
                mem[_25542 + _25122 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25122 + 168 len _25542 - 4]
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
                mem[_25122 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25122 + 196] == bool(mem[_25122 + 196])
                    if not mem[_25122 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25062
        mem[(10 * ceil32(return_data.size)) + 224] = 3
        mem[(10 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
        mem[(10 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(10 * ceil32(return_data.size)) + 288] = wantAddress
            mem[(10 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(10 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 388] = 0
            mem[(10 * ceil32(return_data.size)) + 420] = 160
            mem[(10 * ceil32(return_data.size)) + 516] = 3
            idx = 0
            s = (10 * ceil32(return_data.size)) + 256
            t = (10 * ceil32(return_data.size)) + 548
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(10 * ceil32(return_data.size)) + 452] = this.address
            mem[(10 * ceil32(return_data.size)) + 484] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 548 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(10 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (11 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _18490 = mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (10 * ceil32(return_data.size)) + return_data.size + 352 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _18696 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(11 * ceil32(return_data.size)) + 352] = _18696
            require return_data.size >= _18490 + (32 * _18696) + 32
            mem[(11 * ceil32(return_data.size)) + 384 len 32 * _18696] = mem[(10 * ceil32(return_data.size)) + _18490 + 384 len 32 * _18696]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25004 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25064 = mem[_25004]
            _25124 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25064
            _25235 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25124 + 100] = 32
            mem[_25124 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25544 = mem[_25235]
            mem[_25124 + 164 len ceil32(mem[_25235])] = mem[_25235 + 32 len ceil32(mem[_25235])]
            if ceil32(_25544) > _25544:
                mem[_25544 + _25124 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25124 + 168 len _25544 - 4]
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
                mem[_25124 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25124 + 196] == bool(mem[_25124 + 196])
                    if not mem[_25124 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25064
        mem[(10 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(10 * ceil32(return_data.size)) + 320] = wantAddress
        mem[(10 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 388] = 0
        mem[(10 * ceil32(return_data.size)) + 420] = 160
        mem[(10 * ceil32(return_data.size)) + 516] = 3
        idx = 0
        s = (10 * ceil32(return_data.size)) + 256
        t = (10 * ceil32(return_data.size)) + 548
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(10 * ceil32(return_data.size)) + 452] = this.address
        mem[(10 * ceil32(return_data.size)) + 484] = block.timestamp
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 548 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _18489 = mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 352 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
        _18695 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
        require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
        mem[(11 * ceil32(return_data.size)) + 352] = _18695
        require return_data.size >= _18489 + (32 * _18695) + 32
        mem[(11 * ceil32(return_data.size)) + 384 len 32 * _18695] = mem[(10 * ceil32(return_data.size)) + _18489 + 384 len 32 * _18695]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25003 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25063 = mem[_25003]
        _25123 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _25063
        _25233 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_25123 + 100] = 32
        mem[_25123 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _25543 = mem[_25233]
        mem[_25123 + 164 len ceil32(mem[_25233])] = mem[_25233 + 32 len ceil32(mem[_25233])]
        if ceil32(_25543) > _25543:
            mem[_25543 + _25123 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_25123 + 168 len _25543 - 4]
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
            mem[_25123 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_25123 + 196] == bool(mem[_25123 + 196])
                if not mem[_25123 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _25063
    if ext_call.return_data[0] <= dustThreshold:
        if not claimComp:
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
            return ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 160] = 1
        mem[(7 * ceil32(return_data.size)) + 192] = cTokenAddress
        mem[(7 * ceil32(return_data.size)) + 224] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 228] = this.address
        mem[(7 * ceil32(return_data.size)) + 260] = 64
        mem[(7 * ceil32(return_data.size)) + 292] = 1
        idx = 0
        s = (7 * ceil32(return_data.size)) + 324
        t = (7 * ceil32(return_data.size)) + 192
        while idx < 1:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
        call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
             gas gas_remaining wei
            args address(this.address), Array(len=1, data=mem[(7 * ceil32(return_data.size)) + 324])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
        staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= sub_39a0e81a:
            mem[(8 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(10 * ceil32(return_data.size)) + 260] = address(strategyAddress)
            mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 224] = 68
            mem[(10 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
            mem[(10 * ceil32(return_data.size)) + 324] = 32
            mem[(10 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(10 * ceil32(return_data.size)) + 388 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
            mem[(10 * ceil32(return_data.size)) + 456] = 0
            call wantAddress with:
               funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
                mem[(10 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(10 * ceil32(return_data.size)) + 420] == bool(mem[(10 * ceil32(return_data.size)) + 420])
                    if not mem[(10 * ceil32(return_data.size)) + 420]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return ext_call.return_data[0]
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(8 * ceil32(return_data.size)) + 224] = 2
            mem[(8 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
            require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
            mem[(8 * ceil32(return_data.size)) + 288] = wantAddress
            mem[(8 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 356] = 0
            mem[(8 * ceil32(return_data.size)) + 388] = 160
            mem[(8 * ceil32(return_data.size)) + 484] = 2
            idx = 0
            s = (8 * ceil32(return_data.size)) + 256
            t = (8 * ceil32(return_data.size)) + 516
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 420] = this.address
            mem[(8 * ceil32(return_data.size)) + 452] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _18494 = mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 320 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
            _18702 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
            mem[(10 * ceil32(return_data.size)) + 320] = _18702
            require return_data.size >= _18494 + (32 * _18702) + 32
            mem[(10 * ceil32(return_data.size)) + 352 len 32 * _18702] = mem[(8 * ceil32(return_data.size)) + _18494 + 352 len 32 * _18702]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25006 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25066 = mem[_25006]
            _25126 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25066
            _25239 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25126 + 100] = 32
            mem[_25126 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25546 = mem[_25239]
            mem[_25126 + 164 len ceil32(mem[_25239])] = mem[_25239 + 32 len ceil32(mem[_25239])]
            if ceil32(_25546) > _25546:
                mem[_25546 + _25126 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25126 + 168 len _25546 - 4]
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
                mem[_25126 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25126 + 196] == bool(mem[_25126 + 196])
                    if not mem[_25126 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25066
        mem[(8 * ceil32(return_data.size)) + 224] = 3
        mem[(8 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
        mem[(8 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
            mem[(8 * ceil32(return_data.size)) + 288] = wantAddress
            mem[(8 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 388] = 0
            mem[(8 * ceil32(return_data.size)) + 420] = 160
            mem[(8 * ceil32(return_data.size)) + 516] = 3
            idx = 0
            s = (8 * ceil32(return_data.size)) + 256
            t = (8 * ceil32(return_data.size)) + 548
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 452] = this.address
            mem[(8 * ceil32(return_data.size)) + 484] = block.timestamp
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 548 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _18496 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _18704 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(10 * ceil32(return_data.size)) + 352] = _18704
            require return_data.size >= _18496 + (32 * _18704) + 32
            mem[(10 * ceil32(return_data.size)) + 384 len 32 * _18704] = mem[(8 * ceil32(return_data.size)) + _18496 + 384 len 32 * _18704]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25008 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _25068 = mem[_25008]
            _25128 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _25068
            _25243 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_25128 + 100] = 32
            mem[_25128 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _25548 = mem[_25243]
            mem[_25128 + 164 len ceil32(mem[_25243])] = mem[_25243 + 32 len ceil32(mem[_25243])]
            if ceil32(_25548) > _25548:
                mem[_25548 + _25128 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_25128 + 168 len _25548 - 4]
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
                mem[_25128 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_25128 + 196] == bool(mem[_25128 + 196])
                    if not mem[_25128 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _25068
        mem[(8 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[(8 * ceil32(return_data.size)) + 320] = wantAddress
        mem[(8 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 388] = 0
        mem[(8 * ceil32(return_data.size)) + 420] = 160
        mem[(8 * ceil32(return_data.size)) + 516] = 3
        idx = 0
        s = (8 * ceil32(return_data.size)) + 256
        t = (8 * ceil32(return_data.size)) + 548
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 452] = this.address
        mem[(8 * ceil32(return_data.size)) + 484] = block.timestamp
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(8 * ceil32(return_data.size)) + 548 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _18495 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
        _18703 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
        mem[(10 * ceil32(return_data.size)) + 352] = _18703
        require return_data.size >= _18495 + (32 * _18703) + 32
        mem[(10 * ceil32(return_data.size)) + 384 len 32 * _18703] = mem[(8 * ceil32(return_data.size)) + _18495 + 384 len 32 * _18703]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25007 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25067 = mem[_25007]
        _25127 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _25067
        _25241 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_25127 + 100] = 32
        mem[_25127 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _25547 = mem[_25241]
        mem[_25127 + 164 len ceil32(mem[_25241])] = mem[_25241 + 32 len ceil32(mem[_25241])]
        if ceil32(_25547) > _25547:
            mem[_25547 + _25127 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_25127 + 168 len _25547 - 4]
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
            mem[_25127 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_25127 + 196] == bool(mem[_25127 + 196])
                if not mem[_25127 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _25067
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
    if not claimComp:
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
    mem[(8 * ceil32(return_data.size)) + 160] = 1
    mem[(8 * ceil32(return_data.size)) + 192] = cTokenAddress
    mem[(8 * ceil32(return_data.size)) + 224] = 0x1c3db2e000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 228] = this.address
    mem[(8 * ceil32(return_data.size)) + 260] = 64
    mem[(8 * ceil32(return_data.size)) + 292] = 1
    idx = 0
    s = (8 * ceil32(return_data.size)) + 324
    t = (8 * ceil32(return_data.size)) + 192
    while idx < 1:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x260e596dabe3afc463e75b6cc05d8c46acacfb09)
    call 0x260e596dabe3afc463e75b6cc05d8c46acacfb09.claimComp(address arg1, address[] arg2) with:
         gas gas_remaining wei
        args address(this.address), Array(len=1, data=mem[(8 * ceil32(return_data.size)) + 324])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
    staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_39a0e81a:
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
        mem[(11 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
        mem[(11 * ceil32(return_data.size)) + 324] = 32
        mem[(11 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(11 * ceil32(return_data.size)) + 388 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
        mem[(11 * ceil32(return_data.size)) + 456] = 0
        call wantAddress with:
           funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
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
        return ext_call.return_data[0]
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
        mem[(10 * ceil32(return_data.size)) + 224] = 2
        mem[(10 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
        require 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress
        mem[(10 * ceil32(return_data.size)) + 288] = wantAddress
        mem[(10 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 356] = 0
        mem[(10 * ceil32(return_data.size)) + 388] = 160
        mem[(10 * ceil32(return_data.size)) + 484] = 2
        idx = 0
        s = (10 * ceil32(return_data.size)) + 256
        t = (10 * ceil32(return_data.size)) + 516
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(10 * ceil32(return_data.size)) + 420] = this.address
        mem[(10 * ceil32(return_data.size)) + 452] = block.timestamp
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + 516 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _18500 = mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
        require mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 320 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
        _18710 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
        require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
        mem[(11 * ceil32(return_data.size)) + 320] = _18710
        require return_data.size >= _18500 + (32 * _18710) + 32
        mem[(11 * ceil32(return_data.size)) + 352 len 32 * _18710] = mem[(10 * ceil32(return_data.size)) + _18500 + 352 len 32 * _18710]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25010 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25070 = mem[_25010]
        _25130 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _25070
        _25247 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_25130 + 100] = 32
        mem[_25130 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _25550 = mem[_25247]
        mem[_25130 + 164 len ceil32(mem[_25247])] = mem[_25247 + 32 len ceil32(mem[_25247])]
        if ceil32(_25550) > _25550:
            mem[_25550 + _25130 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_25130 + 168 len _25550 - 4]
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
            mem[_25130 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_25130 + 196] == bool(mem[_25130 + 196])
                if not mem[_25130 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _25070
    mem[(10 * ceil32(return_data.size)) + 224] = 3
    mem[(10 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
    mem[(10 * ceil32(return_data.size)) + 256] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == wantAddress:
        mem[(10 * ceil32(return_data.size)) + 288] = wantAddress
        mem[(10 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 388] = 0
        mem[(10 * ceil32(return_data.size)) + 420] = 160
        mem[(10 * ceil32(return_data.size)) + 516] = 3
        idx = 0
        s = (10 * ceil32(return_data.size)) + 256
        t = (10 * ceil32(return_data.size)) + 548
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(10 * ceil32(return_data.size)) + 452] = this.address
        mem[(10 * ceil32(return_data.size)) + 484] = block.timestamp
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 548 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _18502 = mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 352 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
        _18712 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
        require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
        mem[(11 * ceil32(return_data.size)) + 352] = _18712
        require return_data.size >= _18502 + (32 * _18712) + 32
        mem[(11 * ceil32(return_data.size)) + 384 len 32 * _18712] = mem[(10 * ceil32(return_data.size)) + _18502 + 384 len 32 * _18712]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25012 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25072 = mem[_25012]
        _25132 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _25072
        _25251 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_25132 + 100] = 32
        mem[_25132 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _25552 = mem[_25251]
        mem[_25132 + 164 len ceil32(mem[_25251])] = mem[_25251 + 32 len ceil32(mem[_25251])]
        if ceil32(_25552) > _25552:
            mem[_25552 + _25132 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_25132 + 168 len _25552 - 4]
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
            mem[_25132 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_25132 + 196] == bool(mem[_25132 + 196])
                if not mem[_25132 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _25072
    mem[(10 * ceil32(return_data.size)) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[(10 * ceil32(return_data.size)) + 320] = wantAddress
    mem[(10 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(10 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
    mem[(10 * ceil32(return_data.size)) + 388] = 0
    mem[(10 * ceil32(return_data.size)) + 420] = 160
    mem[(10 * ceil32(return_data.size)) + 516] = 3
    idx = 0
    s = (10 * ceil32(return_data.size)) + 256
    t = (10 * ceil32(return_data.size)) + 548
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(10 * ceil32(return_data.size)) + 452] = this.address
    mem[(10 * ceil32(return_data.size)) + 484] = block.timestamp
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 548 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(10 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (11 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _18501 = mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
    require mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (10 * ceil32(return_data.size)) + return_data.size + 352 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
    _18711 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
    require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
    require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
    mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
    mem[(11 * ceil32(return_data.size)) + 352] = _18711
    require return_data.size >= _18501 + (32 * _18711) + 32
    mem[(11 * ceil32(return_data.size)) + 384 len 32 * _18711] = mem[(10 * ceil32(return_data.size)) + _18501 + 384 len 32 * _18711]
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _25011 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _25071 = mem[_25011]
    _25131 = mem[64]
    mem[mem[64] + 36] = address(strategyAddress)
    mem[mem[64] + 68] = _25071
    _25249 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_25131 + 100] = 32
    mem[_25131 + 132] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    _25551 = mem[_25249]
    mem[_25131 + 164 len ceil32(mem[_25249])] = mem[_25249 + 32 len ceil32(mem[_25249])]
    if ceil32(_25551) > _25551:
        mem[_25551 + _25131 + 164] = 0
    call wantAddress with:
         gas gas_remaining wei
        args mem[_25131 + 168 len _25551 - 4]
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
        mem[_25131 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_25131 + 196] == bool(mem[_25131 + 196])
            if not mem[_25131 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return _25071
}



}
