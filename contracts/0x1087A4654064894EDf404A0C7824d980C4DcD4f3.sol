contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - panic()
#  - beforeDeposit()
#  - pause()
#  - chargeFees()
#
uint8 stor0; offset 160
address owner;
address wrappedAddress;
address wantAddress;
address sub_9cbb3813Address;
address outputAddress;
address unirouterAddress;
uint32 stor6;
address masterchefAddress;
uint256 stor6;
address sub_8519359dAddress;
address strategistAddress;
address feeBatchAddress;
uint32 stor10;
address vaultAddress;
uint256 stor10;
address harvesterAddress;
uint256 poolId;
array of uint256 weight;
uint8 sub_a5a7cb60;
array of address wantToWrappedRoute;
array of address outputToWrappedRoute;
array of address sub_2183cde9;
array of address outputToWantRoute;
mapping of uint8 stor20;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 CALL_FEE;
uint256 STRATEGIST_FEE;
uint256 FEE_BATCH;
uint256 PLATFORM_FEE;

function FEE_BATCH() payable {
    return FEE_BATCH
}

function feeBatchAddress() payable {
    return feeBatchAddress
}

function outputToWrappedRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < outputToWrappedRoute.length
    return outputToWrappedRoute[arg1]
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function sub_2183cde9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_2183cde9.length
    return sub_2183cde9[arg1]
}

function unirouter() payable {
    return unirouterAddress
}

function PLATFORM_FEE() payable {
    return PLATFORM_FEE
}

function poolId() payable {
    return poolId
}

function harvester() payable {
    return harvesterAddress
}

function wrapped() payable {
    return wrappedAddress
}

function WITHDRAWAL_MAX() payable {
    return WITHDRAWAL_MAX
}

function paused() payable {
    return bool(stor0)
}

function wantToWrappedRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < wantToWrappedRoute.length
    return wantToWrappedRoute[arg1]
}

function STRATEGIST_FEE() payable {
    return STRATEGIST_FEE
}

function sub_8519359d(?) payable {
    return sub_8519359dAddress
}

function owner() payable {
    return owner
}

function CALL_FEE() payable {
    return CALL_FEE
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[arg1])
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function sub_9cbb3813(?) payable {
    return sub_9cbb3813Address
}

function sub_a5a7cb60(?) payable {
    return bool(sub_a5a7cb60)
}

function MAX_FEE() payable {
    return MAX_FEE
}

function outputToWantRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < outputToWantRoute.length
    return outputToWantRoute[arg1]
}

function output() payable {
    return outputAddress
}

function weight(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < weight.length
    return weight[arg1]
}

function masterchef() payable {
    return address(masterchefAddress)
}

function vault() payable {
    return address(vaultAddress)
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

function sub_6d54ed02(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    sub_a5a7cb60 = uint8(bool(arg1))
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unirouterAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(vaultAddress) = arg1
}

function sub_d2969d01(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeBatchAddress = address(arg1)
}

function addOrRemoveFromWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 5000:
        revert with 0, 'withdraw fee too high'
    CALL_FEE = arg1
    STRATEGIST_FEE = arg2
    WITHDRAW_FEE = arg3
    FEE_BATCH = arg4
}

function balanceOfPool() payable {
    require ext_code.size(address(masterchefAddress))
    staticcall address(masterchefAddress).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function balanceOf() payable {
    require ext_code.size(address(masterchefAddress))
    staticcall address(masterchefAddress).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function retireStrat() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).emergencyWithdraw(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(wantAddress)
    call wantAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(masterchefAddress)
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(masterchefAddress)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            require ext_code.size(address(masterchefAddress))
            call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args poolId, ext_call.return_data[0], this.address
        else:
            mem[(2 * ceil32(return_data.size)) + 132] = address(masterchefAddress)
            mem[(2 * ceil32(return_data.size)) + 164] = 0
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor6)
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + 264] = this.address
                mem[(2 * ceil32(return_data.size)) + 296] = address(masterchefAddress)
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(masterchefAddress)
                mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(4 * ceil32(return_data.size)) + 296] = address(masterchefAddress)
                mem[(4 * ceil32(return_data.size)) + 328] = -1
                mem[(4 * ceil32(return_data.size)) + 260] = 68
                mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                mem[(4 * ceil32(return_data.size)) + 360] = 32
                mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, address(masterchefAddress), -1, 0
                mem[(4 * ceil32(return_data.size)) + 492] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(masterchefAddress), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(masterchefAddress), -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                        if not mem[(4 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(masterchefAddress))
                call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args poolId, ext_call.return_data[0], this.address
            else:
                mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(masterchefAddress)
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(masterchefAddress)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(masterchefAddress)
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(masterchefAddress), -1, 0
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(masterchefAddress), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(masterchefAddress), -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(masterchefAddress))
                    call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0], this.address
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 430] = 32
                        mem[(8 * ceil32(return_data.size)) + 462] = 32
                        mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 426
                           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                        if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                            mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 430] = 32
                            mem[(8 * ceil32(return_data.size)) + 462] = 42
                            mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                            mem[(8 * ceil32(return_data.size)) + 526] = 'ot succeed'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 426
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(8 * ceil32(return_data.size)) + 430] = poolId
                    mem[(8 * ceil32(return_data.size)) + 462] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 494] = this.address
                    require ext_code.size(address(masterchefAddress))
                    call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function harvest() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if bool(stor20[address(msg.sender)]) != 1:
        revert with 0, 'You are not whitelisted'
    if ext_code.size(msg.sender) > 0:
        revert with 0, '!contract'
    mem[132] = this.address
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).harvest(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(outputAddress)
    staticcall outputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = poolId
    mem[ceil32(return_data.size) + 128] = 0
    mem[ceil32(return_data.size) + 160] = outputAddress
    mem[ceil32(return_data.size) + 192] = wantAddress
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 448] = 0
    mem[ceil32(return_data.size) + 416] = 32
    mem[ceil32(return_data.size) + 256] = ceil32(return_data.size) + 416
    mem[ceil32(return_data.size) + 288] = this.address
    mem[ceil32(return_data.size) + 320] = 0
    mem[ceil32(return_data.size) + 352] = this.address
    mem[ceil32(return_data.size) + 384] = 0
    if block.timestamp + 600 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(return_data.size) + 484] = 224
    mem[ceil32(return_data.size) + 708] = poolId
    mem[ceil32(return_data.size) + 740] = 0
    mem[ceil32(return_data.size) + 772] = outputAddress
    mem[ceil32(return_data.size) + 804] = wantAddress
    mem[ceil32(return_data.size) + 836] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 868] = 192
    mem[ceil32(return_data.size) + 900] = 32
    mem[ceil32(return_data.size) + 932] = 0
    mem[ceil32(return_data.size) + 516] = uint64(this.address) << 96
    mem[ceil32(return_data.size) + 548] = 0
    mem[ceil32(return_data.size) + 580] = uint64(this.address) << 96
    mem[ceil32(return_data.size) + 612] = 0
    mem[ceil32(return_data.size) + 644] = 1
    mem[ceil32(return_data.size) + 676] = block.timestamp + 600
    require ext_code.size(sub_8519359dAddress)
    call sub_8519359dAddress.0xe3e8a0a3 with:
         gas gas_remaining wei
        args 224, this.address << 192, 0, this.address << 192, 0, 1, block.timestamp + 600, poolId, 0, outputAddress, wantAddress, ext_call.return_data[0], 192, ''
    mem[ceil32(return_data.size) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if stor0:
        mem[(2 * ceil32(return_data.size)) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 484] = 32
        mem[(2 * ceil32(return_data.size)) + 516] = 16
        mem[(2 * ceil32(return_data.size)) + 548] = 'Pausable: paused'
        revert with memory
          from (2 * ceil32(return_data.size)) + 480
           len ceil32(return_data.size) + 100
    mem[(2 * ceil32(return_data.size)) + 484] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 484 len ceil32(return_data.size) + 32]
    mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        mem[(4 * ceil32(return_data.size)) + 484] = this.address
        mem[(4 * ceil32(return_data.size)) + 516] = address(masterchefAddress)
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 484 len (5 * ceil32(return_data.size)) + 64]
        mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            require ext_code.size(address(masterchefAddress))
            call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args poolId, ext_call.return_data[0], address(this.address), mem[(6 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
        else:
            mem[(6 * ceil32(return_data.size)) + 516] = address(masterchefAddress)
            mem[(6 * ceil32(return_data.size)) + 548] = 0
            mem[(6 * ceil32(return_data.size)) + 480] = (8 * ceil32(return_data.size)) + 68
            mem[(6 * ceil32(return_data.size)) + 516 len 28] = Mask(224, 0, stor6)
            mem[(6 * ceil32(return_data.size)) + 512 len 4] = approve(address arg1, uint256 arg2)
            mem[(6 * ceil32(return_data.size)) + 580] = 32
            mem[(6 * ceil32(return_data.size)) + 612] = 'SafeERC20: low-level call failed'
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 644 len floor32((8 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0, mem[(6 * ceil32(return_data.size)) + 580 len floor32((8 * ceil32(return_data.size)) + 99) - 68]
            if floor32((8 * ceil32(return_data.size)) + 99) > (8 * ceil32(return_data.size)) + 68:
                mem[(15 * ceil32(return_data.size)) + 712] = 0
            call wantAddress.mem[(6 * ceil32(return_data.size)) + 644 len 4] with:
                 gas gas_remaining wei
                args mem[(6 * ceil32(return_data.size)) + 648 len (9 * ceil32(return_data.size)) + 64]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                    if not 0, address(this.address) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(6 * ceil32(return_data.size)) + 648] = this.address
                mem[(6 * ceil32(return_data.size)) + 680] = address(masterchefAddress)
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(masterchefAddress)
                mem[(6 * ceil32(return_data.size)) + 644] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(7 * ceil32(return_data.size)) + 680] = address(masterchefAddress)
                mem[(7 * ceil32(return_data.size)) + 712] = -1
                mem[(7 * ceil32(return_data.size)) + 644] = 68
                mem[(7 * ceil32(return_data.size)) + 676 len 4] = approve(address arg1, uint256 arg2)
                mem[(7 * ceil32(return_data.size)) + 744] = 32
                mem[(7 * ceil32(return_data.size)) + 776] = 'SafeERC20: low-level call failed'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 808 len 96] = 0, address(masterchefAddress), -1, 0
                mem[(7 * ceil32(return_data.size)) + 876] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(masterchefAddress), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(masterchefAddress), -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                        if not 0, address(this.address) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 840] == bool(mem[(7 * ceil32(return_data.size)) + 840])
                        if not mem[(7 * ceil32(return_data.size)) + 840]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(masterchefAddress))
                call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args poolId, ext_call.return_data[0], this.address
            else:
                mem[(6 * ceil32(return_data.size)) + 644] = return_data.size
                mem[(6 * ceil32(return_data.size)) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 676] == bool(mem[(6 * ceil32(return_data.size)) + 676])
                    if not mem[(6 * ceil32(return_data.size)) + 676]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] = this.address
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = address(masterchefAddress)
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(masterchefAddress)
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 645] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = address(masterchefAddress)
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = -1
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 645] = 68
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 677 len 4] = approve(address arg1, uint256 arg2)
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = 32
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = 'SafeERC20: low-level call failed'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 809 len 96] = 0, address(masterchefAddress), -1, 0
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 877] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, address(masterchefAddress), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(masterchefAddress), -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                        if not 0, address(this.address) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(masterchefAddress))
                    call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0], this.address
                else:
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(10 * ceil32(return_data.size)) + 910 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 841])
                        if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 841]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[(10 * ceil32(return_data.size)) + 942 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(address(masterchefAddress))
                    call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0], address(this.address), mem[(10 * ceil32(return_data.size)) + 910 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor10)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if not ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 96] = 26
                    mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require WITHDRAWAL_MAX
                    mem[ceil32(return_data.size) + 160] = 30
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                    if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[ceil32(return_data.size) + 260] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 292] = ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)
                    mem[ceil32(return_data.size) + 224] = 68
                    mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 0, stor10)
                    mem[ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 324] = 32
                    mem[ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - (0 / WITHDRAWAL_MAX), 0
                    mem[ceil32(return_data.size) + 456] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - (0 / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - (0 / WITHDRAWAL_MAX), 0) << 288)
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * WITHDRAW_FEE / ext_call.return_data[0] != WITHDRAW_FEE:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 96] = 26
                    mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require WITHDRAWAL_MAX
                    mem[ceil32(return_data.size) + 160] = 30
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[ceil32(return_data.size) + 260] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 292] = ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX)
                    mem[ceil32(return_data.size) + 224] = 68
                    mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 0, stor10)
                    mem[ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 324] = 32
                    mem[ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX), 0
                    mem[ceil32(return_data.size) + 456] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 420] == bool(mem[ceil32(return_data.size) + 420])
                        if not mem[ceil32(return_data.size) + 420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = arg1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor10)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if not arg1:
                    mem[ceil32(return_data.size) + 96] = 26
                    mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require WITHDRAWAL_MAX
                    mem[ceil32(return_data.size) + 160] = 30
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                    if 0 / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[ceil32(return_data.size) + 260] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 292] = arg1 - (0 / WITHDRAWAL_MAX)
                    mem[ceil32(return_data.size) + 224] = 68
                    mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 0, stor10)
                    mem[ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 324] = 32
                    mem[ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1 - (0 / WITHDRAWAL_MAX), 0
                    mem[ceil32(return_data.size) + 456] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1 - (0 / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1 - (0 / WITHDRAWAL_MAX), 0) << 288)
                else:
                    require arg1
                    if arg1 * WITHDRAW_FEE / arg1 != WITHDRAW_FEE:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 96] = 26
                    mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require WITHDRAWAL_MAX
                    mem[ceil32(return_data.size) + 160] = 30
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                    if arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[ceil32(return_data.size) + 260] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 292] = arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX)
                    mem[ceil32(return_data.size) + 224] = 68
                    mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 0, stor10)
                    mem[ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 324] = 32
                    mem[ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX), 0
                    mem[ceil32(return_data.size) + 456] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 420] == bool(mem[ceil32(return_data.size) + 420])
                        if not mem[ceil32(return_data.size) + 420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 96] = 30
        mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 196] = arg1 - ext_call.return_data[0]
        mem[ceil32(return_data.size) + 228] = this.address
        require ext_code.size(address(masterchefAddress))
        call address(masterchefAddress).withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args poolId, arg1 - ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 164] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                mem[(2 * ceil32(return_data.size)) + 196] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 160] = 68
                mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor10)
                mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 260] = 32
                mem[(2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 356] == bool(mem[(2 * ceil32(return_data.size)) + 356])
                        if not mem[(2 * ceil32(return_data.size)) + 356]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require WITHDRAWAL_MAX
                    mem[(2 * ceil32(return_data.size)) + 224] = 30
                    mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                    if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[(2 * ceil32(return_data.size)) + 324] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)
                    mem[(2 * ceil32(return_data.size)) + 288] = 68
                    mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor10)
                    mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                    mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - (0 / WITHDRAWAL_MAX), 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - (0 / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - (0 / WITHDRAWAL_MAX), 0) << 288)
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * WITHDRAW_FEE / ext_call.return_data[0] != WITHDRAW_FEE:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require WITHDRAWAL_MAX
                    mem[(2 * ceil32(return_data.size)) + 224] = 30
                    mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[(2 * ceil32(return_data.size)) + 324] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX)
                    mem[(2 * ceil32(return_data.size)) + 288] = 68
                    mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor10)
                    mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                    mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX), 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 484] == bool(mem[(2 * ceil32(return_data.size)) + 484])
                        if not mem[(2 * ceil32(return_data.size)) + 484]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if tx.origin == owner:
                mem[(2 * ceil32(return_data.size)) + 196] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 228] = arg1
                mem[(2 * ceil32(return_data.size)) + 160] = 68
                mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor10)
                mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 260] = 32
                mem[(2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 356] == bool(mem[(2 * ceil32(return_data.size)) + 356])
                        if not mem[(2 * ceil32(return_data.size)) + 356]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if not arg1:
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require WITHDRAWAL_MAX
                    mem[(2 * ceil32(return_data.size)) + 224] = 30
                    mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                    if 0 / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[(2 * ceil32(return_data.size)) + 324] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 356] = arg1 - (0 / WITHDRAWAL_MAX)
                    mem[(2 * ceil32(return_data.size)) + 288] = 68
                    mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor10)
                    mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                    mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1 - (0 / WITHDRAWAL_MAX), 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1 - (0 / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1 - (0 / WITHDRAWAL_MAX), 0) << 288)
                else:
                    require arg1
                    if arg1 * WITHDRAW_FEE / arg1 != WITHDRAW_FEE:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require WITHDRAWAL_MAX
                    mem[(2 * ceil32(return_data.size)) + 224] = 30
                    mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                    if arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[(2 * ceil32(return_data.size)) + 324] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 356] = arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX)
                    mem[(2 * ceil32(return_data.size)) + 288] = 68
                    mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor10)
                    mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                    mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX), 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 484] == bool(mem[(2 * ceil32(return_data.size)) + 484])
                        if not mem[(2 * ceil32(return_data.size)) + 484]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
