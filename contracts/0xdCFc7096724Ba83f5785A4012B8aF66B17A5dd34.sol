contract main {




// =====================  Runtime code  =====================


#
#  - sweep(address arg1)
#  - aprAfterDeposit(uint256 arg1)
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
address cTokenAddress;

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
            staticcall address(strategyAddress).strategist() with:
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
            staticcall address(strategyAddress).strategist() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, '!management'
    dustThreshold = arg1
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
            staticcall address(strategyAddress).strategist() with:
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

function withdrawAll() payable {
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
            staticcall address(strategyAddress).strategist() with:
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
           args cTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokenAddress)
    if not ext_call.return_data[0]:
        staticcall cTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        staticcall cTokenAddress.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / ext_call.return_data[0] > 2:
                require ext_code.size(cTokenAddress)
                if ext_call.return_data[0] <= (0 / ext_call.return_data[0]) - 1:
                    call cTokenAddress.redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return 1
                call cTokenAddress.mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args cTokenAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(cTokenAddress)
                if not ext_call.return_data[0]:
                    call cTokenAddress.redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                else:
                    staticcall cTokenAddress.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(cTokenAddress)
                        call cTokenAddress.redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args (0 / ext_call.return_data[0])
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(cTokenAddress)
                        call cTokenAddress.redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 2:
                require ext_code.size(cTokenAddress)
                if ext_call.return_data[0] <= (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 1:
                    call cTokenAddress.redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return 1
                call cTokenAddress.mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args cTokenAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(cTokenAddress)
                if not ext_call.return_data[0]:
                    call cTokenAddress.redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                else:
                    staticcall cTokenAddress.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(cTokenAddress)
                        call cTokenAddress.redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args (0 / ext_call.return_data[0])
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(cTokenAddress)
                        call cTokenAddress.redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    return 0
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
            staticcall address(strategyAddress).strategist() with:
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
            mem[(6 * ceil32(return_data.size)) + 384] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]
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
                mem[(6 * ceil32(return_data.size)) + 416] = _570
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
                mem[(6 * ceil32(return_data.size)) + 416] = _569
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
            mem[(6 * ceil32(return_data.size)) + 384] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]
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
                mem[(6 * ceil32(return_data.size)) + 416] = _566
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
                mem[(6 * ceil32(return_data.size)) + 416] = _565
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
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1) >> 32 + 320]) + 352
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
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1) >> 32 + 320]) + 352
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
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / -arg1) >> 32 + 384]) + 416
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
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / -arg1) >> 32 + 384]) + 416
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
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 0 / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]) + 352
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
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / arg1 + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) >> 32 + 320]) + 352
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
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 384]) + 416
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
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1) >> 32 + 384]) + 416
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

function weightedApr() payable {
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
            _3472 = mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
            require mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 384 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 415
            _3480 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]) + 416 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]) + 416
            mem[(6 * ceil32(return_data.size)) + 384] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]
            require return_data.size >= _3472 + (32 * _3480) + 32
            mem[(6 * ceil32(return_data.size)) + 416 len 32 * _3480] = mem[(4 * ceil32(return_data.size)) + _3472 + 416 len 32 * _3480]
            require _3480 - 1 < _3480
            _6368 = mem[(32 * _3480 - 1) + (6 * ceil32(return_data.size)) + 416]
            if not mem[(32 * _3480 - 1) + (6 * ceil32(return_data.size)) + 416]:
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6392 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6413 = mem[_6392]
                if mem[_6392] < mem[_6392]:
                    revert with 0, 'SafeMath: addition overflow'
                if not mem[_6392]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6581 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6613 = mem[_6581]
                    if mem[_6581] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6810 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_6810] < mem[_6810]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6690 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6751 = mem[_6690]
                        if not _6613:
                            _6920 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6920] = 26
                            mem[_6920 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7380 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7380] < mem[_7380]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_6690] * _6613 / _6613 != mem[_6690]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _6967 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6967] = 26
                            mem[_6967 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7468 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_6751 * _6613 / 10^18) + mem[_7468] < mem[_7468]:
                                revert with 0, 'SafeMath: addition overflow'
                    return 0
                if 31540000 * mem[_6392] / mem[_6392] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64] + 4] = this.address
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6597 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6624 = mem[_6597]
                if mem[_6597] < dustThreshold:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6834 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_6834] < mem[_6834]:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_6834] < dustThreshold:
                        if 31540000 * _6413:
                            if 0 / 31540000 * _6413:
                                revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if not 31540000 * _6413:
                        return 0
                    if 31540000 * mem[_6834] * _6413 / 31540000 * _6413 != mem[_6834]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 31540000 * mem[_6834] * _6413
                else:
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6719 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6783 = mem[_6719]
                    if not _6624:
                        _6966 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6966] = 26
                        mem[_6966 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7463 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7463] < mem[_7463]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_7463] < dustThreshold:
                            if 31540000 * _6413:
                                if 0 / 31540000 * _6413:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _6413:
                            return 0
                        if 31540000 * mem[_7463] * _6413 / 31540000 * _6413 != mem[_7463]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_7463] * _6413
                    else:
                        if mem[_6719] * _6624 / _6624 != mem[_6719]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7022 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7022] = 26
                        mem[_7022 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7564 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (_6783 * _6624 / 10^18) + mem[_7564] < mem[_7564]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (_6783 * _6624 / 10^18) + mem[_7564] < dustThreshold:
                            if 31540000 * _6413:
                                if 0 / 31540000 * _6413:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _6413:
                            return 0
                        if (31540000 * _6783 * _6624 / 10^18 * _6413) + (31540000 * mem[_7564] * _6413) / 31540000 * _6413 != (_6783 * _6624 / 10^18) + mem[_7564]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * _6783 * _6624 / 10^18 * _6413) + (31540000 * mem[_7564] * _6413)
            else:
                if not mem[(32 * _3480 - 1) + (6 * ceil32(return_data.size)) + 416]:
                    _6414 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6414] = 26
                    mem[_6414 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6496 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6526 = mem[_6496]
                    if mem[_6496] < mem[_6496]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not mem[_6496]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6836 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6890 = mem[_6836]
                        if mem[_6836] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7210 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7210] < mem[_7210]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7071 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7145 = mem[_7071]
                            if not _6890:
                                _7386 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7386] = 26
                                mem[_7386 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7936 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7936] < mem[_7936]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if mem[_7071] * _6890 / _6890 != mem[_7071]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7472 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7472] = 26
                                mem[_7472 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8014 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_7145 * _6890 / 10^18) + mem[_8014] < mem[_8014]:
                                    revert with 0, 'SafeMath: addition overflow'
                        return 0
                    if 31540000 * mem[_6496] / mem[_6496] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6860 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6922 = mem[_6860]
                    if mem[_6860] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7242] < mem[_7242]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_7242] < dustThreshold:
                            if 31540000 * _6526:
                                if 0 / 31540000 * _6526:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _6526:
                            return 0
                        if 31540000 * mem[_7242] * _6526 / 31540000 * _6526 != mem[_7242]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_7242] * _6526
                    else:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7111 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7177 = mem[_7111]
                        if not _6922:
                            _7471 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7471] = 26
                            mem[_7471 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8009 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_8009] < mem[_8009]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_8009] < dustThreshold:
                                if 31540000 * _6526:
                                    if 0 / 31540000 * _6526:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6526:
                                return 0
                            if 31540000 * mem[_8009] * _6526 / 31540000 * _6526 != mem[_8009]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = 31540000 * mem[_8009] * _6526
                        else:
                            if mem[_7111] * _6922 / _6922 != mem[_7111]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7574 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7574] = 26
                            mem[_7574 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8101 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_7177 * _6922 / 10^18) + mem[_8101] < mem[_8101]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_7177 * _6922 / 10^18) + mem[_8101] < dustThreshold:
                                if 31540000 * _6526:
                                    if 0 / 31540000 * _6526:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6526:
                                return 0
                            if (31540000 * _7177 * _6922 / 10^18 * _6526) + (31540000 * mem[_8101] * _6526) / 31540000 * _6526 != (_7177 * _6922 / 10^18) + mem[_8101]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * _7177 * _6922 / 10^18 * _6526) + (31540000 * mem[_8101] * _6526)
                else:
                    if 9 * mem[(32 * _3480 - 1) + (6 * ceil32(return_data.size)) + 416] / mem[(32 * _3480 - 1) + (6 * ceil32(return_data.size)) + 416] != 9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _6429 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6429] = 26
                    mem[_6429 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6542 = mem[_6510]
                    if (9 * _6368 / 10) + mem[_6510] < mem[_6510]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (9 * _6368 / 10) + mem[_6510]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6859 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6921 = mem[_6859]
                        if mem[_6859] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7241 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7241] < mem[_7241]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7109 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7175 = mem[_7109]
                            if not _6921:
                                _7470 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7470] = 26
                                mem[_7470 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8006 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_8006] < mem[_8006]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if mem[_7109] * _6921 / _6921 != mem[_7109]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7571 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7571] = 26
                                mem[_7571 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8100 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_7175 * _6921 / 10^18) + mem[_8100] < mem[_8100]:
                                    revert with 0, 'SafeMath: addition overflow'
                        return 0
                    if (31540000 * 9 * _6368 / 10) + (31540000 * mem[_6510]) / (9 * _6368 / 10) + mem[_6510] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6970 = mem[_6889]
                    if mem[_6889] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7273 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7273] < mem[_7273]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_7273] < dustThreshold:
                            if (31540000 * 9 * _6368 / 10) + (31540000 * _6542):
                                if 0 / (31540000 * 9 * _6368 / 10) + (31540000 * _6542):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not (31540000 * 9 * _6368 / 10) + (31540000 * _6542):
                            return 0
                        if (31540000 * 9 * _6368 / 10 * mem[_7273]) + (31540000 * _6542 * mem[_7273]) / (31540000 * 9 * _6368 / 10) + (31540000 * _6542) != mem[_7273]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * 9 * _6368 / 10 * mem[_7273]) + (31540000 * _6542 * mem[_7273])
                    else:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7208 = mem[_7143]
                        if not _6970:
                            _7570 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7570] = 26
                            mem[_7570 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8095 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_8095] < mem[_8095]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_8095] < dustThreshold:
                                if (31540000 * 9 * _6368 / 10) + (31540000 * _6542):
                                    if 0 / (31540000 * 9 * _6368 / 10) + (31540000 * _6542):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not (31540000 * 9 * _6368 / 10) + (31540000 * _6542):
                                return 0
                            if (31540000 * 9 * _6368 / 10 * mem[_8095]) + (31540000 * _6542 * mem[_8095]) / (31540000 * 9 * _6368 / 10) + (31540000 * _6542) != mem[_8095]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * 9 * _6368 / 10 * mem[_8095]) + (31540000 * _6542 * mem[_8095])
                        else:
                            if mem[_7143] * _6970 / _6970 != mem[_7143]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7647 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7647] = 26
                            mem[_7647 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8193 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_7208 * _6970 / 10^18) + mem[_8193] < mem[_8193]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_7208 * _6970 / 10^18) + mem[_8193] < dustThreshold:
                                if (31540000 * 9 * _6368 / 10) + (31540000 * _6542):
                                    if 0 / (31540000 * 9 * _6368 / 10) + (31540000 * _6542):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not (31540000 * 9 * _6368 / 10) + (31540000 * _6542):
                                return 0
                            if (31540000 * 9 * _6368 / 10 * _7208 * _6970 / 10^18) + (31540000 * _6542 * _7208 * _6970 / 10^18) + (31540000 * 9 * _6368 / 10 * mem[_8193]) + (31540000 * _6542 * mem[_8193]) / (31540000 * 9 * _6368 / 10) + (31540000 * _6542) != (_7208 * _6970 / 10^18) + mem[_8193]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * 9 * _6368 / 10 * _7208 * _6970 / 10^18) + (31540000 * _6542 * _7208 * _6970 / 10^18) + (31540000 * 9 * _6368 / 10 * mem[_8193]) + (31540000 * _6542 * mem[_8193])
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
                _3474 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 447
                _3482 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448
                mem[(6 * ceil32(return_data.size)) + 416] = _3482
                require return_data.size >= _3474 + (32 * _3482) + 32
                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _3482] = mem[(4 * ceil32(return_data.size)) + _3474 + 448 len 32 * _3482]
                require _3482 - 1 < _3482
                _6370 = mem[(32 * _3482 - 1) + (6 * ceil32(return_data.size)) + 448]
                if not mem[(32 * _3482 - 1) + (6 * ceil32(return_data.size)) + 448]:
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6394 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6417 = mem[_6394]
                    if mem[_6394] < mem[_6394]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not mem[_6394]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6585 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6617 = mem[_6585]
                        if mem[_6585] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6816 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_6816] < mem[_6816]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6696 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6759 = mem[_6696]
                            if not _6617:
                                _6928 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6928] = 26
                                mem[_6928 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7396 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7396] < mem[_7396]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if mem[_6696] * _6617 / _6617 != mem[_6696]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _6981 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6981] = 26
                                mem[_6981 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7492 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_6759 * _6617 / 10^18) + mem[_7492] < mem[_7492]:
                                    revert with 0, 'SafeMath: addition overflow'
                        return 0
                    if 31540000 * mem[_6394] / mem[_6394] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6601 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6626 = mem[_6601]
                    if mem[_6601] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6840 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_6840] < mem[_6840]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_6840] < dustThreshold:
                            if 31540000 * _6417:
                                if 0 / 31540000 * _6417:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _6417:
                            return 0
                        if 31540000 * mem[_6840] * _6417 / 31540000 * _6417 != mem[_6840]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_6840] * _6417
                    else:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6727 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6791 = mem[_6727]
                        if not _6626:
                            _6980 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6980] = 26
                            mem[_6980 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7487 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7487] < mem[_7487]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7487] < dustThreshold:
                                if 31540000 * _6417:
                                    if 0 / 31540000 * _6417:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6417:
                                return 0
                            if 31540000 * mem[_7487] * _6417 / 31540000 * _6417 != mem[_7487]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = 31540000 * mem[_7487] * _6417
                        else:
                            if mem[_6727] * _6626 / _6626 != mem[_6727]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7036 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7036] = 26
                            mem[_7036 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7590 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_6791 * _6626 / 10^18) + mem[_7590] < mem[_7590]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_6791 * _6626 / 10^18) + mem[_7590] < dustThreshold:
                                if 31540000 * _6417:
                                    if 0 / 31540000 * _6417:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6417:
                                return 0
                            if (31540000 * _6791 * _6626 / 10^18 * _6417) + (31540000 * mem[_7590] * _6417) / 31540000 * _6417 != (_6791 * _6626 / 10^18) + mem[_7590]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * _6791 * _6626 / 10^18 * _6417) + (31540000 * mem[_7590] * _6417)
                else:
                    if not mem[(32 * _3482 - 1) + (6 * ceil32(return_data.size)) + 448]:
                        _6418 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6418] = 26
                        mem[_6418 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6498 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6530 = mem[_6498]
                        if mem[_6498] < mem[_6498]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not mem[_6498]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6842 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6898 = mem[_6842]
                            if mem[_6842] < dustThreshold:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7218 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7218] < mem[_7218]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ext_code.size(cTokenAddress)
                                staticcall cTokenAddress.exchangeRateStored() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7081 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7153 = mem[_7081]
                                if not _6898:
                                    _7402 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7402] = 26
                                    mem[_7402 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7952 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7952] < mem[_7952]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if mem[_7081] * _6898 / _6898 != mem[_7081]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _7496 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7496] = 26
                                    mem[_7496 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8034 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (_7153 * _6898 / 10^18) + mem[_8034] < mem[_8034]:
                                        revert with 0, 'SafeMath: addition overflow'
                            return 0
                        if 31540000 * mem[_6498] / mem[_6498] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6866 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6930 = mem[_6866]
                        if mem[_6866] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7250 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7250] < mem[_7250]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7250] < dustThreshold:
                                if 31540000 * _6530:
                                    if 0 / 31540000 * _6530:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6530:
                                return 0
                            if 31540000 * mem[_7250] * _6530 / 31540000 * _6530 != mem[_7250]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = 31540000 * mem[_7250] * _6530
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7121 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7185 = mem[_7121]
                            if not _6930:
                                _7495 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7495] = 26
                                mem[_7495 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8029 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_8029] < mem[_8029]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_8029] < dustThreshold:
                                    if 31540000 * _6530:
                                        if 0 / 31540000 * _6530:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not 31540000 * _6530:
                                    return 0
                                if 31540000 * mem[_8029] * _6530 / 31540000 * _6530 != mem[_8029]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = 31540000 * mem[_8029] * _6530
                            else:
                                if mem[_7121] * _6930 / _6930 != mem[_7121]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7600 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7600] = 26
                                mem[_7600 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8125 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_7185 * _6930 / 10^18) + mem[_8125] < mem[_8125]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (_7185 * _6930 / 10^18) + mem[_8125] < dustThreshold:
                                    if 31540000 * _6530:
                                        if 0 / 31540000 * _6530:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not 31540000 * _6530:
                                    return 0
                                if (31540000 * _7185 * _6930 / 10^18 * _6530) + (31540000 * mem[_8125] * _6530) / 31540000 * _6530 != (_7185 * _6930 / 10^18) + mem[_8125]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = (31540000 * _7185 * _6930 / 10^18 * _6530) + (31540000 * mem[_8125] * _6530)
                    else:
                        if 9 * mem[(32 * _3482 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _3482 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _6433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6433] = 26
                        mem[_6433 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6514 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6546 = mem[_6514]
                        if (9 * _6370 / 10) + mem[_6514] < mem[_6514]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * _6370 / 10) + mem[_6514]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6865 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6929 = mem[_6865]
                            if mem[_6865] < dustThreshold:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7249 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7249] < mem[_7249]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ext_code.size(cTokenAddress)
                                staticcall cTokenAddress.exchangeRateStored() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7119 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7183 = mem[_7119]
                                if not _6929:
                                    _7494 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7494] = 26
                                    mem[_7494 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8026 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_8026] < mem[_8026]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if mem[_7119] * _6929 / _6929 != mem[_7119]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _7597 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7597] = 26
                                    mem[_7597 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8124 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (_7183 * _6929 / 10^18) + mem[_8124] < mem[_8124]:
                                        revert with 0, 'SafeMath: addition overflow'
                            return 0
                        if (31540000 * 9 * _6370 / 10) + (31540000 * mem[_6514]) / (9 * _6370 / 10) + mem[_6514] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6897 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6984 = mem[_6897]
                        if mem[_6897] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7281 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7281] < mem[_7281]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7281] < dustThreshold:
                                if (31540000 * 9 * _6370 / 10) + (31540000 * _6546):
                                    if 0 / (31540000 * 9 * _6370 / 10) + (31540000 * _6546):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not (31540000 * 9 * _6370 / 10) + (31540000 * _6546):
                                return 0
                            if (31540000 * 9 * _6370 / 10 * mem[_7281]) + (31540000 * _6546 * mem[_7281]) / (31540000 * 9 * _6370 / 10) + (31540000 * _6546) != mem[_7281]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * 9 * _6370 / 10 * mem[_7281]) + (31540000 * _6546 * mem[_7281])
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7151 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7216 = mem[_7151]
                            if not _6984:
                                _7596 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7596] = 26
                                mem[_7596 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8119 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_8119] < mem[_8119]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_8119] < dustThreshold:
                                    if (31540000 * 9 * _6370 / 10) + (31540000 * _6546):
                                        if 0 / (31540000 * 9 * _6370 / 10) + (31540000 * _6546):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not (31540000 * 9 * _6370 / 10) + (31540000 * _6546):
                                    return 0
                                if (31540000 * 9 * _6370 / 10 * mem[_8119]) + (31540000 * _6546 * mem[_8119]) / (31540000 * 9 * _6370 / 10) + (31540000 * _6546) != mem[_8119]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = (31540000 * 9 * _6370 / 10 * mem[_8119]) + (31540000 * _6546 * mem[_8119])
                            else:
                                if mem[_7151] * _6984 / _6984 != mem[_7151]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7663 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7663] = 26
                                mem[_7663 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8217 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_7216 * _6984 / 10^18) + mem[_8217] < mem[_8217]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (_7216 * _6984 / 10^18) + mem[_8217] < dustThreshold:
                                    if (31540000 * 9 * _6370 / 10) + (31540000 * _6546):
                                        if 0 / (31540000 * 9 * _6370 / 10) + (31540000 * _6546):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not (31540000 * 9 * _6370 / 10) + (31540000 * _6546):
                                    return 0
                                if (31540000 * 9 * _6370 / 10 * _7216 * _6984 / 10^18) + (31540000 * _6546 * _7216 * _6984 / 10^18) + (31540000 * 9 * _6370 / 10 * mem[_8217]) + (31540000 * _6546 * mem[_8217]) / (31540000 * 9 * _6370 / 10) + (31540000 * _6546) != (_7216 * _6984 / 10^18) + mem[_8217]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = (31540000 * 9 * _6370 / 10 * _7216 * _6984 / 10^18) + (31540000 * _6546 * _7216 * _6984 / 10^18) + (31540000 * 9 * _6370 / 10 * mem[_8217]) + (31540000 * _6546 * mem[_8217])
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
                _3473 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 447
                _3481 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448
                mem[(6 * ceil32(return_data.size)) + 416] = _3481
                require return_data.size >= _3473 + (32 * _3481) + 32
                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _3481] = mem[(4 * ceil32(return_data.size)) + _3473 + 448 len 32 * _3481]
                require _3481 - 1 < _3481
                _6369 = mem[(32 * _3481 - 1) + (6 * ceil32(return_data.size)) + 448]
                if not mem[(32 * _3481 - 1) + (6 * ceil32(return_data.size)) + 448]:
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6393 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6415 = mem[_6393]
                    if mem[_6393] < mem[_6393]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not mem[_6393]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6583 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6615 = mem[_6583]
                        if mem[_6583] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6813 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_6813] < mem[_6813]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6693 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6755 = mem[_6693]
                            if not _6615:
                                _6924 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6924] = 26
                                mem[_6924 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7388 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7388] < mem[_7388]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if mem[_6693] * _6615 / _6615 != mem[_6693]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _6974 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6974] = 26
                                mem[_6974 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7480 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_6755 * _6615 / 10^18) + mem[_7480] < mem[_7480]:
                                    revert with 0, 'SafeMath: addition overflow'
                        return 0
                    if 31540000 * mem[_6393] / mem[_6393] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6599 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6625 = mem[_6599]
                    if mem[_6599] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6837 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_6837] < mem[_6837]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_6837] < dustThreshold:
                            if 31540000 * _6415:
                                if 0 / 31540000 * _6415:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _6415:
                            return 0
                        if 31540000 * mem[_6837] * _6415 / 31540000 * _6415 != mem[_6837]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_6837] * _6415
                    else:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6723 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6787 = mem[_6723]
                        if not _6625:
                            _6973 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6973] = 26
                            mem[_6973 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7475 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7475] < mem[_7475]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7475] < dustThreshold:
                                if 31540000 * _6415:
                                    if 0 / 31540000 * _6415:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6415:
                                return 0
                            if 31540000 * mem[_7475] * _6415 / 31540000 * _6415 != mem[_7475]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = 31540000 * mem[_7475] * _6415
                        else:
                            if mem[_6723] * _6625 / _6625 != mem[_6723]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7029 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7029] = 26
                            mem[_7029 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7577 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_6787 * _6625 / 10^18) + mem[_7577] < mem[_7577]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_6787 * _6625 / 10^18) + mem[_7577] < dustThreshold:
                                if 31540000 * _6415:
                                    if 0 / 31540000 * _6415:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6415:
                                return 0
                            if (31540000 * _6787 * _6625 / 10^18 * _6415) + (31540000 * mem[_7577] * _6415) / 31540000 * _6415 != (_6787 * _6625 / 10^18) + mem[_7577]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * _6787 * _6625 / 10^18 * _6415) + (31540000 * mem[_7577] * _6415)
                else:
                    if not mem[(32 * _3481 - 1) + (6 * ceil32(return_data.size)) + 448]:
                        _6416 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6416] = 26
                        mem[_6416 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6497 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6528 = mem[_6497]
                        if mem[_6497] < mem[_6497]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not mem[_6497]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6839 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6894 = mem[_6839]
                            if mem[_6839] < dustThreshold:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7214 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7214] < mem[_7214]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ext_code.size(cTokenAddress)
                                staticcall cTokenAddress.exchangeRateStored() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7076 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7149 = mem[_7076]
                                if not _6894:
                                    _7394 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7394] = 26
                                    mem[_7394 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7944 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7944] < mem[_7944]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if mem[_7076] * _6894 / _6894 != mem[_7076]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _7484 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7484] = 26
                                    mem[_7484 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8024 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (_7149 * _6894 / 10^18) + mem[_8024] < mem[_8024]:
                                        revert with 0, 'SafeMath: addition overflow'
                            return 0
                        if 31540000 * mem[_6497] / mem[_6497] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6863 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6926 = mem[_6863]
                        if mem[_6863] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7246 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7246] < mem[_7246]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7246] < dustThreshold:
                                if 31540000 * _6528:
                                    if 0 / 31540000 * _6528:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6528:
                                return 0
                            if 31540000 * mem[_7246] * _6528 / 31540000 * _6528 != mem[_7246]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = 31540000 * mem[_7246] * _6528
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7116 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7181 = mem[_7116]
                            if not _6926:
                                _7483 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7483] = 26
                                mem[_7483 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8019 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_8019] < mem[_8019]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_8019] < dustThreshold:
                                    if 31540000 * _6528:
                                        if 0 / 31540000 * _6528:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not 31540000 * _6528:
                                    return 0
                                if 31540000 * mem[_8019] * _6528 / 31540000 * _6528 != mem[_8019]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = 31540000 * mem[_8019] * _6528
                            else:
                                if mem[_7116] * _6926 / _6926 != mem[_7116]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7587 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7587] = 26
                                mem[_7587 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8113 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_7181 * _6926 / 10^18) + mem[_8113] < mem[_8113]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (_7181 * _6926 / 10^18) + mem[_8113] < dustThreshold:
                                    if 31540000 * _6528:
                                        if 0 / 31540000 * _6528:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not 31540000 * _6528:
                                    return 0
                                if (31540000 * _7181 * _6926 / 10^18 * _6528) + (31540000 * mem[_8113] * _6528) / 31540000 * _6528 != (_7181 * _6926 / 10^18) + mem[_8113]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = (31540000 * _7181 * _6926 / 10^18 * _6528) + (31540000 * mem[_8113] * _6528)
                    else:
                        if 9 * mem[(32 * _3481 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _3481 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _6431 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6431] = 26
                        mem[_6431 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6512 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6544 = mem[_6512]
                        if (9 * _6369 / 10) + mem[_6512] < mem[_6512]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * _6369 / 10) + mem[_6512]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6862 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6925 = mem[_6862]
                            if mem[_6862] < dustThreshold:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7245 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7245] < mem[_7245]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ext_code.size(cTokenAddress)
                                staticcall cTokenAddress.exchangeRateStored() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7114 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7179 = mem[_7114]
                                if not _6925:
                                    _7482 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7482] = 26
                                    mem[_7482 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8016 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_8016] < mem[_8016]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if mem[_7114] * _6925 / _6925 != mem[_7114]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _7584 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7584] = 26
                                    mem[_7584 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8112 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (_7179 * _6925 / 10^18) + mem[_8112] < mem[_8112]:
                                        revert with 0, 'SafeMath: addition overflow'
                            return 0
                        if (31540000 * 9 * _6369 / 10) + (31540000 * mem[_6512]) / (9 * _6369 / 10) + mem[_6512] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6977 = mem[_6893]
                        if mem[_6893] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7277 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7277] < mem[_7277]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7277] < dustThreshold:
                                if (31540000 * 9 * _6369 / 10) + (31540000 * _6544):
                                    if 0 / (31540000 * 9 * _6369 / 10) + (31540000 * _6544):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not (31540000 * 9 * _6369 / 10) + (31540000 * _6544):
                                return 0
                            if (31540000 * 9 * _6369 / 10 * mem[_7277]) + (31540000 * _6544 * mem[_7277]) / (31540000 * 9 * _6369 / 10) + (31540000 * _6544) != mem[_7277]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * 9 * _6369 / 10 * mem[_7277]) + (31540000 * _6544 * mem[_7277])
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7147 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7212 = mem[_7147]
                            if not _6977:
                                _7583 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7583] = 26
                                mem[_7583 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8107 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_8107] < mem[_8107]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_8107] < dustThreshold:
                                    if (31540000 * 9 * _6369 / 10) + (31540000 * _6544):
                                        if 0 / (31540000 * 9 * _6369 / 10) + (31540000 * _6544):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not (31540000 * 9 * _6369 / 10) + (31540000 * _6544):
                                    return 0
                                if (31540000 * 9 * _6369 / 10 * mem[_8107]) + (31540000 * _6544 * mem[_8107]) / (31540000 * 9 * _6369 / 10) + (31540000 * _6544) != mem[_8107]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = (31540000 * 9 * _6369 / 10 * mem[_8107]) + (31540000 * _6544 * mem[_8107])
                            else:
                                if mem[_7147] * _6977 / _6977 != mem[_7147]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7655 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7655] = 26
                                mem[_7655 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8205 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_7212 * _6977 / 10^18) + mem[_8205] < mem[_8205]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (_7212 * _6977 / 10^18) + mem[_8205] < dustThreshold:
                                    if (31540000 * 9 * _6369 / 10) + (31540000 * _6544):
                                        if 0 / (31540000 * 9 * _6369 / 10) + (31540000 * _6544):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not (31540000 * 9 * _6369 / 10) + (31540000 * _6544):
                                    return 0
                                if (31540000 * 9 * _6369 / 10 * _7212 * _6977 / 10^18) + (31540000 * _6544 * _7212 * _6977 / 10^18) + (31540000 * 9 * _6369 / 10 * mem[_8205]) + (31540000 * _6544 * mem[_8205]) / (31540000 * 9 * _6369 / 10) + (31540000 * _6544) != (_7212 * _6977 / 10^18) + mem[_8205]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = (31540000 * 9 * _6369 / 10 * _7212 * _6977 / 10^18) + (31540000 * _6544 * _7212 * _6977 / 10^18) + (31540000 * 9 * _6369 / 10 * mem[_8205]) + (31540000 * _6544 * mem[_8205])
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
            _3468 = mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
            require mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 384 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 415
            _3476 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]) + 416 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]) + 416
            mem[(6 * ceil32(return_data.size)) + 384] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 384]
            require return_data.size >= _3468 + (32 * _3476) + 32
            mem[(6 * ceil32(return_data.size)) + 416 len 32 * _3476] = mem[(4 * ceil32(return_data.size)) + _3468 + 416 len 32 * _3476]
            require _3476 - 1 < _3476
            _6364 = mem[(32 * _3476 - 1) + (6 * ceil32(return_data.size)) + 416]
            if not mem[(32 * _3476 - 1) + (6 * ceil32(return_data.size)) + 416]:
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.supplyRatePerBlock() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6388 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6405 = mem[_6388]
                if mem[_6388] < mem[_6388]:
                    revert with 0, 'SafeMath: addition overflow'
                if not mem[_6388]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6573 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6605 = mem[_6573]
                    if mem[_6573] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6798 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_6798] < mem[_6798]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6678 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6735 = mem[_6678]
                        if not _6605:
                            _6904 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6904] = 26
                            mem[_6904 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7348 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7348] < mem[_7348]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_6678] * _6605 / _6605 != mem[_6678]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _6939 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6939] = 26
                            mem[_6939 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7420 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_6735 * _6605 / 10^18) + mem[_7420] < mem[_7420]:
                                revert with 0, 'SafeMath: addition overflow'
                    return 0
                if 31540000 * mem[_6388] / mem[_6388] != 31540000:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64] + 4] = this.address
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6589 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6620 = mem[_6589]
                if mem[_6589] < dustThreshold:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6822 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_6822] < mem[_6822]:
                        revert with 0, 'SafeMath: addition overflow'
                    if mem[_6822] < dustThreshold:
                        if 31540000 * _6405:
                            if 0 / 31540000 * _6405:
                                revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if not 31540000 * _6405:
                        return 0
                    if 31540000 * mem[_6822] * _6405 / 31540000 * _6405 != mem[_6822]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 31540000 * mem[_6822] * _6405
                else:
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6703 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6767 = mem[_6703]
                    if not _6620:
                        _6938 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6938] = 26
                        mem[_6938 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7415 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7415] < mem[_7415]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_7415] < dustThreshold:
                            if 31540000 * _6405:
                                if 0 / 31540000 * _6405:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _6405:
                            return 0
                        if 31540000 * mem[_7415] * _6405 / 31540000 * _6405 != mem[_7415]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_7415] * _6405
                    else:
                        if mem[_6703] * _6620 / _6620 != mem[_6703]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _6994 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6994] = 26
                        mem[_6994 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7512 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (_6767 * _6620 / 10^18) + mem[_7512] < mem[_7512]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (_6767 * _6620 / 10^18) + mem[_7512] < dustThreshold:
                            if 31540000 * _6405:
                                if 0 / 31540000 * _6405:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _6405:
                            return 0
                        if (31540000 * _6767 * _6620 / 10^18 * _6405) + (31540000 * mem[_7512] * _6405) / 31540000 * _6405 != (_6767 * _6620 / 10^18) + mem[_7512]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * _6767 * _6620 / 10^18 * _6405) + (31540000 * mem[_7512] * _6405)
            else:
                if not mem[(32 * _3476 - 1) + (6 * ceil32(return_data.size)) + 416]:
                    _6406 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6406] = 26
                    mem[_6406 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6492 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6518 = mem[_6492]
                    if mem[_6492] < mem[_6492]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not mem[_6492]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6824 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6874 = mem[_6824]
                        if mem[_6824] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7194 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7194] < mem[_7194]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7051 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7129 = mem[_7051]
                            if not _6874:
                                _7354 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7354] = 26
                                mem[_7354 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7904 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7904] < mem[_7904]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if mem[_7051] * _6874 / _6874 != mem[_7051]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7424 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7424] = 26
                                mem[_7424 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7974 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_7129 * _6874 / 10^18) + mem[_7974] < mem[_7974]:
                                    revert with 0, 'SafeMath: addition overflow'
                        return 0
                    if 31540000 * mem[_6492] / mem[_6492] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6848 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6906 = mem[_6848]
                    if mem[_6848] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7226 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7226] < mem[_7226]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_7226] < dustThreshold:
                            if 31540000 * _6518:
                                if 0 / 31540000 * _6518:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _6518:
                            return 0
                        if 31540000 * mem[_7226] * _6518 / 31540000 * _6518 != mem[_7226]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_7226] * _6518
                    else:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7091 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7161 = mem[_7091]
                        if not _6906:
                            _7423 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7423] = 26
                            mem[_7423 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7969 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7969] < mem[_7969]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7969] < dustThreshold:
                                if 31540000 * _6518:
                                    if 0 / 31540000 * _6518:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6518:
                                return 0
                            if 31540000 * mem[_7969] * _6518 / 31540000 * _6518 != mem[_7969]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = 31540000 * mem[_7969] * _6518
                        else:
                            if mem[_7091] * _6906 / _6906 != mem[_7091]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7522 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7522] = 26
                            mem[_7522 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8053 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_7161 * _6906 / 10^18) + mem[_8053] < mem[_8053]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_7161 * _6906 / 10^18) + mem[_8053] < dustThreshold:
                                if 31540000 * _6518:
                                    if 0 / 31540000 * _6518:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6518:
                                return 0
                            if (31540000 * _7161 * _6906 / 10^18 * _6518) + (31540000 * mem[_8053] * _6518) / 31540000 * _6518 != (_7161 * _6906 / 10^18) + mem[_8053]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * _7161 * _6906 / 10^18 * _6518) + (31540000 * mem[_8053] * _6518)
                else:
                    if 9 * mem[(32 * _3476 - 1) + (6 * ceil32(return_data.size)) + 416] / mem[(32 * _3476 - 1) + (6 * ceil32(return_data.size)) + 416] != 9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _6421 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6421] = 26
                    mem[_6421 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6502 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6534 = mem[_6502]
                    if (9 * _6364 / 10) + mem[_6502] < mem[_6502]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (9 * _6364 / 10) + mem[_6502]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6847 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6905 = mem[_6847]
                        if mem[_6847] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7225 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7225] < mem[_7225]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7089 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7159 = mem[_7089]
                            if not _6905:
                                _7422 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7422] = 26
                                mem[_7422 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7966 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7966] < mem[_7966]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if mem[_7089] * _6905 / _6905 != mem[_7089]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7519 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7519] = 26
                                mem[_7519 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8052 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_7159 * _6905 / 10^18) + mem[_8052] < mem[_8052]:
                                    revert with 0, 'SafeMath: addition overflow'
                        return 0
                    if (31540000 * 9 * _6364 / 10) + (31540000 * mem[_6502]) / (9 * _6364 / 10) + mem[_6502] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6873 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6942 = mem[_6873]
                    if mem[_6873] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7257 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7257] < mem[_7257]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_7257] < dustThreshold:
                            if (31540000 * 9 * _6364 / 10) + (31540000 * _6534):
                                if 0 / (31540000 * 9 * _6364 / 10) + (31540000 * _6534):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not (31540000 * 9 * _6364 / 10) + (31540000 * _6534):
                            return 0
                        if (31540000 * 9 * _6364 / 10 * mem[_7257]) + (31540000 * _6534 * mem[_7257]) / (31540000 * 9 * _6364 / 10) + (31540000 * _6534) != mem[_7257]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = (31540000 * 9 * _6364 / 10 * mem[_7257]) + (31540000 * _6534 * mem[_7257])
                    else:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7127 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7192 = mem[_7127]
                        if not _6942:
                            _7518 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7518] = 26
                            mem[_7518 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8047 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_8047] < mem[_8047]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_8047] < dustThreshold:
                                if (31540000 * 9 * _6364 / 10) + (31540000 * _6534):
                                    if 0 / (31540000 * 9 * _6364 / 10) + (31540000 * _6534):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not (31540000 * 9 * _6364 / 10) + (31540000 * _6534):
                                return 0
                            if (31540000 * 9 * _6364 / 10 * mem[_8047]) + (31540000 * _6534 * mem[_8047]) / (31540000 * 9 * _6364 / 10) + (31540000 * _6534) != mem[_8047]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * 9 * _6364 / 10 * mem[_8047]) + (31540000 * _6534 * mem[_8047])
                        else:
                            if mem[_7127] * _6942 / _6942 != mem[_7127]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7615 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7615] = 26
                            mem[_7615 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8145 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_7192 * _6942 / 10^18) + mem[_8145] < mem[_8145]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_7192 * _6942 / 10^18) + mem[_8145] < dustThreshold:
                                if (31540000 * 9 * _6364 / 10) + (31540000 * _6534):
                                    if 0 / (31540000 * 9 * _6364 / 10) + (31540000 * _6534):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not (31540000 * 9 * _6364 / 10) + (31540000 * _6534):
                                return 0
                            if (31540000 * 9 * _6364 / 10 * _7192 * _6942 / 10^18) + (31540000 * _6534 * _7192 * _6942 / 10^18) + (31540000 * 9 * _6364 / 10 * mem[_8145]) + (31540000 * _6534 * mem[_8145]) / (31540000 * 9 * _6364 / 10) + (31540000 * _6534) != (_7192 * _6942 / 10^18) + mem[_8145]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * 9 * _6364 / 10 * _7192 * _6942 / 10^18) + (31540000 * _6534 * _7192 * _6942 / 10^18) + (31540000 * 9 * _6364 / 10 * mem[_8145]) + (31540000 * _6534 * mem[_8145])
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
                _3470 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 447
                _3478 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448
                mem[(6 * ceil32(return_data.size)) + 416] = _3478
                require return_data.size >= _3470 + (32 * _3478) + 32
                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _3478] = mem[(4 * ceil32(return_data.size)) + _3470 + 448 len 32 * _3478]
                require _3478 - 1 < _3478
                _6366 = mem[(32 * _3478 - 1) + (6 * ceil32(return_data.size)) + 448]
                if not mem[(32 * _3478 - 1) + (6 * ceil32(return_data.size)) + 448]:
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6390 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6409 = mem[_6390]
                    if mem[_6390] < mem[_6390]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not mem[_6390]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6577 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6609 = mem[_6577]
                        if mem[_6577] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6804 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_6804] < mem[_6804]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6684 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6743 = mem[_6684]
                            if not _6609:
                                _6912 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6912] = 26
                                mem[_6912 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7364 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7364] < mem[_7364]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if mem[_6684] * _6609 / _6609 != mem[_6684]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _6953 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6953] = 26
                                mem[_6953 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7444 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_6743 * _6609 / 10^18) + mem[_7444] < mem[_7444]:
                                    revert with 0, 'SafeMath: addition overflow'
                        return 0
                    if 31540000 * mem[_6390] / mem[_6390] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6593 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6622 = mem[_6593]
                    if mem[_6593] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6828 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_6828] < mem[_6828]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_6828] < dustThreshold:
                            if 31540000 * _6409:
                                if 0 / 31540000 * _6409:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _6409:
                            return 0
                        if 31540000 * mem[_6828] * _6409 / 31540000 * _6409 != mem[_6828]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_6828] * _6409
                    else:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6711 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6775 = mem[_6711]
                        if not _6622:
                            _6952 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6952] = 26
                            mem[_6952 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7439 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7439] < mem[_7439]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7439] < dustThreshold:
                                if 31540000 * _6409:
                                    if 0 / 31540000 * _6409:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6409:
                                return 0
                            if 31540000 * mem[_7439] * _6409 / 31540000 * _6409 != mem[_7439]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = 31540000 * mem[_7439] * _6409
                        else:
                            if mem[_6711] * _6622 / _6622 != mem[_6711]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7008 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7008] = 26
                            mem[_7008 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7538 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_6775 * _6622 / 10^18) + mem[_7538] < mem[_7538]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_6775 * _6622 / 10^18) + mem[_7538] < dustThreshold:
                                if 31540000 * _6409:
                                    if 0 / 31540000 * _6409:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6409:
                                return 0
                            if (31540000 * _6775 * _6622 / 10^18 * _6409) + (31540000 * mem[_7538] * _6409) / 31540000 * _6409 != (_6775 * _6622 / 10^18) + mem[_7538]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * _6775 * _6622 / 10^18 * _6409) + (31540000 * mem[_7538] * _6409)
                else:
                    if not mem[(32 * _3478 - 1) + (6 * ceil32(return_data.size)) + 448]:
                        _6410 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6410] = 26
                        mem[_6410 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6522 = mem[_6494]
                        if mem[_6494] < mem[_6494]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not mem[_6494]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6830 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6882 = mem[_6830]
                            if mem[_6830] < dustThreshold:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7202 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7202] < mem[_7202]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ext_code.size(cTokenAddress)
                                staticcall cTokenAddress.exchangeRateStored() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7061 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7137 = mem[_7061]
                                if not _6882:
                                    _7370 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7370] = 26
                                    mem[_7370 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7920 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7920] < mem[_7920]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if mem[_7061] * _6882 / _6882 != mem[_7061]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _7448 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7448] = 26
                                    mem[_7448 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7994 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (_7137 * _6882 / 10^18) + mem[_7994] < mem[_7994]:
                                        revert with 0, 'SafeMath: addition overflow'
                            return 0
                        if 31540000 * mem[_6494] / mem[_6494] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6854 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6914 = mem[_6854]
                        if mem[_6854] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7234 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7234] < mem[_7234]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7234] < dustThreshold:
                                if 31540000 * _6522:
                                    if 0 / 31540000 * _6522:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6522:
                                return 0
                            if 31540000 * mem[_7234] * _6522 / 31540000 * _6522 != mem[_7234]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = 31540000 * mem[_7234] * _6522
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7101 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7169 = mem[_7101]
                            if not _6914:
                                _7447 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7447] = 26
                                mem[_7447 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7989 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7989] < mem[_7989]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_7989] < dustThreshold:
                                    if 31540000 * _6522:
                                        if 0 / 31540000 * _6522:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not 31540000 * _6522:
                                    return 0
                                if 31540000 * mem[_7989] * _6522 / 31540000 * _6522 != mem[_7989]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = 31540000 * mem[_7989] * _6522
                            else:
                                if mem[_7101] * _6914 / _6914 != mem[_7101]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7548 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7548] = 26
                                mem[_7548 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8077 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_7169 * _6914 / 10^18) + mem[_8077] < mem[_8077]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (_7169 * _6914 / 10^18) + mem[_8077] < dustThreshold:
                                    if 31540000 * _6522:
                                        if 0 / 31540000 * _6522:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not 31540000 * _6522:
                                    return 0
                                if (31540000 * _7169 * _6914 / 10^18 * _6522) + (31540000 * mem[_8077] * _6522) / 31540000 * _6522 != (_7169 * _6914 / 10^18) + mem[_8077]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = (31540000 * _7169 * _6914 / 10^18 * _6522) + (31540000 * mem[_8077] * _6522)
                    else:
                        if 9 * mem[(32 * _3478 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _3478 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _6425 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6425] = 26
                        mem[_6425 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6506 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6538 = mem[_6506]
                        if (9 * _6366 / 10) + mem[_6506] < mem[_6506]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * _6366 / 10) + mem[_6506]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6853 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6913 = mem[_6853]
                            if mem[_6853] < dustThreshold:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7233 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7233] < mem[_7233]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ext_code.size(cTokenAddress)
                                staticcall cTokenAddress.exchangeRateStored() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7099 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7167 = mem[_7099]
                                if not _6913:
                                    _7446 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7446] = 26
                                    mem[_7446 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7986 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7986] < mem[_7986]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if mem[_7099] * _6913 / _6913 != mem[_7099]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _7545 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7545] = 26
                                    mem[_7545 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8076 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (_7167 * _6913 / 10^18) + mem[_8076] < mem[_8076]:
                                        revert with 0, 'SafeMath: addition overflow'
                            return 0
                        if (31540000 * 9 * _6366 / 10) + (31540000 * mem[_6506]) / (9 * _6366 / 10) + mem[_6506] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6881 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6956 = mem[_6881]
                        if mem[_6881] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7265 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7265] < mem[_7265]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7265] < dustThreshold:
                                if (31540000 * 9 * _6366 / 10) + (31540000 * _6538):
                                    if 0 / (31540000 * 9 * _6366 / 10) + (31540000 * _6538):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not (31540000 * 9 * _6366 / 10) + (31540000 * _6538):
                                return 0
                            if (31540000 * 9 * _6366 / 10 * mem[_7265]) + (31540000 * _6538 * mem[_7265]) / (31540000 * 9 * _6366 / 10) + (31540000 * _6538) != mem[_7265]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * 9 * _6366 / 10 * mem[_7265]) + (31540000 * _6538 * mem[_7265])
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7135 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7200 = mem[_7135]
                            if not _6956:
                                _7544 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7544] = 26
                                mem[_7544 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8071 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_8071] < mem[_8071]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_8071] < dustThreshold:
                                    if (31540000 * 9 * _6366 / 10) + (31540000 * _6538):
                                        if 0 / (31540000 * 9 * _6366 / 10) + (31540000 * _6538):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not (31540000 * 9 * _6366 / 10) + (31540000 * _6538):
                                    return 0
                                if (31540000 * 9 * _6366 / 10 * mem[_8071]) + (31540000 * _6538 * mem[_8071]) / (31540000 * 9 * _6366 / 10) + (31540000 * _6538) != mem[_8071]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = (31540000 * 9 * _6366 / 10 * mem[_8071]) + (31540000 * _6538 * mem[_8071])
                            else:
                                if mem[_7135] * _6956 / _6956 != mem[_7135]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7631 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7631] = 26
                                mem[_7631 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8169 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_7200 * _6956 / 10^18) + mem[_8169] < mem[_8169]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (_7200 * _6956 / 10^18) + mem[_8169] < dustThreshold:
                                    if (31540000 * 9 * _6366 / 10) + (31540000 * _6538):
                                        if 0 / (31540000 * 9 * _6366 / 10) + (31540000 * _6538):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not (31540000 * 9 * _6366 / 10) + (31540000 * _6538):
                                    return 0
                                if (31540000 * 9 * _6366 / 10 * _7200 * _6956 / 10^18) + (31540000 * _6538 * _7200 * _6956 / 10^18) + (31540000 * 9 * _6366 / 10 * mem[_8169]) + (31540000 * _6538 * mem[_8169]) / (31540000 * 9 * _6366 / 10) + (31540000 * _6538) != (_7200 * _6956 / 10^18) + mem[_8169]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = (31540000 * 9 * _6366 / 10 * _7200 * _6956 / 10^18) + (31540000 * _6538 * _7200 * _6956 / 10^18) + (31540000 * 9 * _6366 / 10 * mem[_8169]) + (31540000 * _6538 * mem[_8169])
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
                _3469 = mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
                require mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 416 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 447
                _3477 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 416]) + 448
                mem[(6 * ceil32(return_data.size)) + 416] = _3477
                require return_data.size >= _3469 + (32 * _3477) + 32
                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _3477] = mem[(4 * ceil32(return_data.size)) + _3469 + 448 len 32 * _3477]
                require _3477 - 1 < _3477
                _6365 = mem[(32 * _3477 - 1) + (6 * ceil32(return_data.size)) + 448]
                if not mem[(32 * _3477 - 1) + (6 * ceil32(return_data.size)) + 448]:
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6389 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6407 = mem[_6389]
                    if mem[_6389] < mem[_6389]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not mem[_6389]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6607 = mem[_6575]
                        if mem[_6575] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6801 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_6801] < mem[_6801]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6681 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6739 = mem[_6681]
                            if not _6607:
                                _6908 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6908] = 26
                                mem[_6908 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7356 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7356] < mem[_7356]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if mem[_6681] * _6607 / _6607 != mem[_6681]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _6946 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6946] = 26
                                mem[_6946 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7432 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_6739 * _6607 / 10^18) + mem[_7432] < mem[_7432]:
                                    revert with 0, 'SafeMath: addition overflow'
                        return 0
                    if 31540000 * mem[_6389] / mem[_6389] != 31540000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6591 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6621 = mem[_6591]
                    if mem[_6591] < dustThreshold:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6825 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_6825] < mem[_6825]:
                            revert with 0, 'SafeMath: addition overflow'
                        if mem[_6825] < dustThreshold:
                            if 31540000 * _6407:
                                if 0 / 31540000 * _6407:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    return 0
                            else:
                                return 0
                        if not 31540000 * _6407:
                            return 0
                        if 31540000 * mem[_6825] * _6407 / 31540000 * _6407 != mem[_6825]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = 31540000 * mem[_6825] * _6407
                    else:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6707 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6771 = mem[_6707]
                        if not _6621:
                            _6945 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6945] = 26
                            mem[_6945 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7427 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7427] < mem[_7427]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7427] < dustThreshold:
                                if 31540000 * _6407:
                                    if 0 / 31540000 * _6407:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6407:
                                return 0
                            if 31540000 * mem[_7427] * _6407 / 31540000 * _6407 != mem[_7427]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = 31540000 * mem[_7427] * _6407
                        else:
                            if mem[_6707] * _6621 / _6621 != mem[_6707]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7001 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7001] = 26
                            mem[_7001 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7525 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_6771 * _6621 / 10^18) + mem[_7525] < mem[_7525]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_6771 * _6621 / 10^18) + mem[_7525] < dustThreshold:
                                if 31540000 * _6407:
                                    if 0 / 31540000 * _6407:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6407:
                                return 0
                            if (31540000 * _6771 * _6621 / 10^18 * _6407) + (31540000 * mem[_7525] * _6407) / 31540000 * _6407 != (_6771 * _6621 / 10^18) + mem[_7525]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * _6771 * _6621 / 10^18 * _6407) + (31540000 * mem[_7525] * _6407)
                else:
                    if not mem[(32 * _3477 - 1) + (6 * ceil32(return_data.size)) + 448]:
                        _6408 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6408] = 26
                        mem[_6408 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6493 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6520 = mem[_6493]
                        if mem[_6493] < mem[_6493]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not mem[_6493]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6827 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6878 = mem[_6827]
                            if mem[_6827] < dustThreshold:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7198 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7198] < mem[_7198]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ext_code.size(cTokenAddress)
                                staticcall cTokenAddress.exchangeRateStored() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7056 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7133 = mem[_7056]
                                if not _6878:
                                    _7362 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7362] = 26
                                    mem[_7362 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7912 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7912] < mem[_7912]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if mem[_7056] * _6878 / _6878 != mem[_7056]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _7436 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7436] = 26
                                    mem[_7436 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7984 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (_7133 * _6878 / 10^18) + mem[_7984] < mem[_7984]:
                                        revert with 0, 'SafeMath: addition overflow'
                            return 0
                        if 31540000 * mem[_6493] / mem[_6493] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6851 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6910 = mem[_6851]
                        if mem[_6851] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7230 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7230] < mem[_7230]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7230] < dustThreshold:
                                if 31540000 * _6520:
                                    if 0 / 31540000 * _6520:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not 31540000 * _6520:
                                return 0
                            if 31540000 * mem[_7230] * _6520 / 31540000 * _6520 != mem[_7230]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = 31540000 * mem[_7230] * _6520
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7096 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7165 = mem[_7096]
                            if not _6910:
                                _7435 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7435] = 26
                                mem[_7435 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7979 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7979] < mem[_7979]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_7979] < dustThreshold:
                                    if 31540000 * _6520:
                                        if 0 / 31540000 * _6520:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not 31540000 * _6520:
                                    return 0
                                if 31540000 * mem[_7979] * _6520 / 31540000 * _6520 != mem[_7979]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = 31540000 * mem[_7979] * _6520
                            else:
                                if mem[_7096] * _6910 / _6910 != mem[_7096]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7535 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7535] = 26
                                mem[_7535 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8065 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_7165 * _6910 / 10^18) + mem[_8065] < mem[_8065]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (_7165 * _6910 / 10^18) + mem[_8065] < dustThreshold:
                                    if 31540000 * _6520:
                                        if 0 / 31540000 * _6520:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not 31540000 * _6520:
                                    return 0
                                if (31540000 * _7165 * _6910 / 10^18 * _6520) + (31540000 * mem[_8065] * _6520) / 31540000 * _6520 != (_7165 * _6910 / 10^18) + mem[_8065]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = (31540000 * _7165 * _6910 / 10^18 * _6520) + (31540000 * mem[_8065] * _6520)
                    else:
                        if 9 * mem[(32 * _3477 - 1) + (6 * ceil32(return_data.size)) + 448] / mem[(32 * _3477 - 1) + (6 * ceil32(return_data.size)) + 448] != 9:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _6423 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6423] = 26
                        mem[_6423 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6504 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6536 = mem[_6504]
                        if (9 * _6365 / 10) + mem[_6504] < mem[_6504]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * _6365 / 10) + mem[_6504]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6850 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6909 = mem[_6850]
                            if mem[_6850] < dustThreshold:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7229 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7229] < mem[_7229]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ext_code.size(cTokenAddress)
                                staticcall cTokenAddress.exchangeRateStored() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7094 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7163 = mem[_7094]
                                if not _6909:
                                    _7434 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7434] = 26
                                    mem[_7434 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7976 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7976] < mem[_7976]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if mem[_7094] * _6909 / _6909 != mem[_7094]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _7532 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7532] = 26
                                    mem[_7532 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8064 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (_7163 * _6909 / 10^18) + mem[_8064] < mem[_8064]:
                                        revert with 0, 'SafeMath: addition overflow'
                            return 0
                        if (31540000 * 9 * _6365 / 10) + (31540000 * mem[_6504]) / (9 * _6365 / 10) + mem[_6504] != 31540000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6877 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6949 = mem[_6877]
                        if mem[_6877] < dustThreshold:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7261 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7261] < mem[_7261]:
                                revert with 0, 'SafeMath: addition overflow'
                            if mem[_7261] < dustThreshold:
                                if (31540000 * 9 * _6365 / 10) + (31540000 * _6536):
                                    if 0 / (31540000 * 9 * _6365 / 10) + (31540000 * _6536):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        return 0
                                else:
                                    return 0
                            if not (31540000 * 9 * _6365 / 10) + (31540000 * _6536):
                                return 0
                            if (31540000 * 9 * _6365 / 10 * mem[_7261]) + (31540000 * _6536 * mem[_7261]) / (31540000 * 9 * _6365 / 10) + (31540000 * _6536) != mem[_7261]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = (31540000 * 9 * _6365 / 10 * mem[_7261]) + (31540000 * _6536 * mem[_7261])
                        else:
                            require ext_code.size(cTokenAddress)
                            staticcall cTokenAddress.exchangeRateStored() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7131 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7196 = mem[_7131]
                            if not _6949:
                                _7531 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7531] = 26
                                mem[_7531 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8059 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_8059] < mem[_8059]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if mem[_8059] < dustThreshold:
                                    if (31540000 * 9 * _6365 / 10) + (31540000 * _6536):
                                        if 0 / (31540000 * 9 * _6365 / 10) + (31540000 * _6536):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not (31540000 * 9 * _6365 / 10) + (31540000 * _6536):
                                    return 0
                                if (31540000 * 9 * _6365 / 10 * mem[_8059]) + (31540000 * _6536 * mem[_8059]) / (31540000 * 9 * _6365 / 10) + (31540000 * _6536) != mem[_8059]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = (31540000 * 9 * _6365 / 10 * mem[_8059]) + (31540000 * _6536 * mem[_8059])
                            else:
                                if mem[_7131] * _6949 / _6949 != mem[_7131]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7623 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7623] = 26
                                mem[_7623 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8157 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (_7196 * _6949 / 10^18) + mem[_8157] < mem[_8157]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (_7196 * _6949 / 10^18) + mem[_8157] < dustThreshold:
                                    if (31540000 * 9 * _6365 / 10) + (31540000 * _6536):
                                        if 0 / (31540000 * 9 * _6365 / 10) + (31540000 * _6536):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            return 0
                                    else:
                                        return 0
                                if not (31540000 * 9 * _6365 / 10) + (31540000 * _6536):
                                    return 0
                                if (31540000 * 9 * _6365 / 10 * _7196 * _6949 / 10^18) + (31540000 * _6536 * _7196 * _6949 / 10^18) + (31540000 * 9 * _6365 / 10 * mem[_8157]) + (31540000 * _6536 * mem[_8157]) / (31540000 * 9 * _6365 / 10) + (31540000 * _6536) != (_7196 * _6949 / 10^18) + mem[_8157]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64]] = (31540000 * 9 * _6365 / 10 * _7196 * _6949 / 10^18) + (31540000 * _6536 * _7196 * _6949 / 10^18) + (31540000 * 9 * _6365 / 10 * mem[_8157]) + (31540000 * _6536 * mem[_8157])
    return memory
      from mem[64]
       len 32
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
                _15958 = mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 256 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287
                _16194 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288
                mem[(7 * ceil32(return_data.size)) + 256] = _16194
                require return_data.size >= _15958 + (32 * _16194) + 32
                mem[(7 * ceil32(return_data.size)) + 288 len 32 * _16194] = mem[(6 * ceil32(return_data.size)) + _15958 + 288 len 32 * _16194]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22494 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22554 = mem[_22494]
                _22614 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22554
                _22675 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22614 + 100] = 32
                mem[_22614 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23034 = mem[_22675]
                mem[_22614 + 164 len ceil32(mem[_22675])] = mem[_22675 + 32 len ceil32(mem[_22675])]
                if ceil32(_23034) > _23034:
                    mem[_23034 + _22614 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22614 + 168 len _23034 - 4]
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
                    mem[_22614 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22614 + 196] == bool(mem[_22614 + 196])
                        if not mem[_22614 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22554
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
                _15960 = mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 288 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
                _16196 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
                mem[(7 * ceil32(return_data.size)) + 288] = _16196
                require return_data.size >= _15960 + (32 * _16196) + 32
                mem[(7 * ceil32(return_data.size)) + 320 len 32 * _16196] = mem[(6 * ceil32(return_data.size)) + _15960 + 320 len 32 * _16196]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22496 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22556 = mem[_22496]
                _22616 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22556
                _22679 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22616 + 100] = 32
                mem[_22616 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23036 = mem[_22679]
                mem[_22616 + 164 len ceil32(mem[_22679])] = mem[_22679 + 32 len ceil32(mem[_22679])]
                if ceil32(_23036) > _23036:
                    mem[_23036 + _22616 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22616 + 168 len _23036 - 4]
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
                    mem[_22616 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22616 + 196] == bool(mem[_22616 + 196])
                        if not mem[_22616 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22556
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
            _15959 = mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
            require mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (6 * ceil32(return_data.size)) + return_data.size + 288 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
            _16195 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
            mem[(7 * ceil32(return_data.size)) + 288] = _16195
            require return_data.size >= _15959 + (32 * _16195) + 32
            mem[(7 * ceil32(return_data.size)) + 320 len 32 * _16195] = mem[(6 * ceil32(return_data.size)) + _15959 + 320 len 32 * _16195]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22495 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22555 = mem[_22495]
            _22615 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22555
            _22677 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22615 + 100] = 32
            mem[_22615 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23035 = mem[_22677]
            mem[_22615 + 164 len ceil32(mem[_22677])] = mem[_22677 + 32 len ceil32(mem[_22677])]
            if ceil32(_23035) > _23035:
                mem[_23035 + _22615 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22615 + 168 len _23035 - 4]
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
                mem[_22615 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22615 + 196] == bool(mem[_22615 + 196])
                    if not mem[_22615 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22555
        mem[(4 * ceil32(return_data.size)) + 96] = 30
        mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - ext_call.return_data[0] <= ext_call.return_data[0]:
            if arg1 - ext_call.return_data[0] <= dustThreshold:
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
                    _15966 = mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                    require mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 320 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                    _16198 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                    mem[(7 * ceil32(return_data.size)) + 320] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                    require return_data.size >= _15966 + (32 * _16198) + 32
                    mem[(7 * ceil32(return_data.size)) + 352 len 32 * _16198] = mem[(6 * ceil32(return_data.size)) + _15966 + 352 len 32 * _16198]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22498 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _22558 = mem[_22498]
                    _22618 = mem[64]
                    mem[mem[64] + 36] = address(strategyAddress)
                    mem[mem[64] + 68] = _22558
                    _22683 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_22618 + 100] = 32
                    mem[_22618 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _23038 = mem[_22683]
                    mem[_22618 + 164 len ceil32(mem[_22683])] = mem[_22683 + 32 len ceil32(mem[_22683])]
                    if ceil32(_23038) > _23038:
                        mem[_23038 + _22618 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_22618 + 168 len _23038 - 4]
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
                        mem[_22618 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_22618 + 196] == bool(mem[_22618 + 196])
                            if not mem[_22618 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return _22558
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
                    _15968 = mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                    require mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 352 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                    _16200 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                    mem[(7 * ceil32(return_data.size)) + 352] = _16200
                    require return_data.size >= _15968 + (32 * _16200) + 32
                    mem[(7 * ceil32(return_data.size)) + 384 len 32 * _16200] = mem[(6 * ceil32(return_data.size)) + _15968 + 384 len 32 * _16200]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22500 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _22560 = mem[_22500]
                    _22620 = mem[64]
                    mem[mem[64] + 36] = address(strategyAddress)
                    mem[mem[64] + 68] = _22560
                    _22687 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_22620 + 100] = 32
                    mem[_22620 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _23040 = mem[_22687]
                    mem[_22620 + 164 len ceil32(mem[_22687])] = mem[_22687 + 32 len ceil32(mem[_22687])]
                    if ceil32(_23040) > _23040:
                        mem[_23040 + _22620 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_22620 + 168 len _23040 - 4]
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
                        mem[_22620 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_22620 + 196] == bool(mem[_22620 + 196])
                            if not mem[_22620 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return _22560
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
                _15967 = mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 352 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _16199 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(7 * ceil32(return_data.size)) + 352] = _16199
                require return_data.size >= _15967 + (32 * _16199) + 32
                mem[(7 * ceil32(return_data.size)) + 384 len 32 * _16199] = mem[(6 * ceil32(return_data.size)) + _15967 + 384 len 32 * _16199]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22499 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22559 = mem[_22499]
                _22619 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22559
                _22685 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22619 + 100] = 32
                mem[_22619 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23039 = mem[_22685]
                mem[_22619 + 164 len ceil32(mem[_22685])] = mem[_22685 + 32 len ceil32(mem[_22685])]
                if ceil32(_23039) > _23039:
                    mem[_23039 + _22619 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22619 + 168 len _23039 - 4]
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
                    mem[_22619 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22619 + 196] == bool(mem[_22619 + 196])
                        if not mem[_22619 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22559
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
                _15974 = mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 320 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                _16202 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                mem[(8 * ceil32(return_data.size)) + 320] = _16202
                require return_data.size >= _15974 + (32 * _16202) + 32
                mem[(8 * ceil32(return_data.size)) + 352 len 32 * _16202] = mem[(7 * ceil32(return_data.size)) + _15974 + 352 len 32 * _16202]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22502 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22562 = mem[_22502]
                _22622 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22562
                _22691 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22622 + 100] = 32
                mem[_22622 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23042 = mem[_22691]
                mem[_22622 + 164 len ceil32(mem[_22691])] = mem[_22691 + 32 len ceil32(mem[_22691])]
                if ceil32(_23042) > _23042:
                    mem[_23042 + _22622 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22622 + 168 len _23042 - 4]
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
                    mem[_22622 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22622 + 196] == bool(mem[_22622 + 196])
                        if not mem[_22622 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22562
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
                _15976 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _16204 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(8 * ceil32(return_data.size)) + 352] = _16204
                require return_data.size >= _15976 + (32 * _16204) + 32
                mem[(8 * ceil32(return_data.size)) + 384 len 32 * _16204] = mem[(7 * ceil32(return_data.size)) + _15976 + 384 len 32 * _16204]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22504 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22564 = mem[_22504]
                _22624 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22564
                _22695 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22624 + 100] = 32
                mem[_22624 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23044 = mem[_22695]
                mem[_22624 + 164 len ceil32(mem[_22695])] = mem[_22695 + 32 len ceil32(mem[_22695])]
                if ceil32(_23044) > _23044:
                    mem[_23044 + _22624 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22624 + 168 len _23044 - 4]
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
                    mem[_22624 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22624 + 196] == bool(mem[_22624 + 196])
                        if not mem[_22624 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22564
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
            _15975 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _16203 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(8 * ceil32(return_data.size)) + 352] = _16203
            require return_data.size >= _15975 + (32 * _16203) + 32
            mem[(8 * ceil32(return_data.size)) + 384 len 32 * _16203] = mem[(7 * ceil32(return_data.size)) + _15975 + 384 len 32 * _16203]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22503 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22563 = mem[_22503]
            _22623 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22563
            _22693 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22623 + 100] = 32
            mem[_22623 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23043 = mem[_22693]
            mem[_22623 + 164 len ceil32(mem[_22693])] = mem[_22693 + 32 len ceil32(mem[_22693])]
            if ceil32(_23043) > _23043:
                mem[_23043 + _22623 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22623 + 168 len _23043 - 4]
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
                mem[_22623 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22623 + 196] == bool(mem[_22623 + 196])
                    if not mem[_22623 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22563
        if ext_call.return_data[0] <= dustThreshold:
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
                _15982 = mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 320 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                _16206 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                mem[(7 * ceil32(return_data.size)) + 320] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require return_data.size >= _15982 + (32 * _16206) + 32
                mem[(7 * ceil32(return_data.size)) + 352 len 32 * _16206] = mem[(6 * ceil32(return_data.size)) + _15982 + 352 len 32 * _16206]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22506 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22566 = mem[_22506]
                _22626 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22566
                _22699 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22626 + 100] = 32
                mem[_22626 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23046 = mem[_22699]
                mem[_22626 + 164 len ceil32(mem[_22699])] = mem[_22699 + 32 len ceil32(mem[_22699])]
                if ceil32(_23046) > _23046:
                    mem[_23046 + _22626 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22626 + 168 len _23046 - 4]
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
                    mem[_22626 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22626 + 196] == bool(mem[_22626 + 196])
                        if not mem[_22626 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22566
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
                _15984 = mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 352 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _16208 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(7 * ceil32(return_data.size)) + 352] = _16208
                require return_data.size >= _15984 + (32 * _16208) + 32
                mem[(7 * ceil32(return_data.size)) + 384 len 32 * _16208] = mem[(6 * ceil32(return_data.size)) + _15984 + 384 len 32 * _16208]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22508 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22568 = mem[_22508]
                _22628 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22568
                _22703 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22628 + 100] = 32
                mem[_22628 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23048 = mem[_22703]
                mem[_22628 + 164 len ceil32(mem[_22703])] = mem[_22703 + 32 len ceil32(mem[_22703])]
                if ceil32(_23048) > _23048:
                    mem[_23048 + _22628 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22628 + 168 len _23048 - 4]
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
                    mem[_22628 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22628 + 196] == bool(mem[_22628 + 196])
                        if not mem[_22628 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22568
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
            _15983 = mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (6 * ceil32(return_data.size)) + return_data.size + 352 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _16207 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(7 * ceil32(return_data.size)) + 352] = _16207
            require return_data.size >= _15983 + (32 * _16207) + 32
            mem[(7 * ceil32(return_data.size)) + 384 len 32 * _16207] = mem[(6 * ceil32(return_data.size)) + _15983 + 384 len 32 * _16207]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22507 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22567 = mem[_22507]
            _22627 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22567
            _22701 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22627 + 100] = 32
            mem[_22627 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23047 = mem[_22701]
            mem[_22627 + 164 len ceil32(mem[_22701])] = mem[_22701 + 32 len ceil32(mem[_22701])]
            if ceil32(_23047) > _23047:
                mem[_23047 + _22627 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22627 + 168 len _23047 - 4]
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
                mem[_22627 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22627 + 196] == bool(mem[_22627 + 196])
                    if not mem[_22627 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22567
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
            _15990 = mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
            require mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (7 * ceil32(return_data.size)) + return_data.size + 320 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
            _16210 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
            mem[(8 * ceil32(return_data.size)) + 320] = _16210
            require return_data.size >= _15990 + (32 * _16210) + 32
            mem[(8 * ceil32(return_data.size)) + 352 len 32 * _16210] = mem[(7 * ceil32(return_data.size)) + _15990 + 352 len 32 * _16210]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22510 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22570 = mem[_22510]
            _22630 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22570
            _22707 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22630 + 100] = 32
            mem[_22630 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23050 = mem[_22707]
            mem[_22630 + 164 len ceil32(mem[_22707])] = mem[_22707 + 32 len ceil32(mem[_22707])]
            if ceil32(_23050) > _23050:
                mem[_23050 + _22630 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22630 + 168 len _23050 - 4]
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
                mem[_22630 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22630 + 196] == bool(mem[_22630 + 196])
                    if not mem[_22630 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22570
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
            _15992 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _16212 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(8 * ceil32(return_data.size)) + 352] = _16212
            require return_data.size >= _15992 + (32 * _16212) + 32
            mem[(8 * ceil32(return_data.size)) + 384 len 32 * _16212] = mem[(7 * ceil32(return_data.size)) + _15992 + 384 len 32 * _16212]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22512 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22572 = mem[_22512]
            _22632 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22572
            _22711 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22632 + 100] = 32
            mem[_22632 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23052 = mem[_22711]
            mem[_22632 + 164 len ceil32(mem[_22711])] = mem[_22711 + 32 len ceil32(mem[_22711])]
            if ceil32(_23052) > _23052:
                mem[_23052 + _22632 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22632 + 168 len _23052 - 4]
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
                mem[_22632 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22632 + 196] == bool(mem[_22632 + 196])
                    if not mem[_22632 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22572
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
        _15991 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
        _16211 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
        require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
        mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
        mem[(8 * ceil32(return_data.size)) + 352] = _16211
        require return_data.size >= _15991 + (32 * _16211) + 32
        mem[(8 * ceil32(return_data.size)) + 384 len 32 * _16211] = mem[(7 * ceil32(return_data.size)) + _15991 + 384 len 32 * _16211]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22511 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22571 = mem[_22511]
        _22631 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _22571
        _22709 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_22631 + 100] = 32
        mem[_22631 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _23051 = mem[_22709]
        mem[_22631 + 164 len ceil32(mem[_22709])] = mem[_22709 + 32 len ceil32(mem[_22709])]
        if ceil32(_23051) > _23051:
            mem[_23051 + _22631 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_22631 + 168 len _23051 - 4]
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
            mem[_22631 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_22631 + 196] == bool(mem[_22631 + 196])
                if not mem[_22631 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _22571
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
                _15998 = mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 256 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287
                _16214 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288
                mem[(8 * ceil32(return_data.size)) + 256] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
                require return_data.size >= _15998 + (32 * _16214) + 32
                mem[(8 * ceil32(return_data.size)) + 288 len 32 * _16214] = mem[(7 * ceil32(return_data.size)) + _15998 + 288 len 32 * _16214]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22514 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22574 = mem[_22514]
                _22634 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22574
                _22715 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22634 + 100] = 32
                mem[_22634 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23054 = mem[_22715]
                mem[_22634 + 164 len ceil32(mem[_22715])] = mem[_22715 + 32 len ceil32(mem[_22715])]
                if ceil32(_23054) > _23054:
                    mem[_23054 + _22634 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22634 + 168 len _23054 - 4]
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
                    mem[_22634 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22634 + 196] == bool(mem[_22634 + 196])
                        if not mem[_22634 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22574
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
                _16000 = mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 288 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
                _16216 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
                mem[(8 * ceil32(return_data.size)) + 288] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                require return_data.size >= _16000 + (32 * _16216) + 32
                mem[(8 * ceil32(return_data.size)) + 320 len 32 * _16216] = mem[(7 * ceil32(return_data.size)) + _16000 + 320 len 32 * _16216]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22516 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22576 = mem[_22516]
                _22636 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22576
                _22719 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22636 + 100] = 32
                mem[_22636 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23056 = mem[_22719]
                mem[_22636 + 164 len ceil32(mem[_22719])] = mem[_22719 + 32 len ceil32(mem[_22719])]
                if ceil32(_23056) > _23056:
                    mem[_23056 + _22636 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22636 + 168 len _23056 - 4]
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
                    mem[_22636 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22636 + 196] == bool(mem[_22636 + 196])
                        if not mem[_22636 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22576
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
            _15999 = mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
            require mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (7 * ceil32(return_data.size)) + return_data.size + 288 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
            _16215 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
            mem[(8 * ceil32(return_data.size)) + 288] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
            require return_data.size >= _15999 + (32 * _16215) + 32
            mem[(8 * ceil32(return_data.size)) + 320 len 32 * _16215] = mem[(7 * ceil32(return_data.size)) + _15999 + 320 len 32 * _16215]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22515 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22575 = mem[_22515]
            _22635 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22575
            _22717 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22635 + 100] = 32
            mem[_22635 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23055 = mem[_22717]
            mem[_22635 + 164 len ceil32(mem[_22717])] = mem[_22717 + 32 len ceil32(mem[_22717])]
            if ceil32(_23055) > _23055:
                mem[_23055 + _22635 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22635 + 168 len _23055 - 4]
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
                mem[_22635 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22635 + 196] == bool(mem[_22635 + 196])
                    if not mem[_22635 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22575
        mem[(6 * ceil32(return_data.size)) + 96] = 30
        mem[(6 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - ext_call.return_data[0] <= ext_call.return_data[0]:
            if arg1 - ext_call.return_data[0] <= dustThreshold:
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
                    _16006 = mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                    require mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (7 * ceil32(return_data.size)) + return_data.size + 320 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                    _16218 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                    mem[(8 * ceil32(return_data.size)) + 320] = _16218
                    require return_data.size >= _16006 + (32 * _16218) + 32
                    mem[(8 * ceil32(return_data.size)) + 352 len 32 * _16218] = mem[(7 * ceil32(return_data.size)) + _16006 + 352 len 32 * _16218]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _22578 = mem[_22518]
                    _22638 = mem[64]
                    mem[mem[64] + 36] = address(strategyAddress)
                    mem[mem[64] + 68] = _22578
                    _22723 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_22638 + 100] = 32
                    mem[_22638 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _23058 = mem[_22723]
                    mem[_22638 + 164 len ceil32(mem[_22723])] = mem[_22723 + 32 len ceil32(mem[_22723])]
                    if ceil32(_23058) > _23058:
                        mem[_23058 + _22638 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_22638 + 168 len _23058 - 4]
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
                        mem[_22638 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_22638 + 196] == bool(mem[_22638 + 196])
                            if not mem[_22638 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return _22578
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
                    _16008 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                    require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                    _16220 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                    mem[(8 * ceil32(return_data.size)) + 352] = _16220
                    require return_data.size >= _16008 + (32 * _16220) + 32
                    mem[(8 * ceil32(return_data.size)) + 384 len 32 * _16220] = mem[(7 * ceil32(return_data.size)) + _16008 + 384 len 32 * _16220]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22520 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _22580 = mem[_22520]
                    _22640 = mem[64]
                    mem[mem[64] + 36] = address(strategyAddress)
                    mem[mem[64] + 68] = _22580
                    _22727 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_22640 + 100] = 32
                    mem[_22640 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _23060 = mem[_22727]
                    mem[_22640 + 164 len ceil32(mem[_22727])] = mem[_22727 + 32 len ceil32(mem[_22727])]
                    if ceil32(_23060) > _23060:
                        mem[_23060 + _22640 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_22640 + 168 len _23060 - 4]
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
                        mem[_22640 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_22640 + 196] == bool(mem[_22640 + 196])
                            if not mem[_22640 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    return _22580
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
                _16007 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _16219 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(8 * ceil32(return_data.size)) + 352] = _16219
                require return_data.size >= _16007 + (32 * _16219) + 32
                mem[(8 * ceil32(return_data.size)) + 384 len 32 * _16219] = mem[(7 * ceil32(return_data.size)) + _16007 + 384 len 32 * _16219]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22519 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22579 = mem[_22519]
                _22639 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22579
                _22725 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22639 + 100] = 32
                mem[_22639 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23059 = mem[_22725]
                mem[_22639 + 164 len ceil32(mem[_22725])] = mem[_22725 + 32 len ceil32(mem[_22725])]
                if ceil32(_23059) > _23059:
                    mem[_23059 + _22639 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22639 + 168 len _23059 - 4]
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
                    mem[_22639 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22639 + 196] == bool(mem[_22639 + 196])
                        if not mem[_22639 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22579
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
                _16014 = mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                require mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 320 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                _16222 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                mem[(10 * ceil32(return_data.size)) + 320] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require return_data.size >= _16014 + (32 * _16222) + 32
                mem[(10 * ceil32(return_data.size)) + 352 len 32 * _16222] = mem[(8 * ceil32(return_data.size)) + _16014 + 352 len 32 * _16222]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22522 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22582 = mem[_22522]
                _22642 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22582
                _22731 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22642 + 100] = 32
                mem[_22642 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23062 = mem[_22731]
                mem[_22642 + 164 len ceil32(mem[_22731])] = mem[_22731 + 32 len ceil32(mem[_22731])]
                if ceil32(_23062) > _23062:
                    mem[_23062 + _22642 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22642 + 168 len _23062 - 4]
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
                    mem[_22642 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22642 + 196] == bool(mem[_22642 + 196])
                        if not mem[_22642 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22582
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
                _16016 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _16224 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(10 * ceil32(return_data.size)) + 352] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require return_data.size >= _16016 + (32 * _16224) + 32
                mem[(10 * ceil32(return_data.size)) + 384 len 32 * _16224] = mem[(8 * ceil32(return_data.size)) + _16016 + 384 len 32 * _16224]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22524 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22584 = mem[_22524]
                _22644 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22584
                _22735 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22644 + 100] = 32
                mem[_22644 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23064 = mem[_22735]
                mem[_22644 + 164 len ceil32(mem[_22735])] = mem[_22735 + 32 len ceil32(mem[_22735])]
                if ceil32(_23064) > _23064:
                    mem[_23064 + _22644 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22644 + 168 len _23064 - 4]
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
                    mem[_22644 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22644 + 196] == bool(mem[_22644 + 196])
                        if not mem[_22644 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22584
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
            _16015 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _16223 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(10 * ceil32(return_data.size)) + 352] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require return_data.size >= _16015 + (32 * _16223) + 32
            mem[(10 * ceil32(return_data.size)) + 384 len 32 * _16223] = mem[(8 * ceil32(return_data.size)) + _16015 + 384 len 32 * _16223]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22523 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22583 = mem[_22523]
            _22643 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22583
            _22733 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22643 + 100] = 32
            mem[_22643 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23063 = mem[_22733]
            mem[_22643 + 164 len ceil32(mem[_22733])] = mem[_22733 + 32 len ceil32(mem[_22733])]
            if ceil32(_23063) > _23063:
                mem[_23063 + _22643 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22643 + 168 len _23063 - 4]
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
                mem[_22643 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22643 + 196] == bool(mem[_22643 + 196])
                    if not mem[_22643 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22583
        if ext_call.return_data[0] <= dustThreshold:
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
                _16022 = mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 320 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                _16226 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                mem[(8 * ceil32(return_data.size)) + 320] = _16226
                require return_data.size >= _16022 + (32 * _16226) + 32
                mem[(8 * ceil32(return_data.size)) + 352 len 32 * _16226] = mem[(7 * ceil32(return_data.size)) + _16022 + 352 len 32 * _16226]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22526 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22586 = mem[_22526]
                _22646 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22586
                _22739 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22646 + 100] = 32
                mem[_22646 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23066 = mem[_22739]
                mem[_22646 + 164 len ceil32(mem[_22739])] = mem[_22739 + 32 len ceil32(mem[_22739])]
                if ceil32(_23066) > _23066:
                    mem[_23066 + _22646 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22646 + 168 len _23066 - 4]
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
                    mem[_22646 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22646 + 196] == bool(mem[_22646 + 196])
                        if not mem[_22646 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22586
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
                _16024 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _16228 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(8 * ceil32(return_data.size)) + 352] = _16228
                require return_data.size >= _16024 + (32 * _16228) + 32
                mem[(8 * ceil32(return_data.size)) + 384 len 32 * _16228] = mem[(7 * ceil32(return_data.size)) + _16024 + 384 len 32 * _16228]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22528 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22588 = mem[_22528]
                _22648 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22588
                _22743 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22648 + 100] = 32
                mem[_22648 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23068 = mem[_22743]
                mem[_22648 + 164 len ceil32(mem[_22743])] = mem[_22743 + 32 len ceil32(mem[_22743])]
                if ceil32(_23068) > _23068:
                    mem[_23068 + _22648 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22648 + 168 len _23068 - 4]
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
                    mem[_22648 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22648 + 196] == bool(mem[_22648 + 196])
                        if not mem[_22648 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22588
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
            _16023 = mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (7 * ceil32(return_data.size)) + return_data.size + 352 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _16227 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(8 * ceil32(return_data.size)) + 352] = _16227
            require return_data.size >= _16023 + (32 * _16227) + 32
            mem[(8 * ceil32(return_data.size)) + 384 len 32 * _16227] = mem[(7 * ceil32(return_data.size)) + _16023 + 384 len 32 * _16227]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22527 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22587 = mem[_22527]
            _22647 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22587
            _22741 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22647 + 100] = 32
            mem[_22647 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23067 = mem[_22741]
            mem[_22647 + 164 len ceil32(mem[_22741])] = mem[_22741 + 32 len ceil32(mem[_22741])]
            if ceil32(_23067) > _23067:
                mem[_23067 + _22647 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22647 + 168 len _23067 - 4]
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
                mem[_22647 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22647 + 196] == bool(mem[_22647 + 196])
                    if not mem[_22647 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22587
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
            _16030 = mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 320 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
            _16230 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
            mem[(10 * ceil32(return_data.size)) + 320] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
            require return_data.size >= _16030 + (32 * _16230) + 32
            mem[(10 * ceil32(return_data.size)) + 352 len 32 * _16230] = mem[(8 * ceil32(return_data.size)) + _16030 + 352 len 32 * _16230]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22530 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22590 = mem[_22530]
            _22650 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22590
            _22747 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22650 + 100] = 32
            mem[_22650 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23070 = mem[_22747]
            mem[_22650 + 164 len ceil32(mem[_22747])] = mem[_22747 + 32 len ceil32(mem[_22747])]
            if ceil32(_23070) > _23070:
                mem[_23070 + _22650 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22650 + 168 len _23070 - 4]
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
                mem[_22650 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22650 + 196] == bool(mem[_22650 + 196])
                    if not mem[_22650 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22590
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
            _16032 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _16232 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(10 * ceil32(return_data.size)) + 352] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require return_data.size >= _16032 + (32 * _16232) + 32
            mem[(10 * ceil32(return_data.size)) + 384 len 32 * _16232] = mem[(8 * ceil32(return_data.size)) + _16032 + 384 len 32 * _16232]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22532 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22592 = mem[_22532]
            _22652 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22592
            _22751 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22652 + 100] = 32
            mem[_22652 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23072 = mem[_22751]
            mem[_22652 + 164 len ceil32(mem[_22751])] = mem[_22751 + 32 len ceil32(mem[_22751])]
            if ceil32(_23072) > _23072:
                mem[_23072 + _22652 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22652 + 168 len _23072 - 4]
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
                mem[_22652 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22652 + 196] == bool(mem[_22652 + 196])
                    if not mem[_22652 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22592
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
        _16031 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
        _16231 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
        mem[(10 * ceil32(return_data.size)) + 352] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require return_data.size >= _16031 + (32 * _16231) + 32
        mem[(10 * ceil32(return_data.size)) + 384 len 32 * _16231] = mem[(8 * ceil32(return_data.size)) + _16031 + 384 len 32 * _16231]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22531 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22591 = mem[_22531]
        _22651 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _22591
        _22749 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_22651 + 100] = 32
        mem[_22651 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _23071 = mem[_22749]
        mem[_22651 + 164 len ceil32(mem[_22749])] = mem[_22749 + 32 len ceil32(mem[_22749])]
        if ceil32(_23071) > _23071:
            mem[_23071 + _22651 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_22651 + 168 len _23071 - 4]
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
            mem[_22651 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_22651 + 196] == bool(mem[_22651 + 196])
                if not mem[_22651 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _22591
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).strategist() with:
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
            _16038 = mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 256 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287
            _16234 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288
            mem[(10 * ceil32(return_data.size)) + 256] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
            require return_data.size >= _16038 + (32 * _16234) + 32
            mem[(10 * ceil32(return_data.size)) + 288 len 32 * _16234] = mem[(8 * ceil32(return_data.size)) + _16038 + 288 len 32 * _16234]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22534 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22594 = mem[_22534]
            _22654 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22594
            _22755 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22654 + 100] = 32
            mem[_22654 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23074 = mem[_22755]
            mem[_22654 + 164 len ceil32(mem[_22755])] = mem[_22755 + 32 len ceil32(mem[_22755])]
            if ceil32(_23074) > _23074:
                mem[_23074 + _22654 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22654 + 168 len _23074 - 4]
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
                mem[_22654 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22654 + 196] == bool(mem[_22654 + 196])
                    if not mem[_22654 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22594
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
            _16040 = mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
            _16236 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
            mem[(10 * ceil32(return_data.size)) + 288] = _16236
            require return_data.size >= _16040 + (32 * _16236) + 32
            mem[(10 * ceil32(return_data.size)) + 320 len 32 * _16236] = mem[(8 * ceil32(return_data.size)) + _16040 + 320 len 32 * _16236]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22536 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22596 = mem[_22536]
            _22656 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22596
            _22759 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22656 + 100] = 32
            mem[_22656 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23076 = mem[_22759]
            mem[_22656 + 164 len ceil32(mem[_22759])] = mem[_22759 + 32 len ceil32(mem[_22759])]
            if ceil32(_23076) > _23076:
                mem[_23076 + _22656 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22656 + 168 len _23076 - 4]
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
                mem[_22656 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22656 + 196] == bool(mem[_22656 + 196])
                    if not mem[_22656 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22596
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
        _16039 = mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + return_data.size + 288 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
        _16235 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
        mem[(10 * ceil32(return_data.size)) + 288] = _16235
        require return_data.size >= _16039 + (32 * _16235) + 32
        mem[(10 * ceil32(return_data.size)) + 320 len 32 * _16235] = mem[(8 * ceil32(return_data.size)) + _16039 + 320 len 32 * _16235]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22535 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22595 = mem[_22535]
        _22655 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _22595
        _22757 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_22655 + 100] = 32
        mem[_22655 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _23075 = mem[_22757]
        mem[_22655 + 164 len ceil32(mem[_22757])] = mem[_22757 + 32 len ceil32(mem[_22757])]
        if ceil32(_23075) > _23075:
            mem[_23075 + _22655 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_22655 + 168 len _23075 - 4]
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
            mem[_22655 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_22655 + 196] == bool(mem[_22655 + 196])
                if not mem[_22655 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _22595
    mem[(7 * ceil32(return_data.size)) + 96] = 30
    mem[(7 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 - ext_call.return_data[0] <= ext_call.return_data[0]:
        if arg1 - ext_call.return_data[0] <= dustThreshold:
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
                _16046 = mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
                require mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 320 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
                _16238 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
                mem[(10 * ceil32(return_data.size)) + 320] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
                require return_data.size >= _16046 + (32 * _16238) + 32
                mem[(10 * ceil32(return_data.size)) + 352 len 32 * _16238] = mem[(8 * ceil32(return_data.size)) + _16046 + 352 len 32 * _16238]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22538 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22598 = mem[_22538]
                _22658 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22598
                _22763 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22658 + 100] = 32
                mem[_22658 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23078 = mem[_22763]
                mem[_22658 + 164 len ceil32(mem[_22763])] = mem[_22763 + 32 len ceil32(mem[_22763])]
                if ceil32(_23078) > _23078:
                    mem[_23078 + _22658 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22658 + 168 len _23078 - 4]
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
                    mem[_22658 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22658 + 196] == bool(mem[_22658 + 196])
                        if not mem[_22658 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22598
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
                _16048 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
                require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
                _16240 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
                mem[(10 * ceil32(return_data.size)) + 352] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
                require return_data.size >= _16048 + (32 * _16240) + 32
                mem[(10 * ceil32(return_data.size)) + 384 len 32 * _16240] = mem[(8 * ceil32(return_data.size)) + _16048 + 384 len 32 * _16240]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22540 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _22600 = mem[_22540]
                _22660 = mem[64]
                mem[mem[64] + 36] = address(strategyAddress)
                mem[mem[64] + 68] = _22600
                _22767 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_22660 + 100] = 32
                mem[_22660 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _23080 = mem[_22767]
                mem[_22660 + 164 len ceil32(mem[_22767])] = mem[_22767 + 32 len ceil32(mem[_22767])]
                if ceil32(_23080) > _23080:
                    mem[_23080 + _22660 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_22660 + 168 len _23080 - 4]
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
                    mem[_22660 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22660 + 196] == bool(mem[_22660 + 196])
                        if not mem[_22660 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                return _22600
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
            _16047 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _16239 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(10 * ceil32(return_data.size)) + 352] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require return_data.size >= _16047 + (32 * _16239) + 32
            mem[(10 * ceil32(return_data.size)) + 384 len 32 * _16239] = mem[(8 * ceil32(return_data.size)) + _16047 + 384 len 32 * _16239]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22539 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22599 = mem[_22539]
            _22659 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22599
            _22765 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22659 + 100] = 32
            mem[_22659 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23079 = mem[_22765]
            mem[_22659 + 164 len ceil32(mem[_22765])] = mem[_22765 + 32 len ceil32(mem[_22765])]
            if ceil32(_23079) > _23079:
                mem[_23079 + _22659 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22659 + 168 len _23079 - 4]
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
                mem[_22659 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22659 + 196] == bool(mem[_22659 + 196])
                    if not mem[_22659 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22599
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
            _16054 = mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
            require mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (10 * ceil32(return_data.size)) + return_data.size + 320 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
            _16242 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
            require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
            mem[(11 * ceil32(return_data.size)) + 320] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
            require return_data.size >= _16054 + (32 * _16242) + 32
            mem[(11 * ceil32(return_data.size)) + 352 len 32 * _16242] = mem[(10 * ceil32(return_data.size)) + _16054 + 352 len 32 * _16242]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22542 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22602 = mem[_22542]
            _22662 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22602
            _22771 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22662 + 100] = 32
            mem[_22662 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23082 = mem[_22771]
            mem[_22662 + 164 len ceil32(mem[_22771])] = mem[_22771 + 32 len ceil32(mem[_22771])]
            if ceil32(_23082) > _23082:
                mem[_23082 + _22662 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22662 + 168 len _23082 - 4]
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
                mem[_22662 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22662 + 196] == bool(mem[_22662 + 196])
                    if not mem[_22662 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22602
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
            _16056 = mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (10 * ceil32(return_data.size)) + return_data.size + 352 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _16244 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(11 * ceil32(return_data.size)) + 352] = _16244
            require return_data.size >= _16056 + (32 * _16244) + 32
            mem[(11 * ceil32(return_data.size)) + 384 len 32 * _16244] = mem[(10 * ceil32(return_data.size)) + _16056 + 384 len 32 * _16244]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22544 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22604 = mem[_22544]
            _22664 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22604
            _22775 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22664 + 100] = 32
            mem[_22664 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23084 = mem[_22775]
            mem[_22664 + 164 len ceil32(mem[_22775])] = mem[_22775 + 32 len ceil32(mem[_22775])]
            if ceil32(_23084) > _23084:
                mem[_23084 + _22664 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22664 + 168 len _23084 - 4]
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
                mem[_22664 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22664 + 196] == bool(mem[_22664 + 196])
                    if not mem[_22664 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22604
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
        _16055 = mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 352 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
        _16243 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
        require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
        mem[(11 * ceil32(return_data.size)) + 352] = _16243
        require return_data.size >= _16055 + (32 * _16243) + 32
        mem[(11 * ceil32(return_data.size)) + 384 len 32 * _16243] = mem[(10 * ceil32(return_data.size)) + _16055 + 384 len 32 * _16243]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22543 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22603 = mem[_22543]
        _22663 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _22603
        _22773 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_22663 + 100] = 32
        mem[_22663 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _23083 = mem[_22773]
        mem[_22663 + 164 len ceil32(mem[_22773])] = mem[_22773 + 32 len ceil32(mem[_22773])]
        if ceil32(_23083) > _23083:
            mem[_23083 + _22663 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_22663 + 168 len _23083 - 4]
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
            mem[_22663 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_22663 + 196] == bool(mem[_22663 + 196])
                if not mem[_22663 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _22603
    if ext_call.return_data[0] <= dustThreshold:
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
            _16062 = mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 320 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
            _16246 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
            mem[(10 * ceil32(return_data.size)) + 320] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
            require return_data.size >= _16062 + (32 * _16246) + 32
            mem[(10 * ceil32(return_data.size)) + 352 len 32 * _16246] = mem[(8 * ceil32(return_data.size)) + _16062 + 352 len 32 * _16246]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22546 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22606 = mem[_22546]
            _22666 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22606
            _22779 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22666 + 100] = 32
            mem[_22666 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23086 = mem[_22779]
            mem[_22666 + 164 len ceil32(mem[_22779])] = mem[_22779 + 32 len ceil32(mem[_22779])]
            if ceil32(_23086) > _23086:
                mem[_23086 + _22666 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22666 + 168 len _23086 - 4]
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
                mem[_22666 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22666 + 196] == bool(mem[_22666 + 196])
                    if not mem[_22666 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22606
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
            _16064 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
            _16248 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
            mem[(10 * ceil32(return_data.size)) + 352] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require return_data.size >= _16064 + (32 * _16248) + 32
            mem[(10 * ceil32(return_data.size)) + 384 len 32 * _16248] = mem[(8 * ceil32(return_data.size)) + _16064 + 384 len 32 * _16248]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22548 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22608 = mem[_22548]
            _22668 = mem[64]
            mem[mem[64] + 36] = address(strategyAddress)
            mem[mem[64] + 68] = _22608
            _22783 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_22668 + 100] = 32
            mem[_22668 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _23088 = mem[_22783]
            mem[_22668 + 164 len ceil32(mem[_22783])] = mem[_22783 + 32 len ceil32(mem[_22783])]
            if ceil32(_23088) > _23088:
                mem[_23088 + _22668 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_22668 + 168 len _23088 - 4]
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
                mem[_22668 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_22668 + 196] == bool(mem[_22668 + 196])
                    if not mem[_22668 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            return _22608
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
        _16063 = mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + return_data.size + 352 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
        _16247 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
        mem[(10 * ceil32(return_data.size)) + 352] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require return_data.size >= _16063 + (32 * _16247) + 32
        mem[(10 * ceil32(return_data.size)) + 384 len 32 * _16247] = mem[(8 * ceil32(return_data.size)) + _16063 + 384 len 32 * _16247]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22547 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22607 = mem[_22547]
        _22667 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _22607
        _22781 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_22667 + 100] = 32
        mem[_22667 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _23087 = mem[_22781]
        mem[_22667 + 164 len ceil32(mem[_22781])] = mem[_22781 + 32 len ceil32(mem[_22781])]
        if ceil32(_23087) > _23087:
            mem[_23087 + _22667 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_22667 + 168 len _23087 - 4]
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
            mem[_22667 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_22667 + 196] == bool(mem[_22667 + 196])
                if not mem[_22667 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _22607
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
        _16070 = mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
        require mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 320 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351
        _16250 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
        require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307()
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
        mem[(11 * ceil32(return_data.size)) + 320] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
        require return_data.size >= _16070 + (32 * _16250) + 32
        mem[(11 * ceil32(return_data.size)) + 352 len 32 * _16250] = mem[(10 * ceil32(return_data.size)) + _16070 + 352 len 32 * _16250]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22550 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22610 = mem[_22550]
        _22670 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _22610
        _22787 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_22670 + 100] = 32
        mem[_22670 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _23090 = mem[_22787]
        mem[_22670 + 164 len ceil32(mem[_22787])] = mem[_22787 + 32 len ceil32(mem[_22787])]
        if ceil32(_23090) > _23090:
            mem[_23090 + _22670 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_22670 + 168 len _23090 - 4]
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
            mem[_22670 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_22670 + 196] == bool(mem[_22670 + 196])
                if not mem[_22670 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _22610
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
        _16072 = mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 352 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
        _16252 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
        require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
        mem[(11 * ceil32(return_data.size)) + 352] = _16252
        require return_data.size >= _16072 + (32 * _16252) + 32
        mem[(11 * ceil32(return_data.size)) + 384 len 32 * _16252] = mem[(10 * ceil32(return_data.size)) + _16072 + 384 len 32 * _16252]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22552 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22612 = mem[_22552]
        _22672 = mem[64]
        mem[mem[64] + 36] = address(strategyAddress)
        mem[mem[64] + 68] = _22612
        _22791 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_22672 + 100] = 32
        mem[_22672 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _23092 = mem[_22791]
        mem[_22672 + 164 len ceil32(mem[_22791])] = mem[_22791 + 32 len ceil32(mem[_22791])]
        if ceil32(_23092) > _23092:
            mem[_23092 + _22672 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_22672 + 168 len _23092 - 4]
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
            mem[_22672 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_22672 + 196] == bool(mem[_22672 + 196])
                if not mem[_22672 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return _22612
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
    _16071 = mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
    require mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (10 * ceil32(return_data.size)) + return_data.size + 352 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383
    _16251 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
    require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= test266151307()
    require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384 <= test266151307()
    mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 384
    mem[(11 * ceil32(return_data.size)) + 352] = _16251
    require return_data.size >= _16071 + (32 * _16251) + 32
    mem[(11 * ceil32(return_data.size)) + 384 len 32 * _16251] = mem[(10 * ceil32(return_data.size)) + _16071 + 384 len 32 * _16251]
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _22551 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _22611 = mem[_22551]
    _22671 = mem[64]
    mem[mem[64] + 36] = address(strategyAddress)
    mem[mem[64] + 68] = _22611
    _22789 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_22671 + 100] = 32
    mem[_22671 + 132] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    _23091 = mem[_22789]
    mem[_22671 + 164 len ceil32(mem[_22789])] = mem[_22789 + 32 len ceil32(mem[_22789])]
    if ceil32(_23091) > _23091:
        mem[_23091 + _22671 + 164] = 0
    call wantAddress with:
         gas gas_remaining wei
        args mem[_22671 + 168 len _23091 - 4]
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
        mem[_22671 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_22671 + 196] == bool(mem[_22671 + 196])
            if not mem[_22671 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return _22611
}



}
