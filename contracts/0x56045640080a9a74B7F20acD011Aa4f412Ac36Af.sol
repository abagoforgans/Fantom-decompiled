contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - panic()
#  - beforeDeposit()
#  - pause()
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address wrappedAddress;
address wantAddress;
address outputAddress;
address usdcAddress;
array of address lpTokens;
address stakingTokenAddress;
uint32 stor7;
address masterchefAddress;
uint256 stor7;
address sub_8519359dAddress;
address strategistAddress;
address feeBatchAddress;
uint32 stor11;
address vaultAddress;
uint256 stor11;
address harvesterAddress;
uint256 poolId;
mapping of uint8 stor16;
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

function lpTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < lpTokens.length
    return lpTokens[arg1]
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function PLATFORM_FEE() payable {
    return PLATFORM_FEE
}

function poolId() payable {
    return poolId
}

function usdc() payable {
    return usdcAddress
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
    return bool(uint8(stor0.field_160))
}

function stakingToken() payable {
    return stakingTokenAddress
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
    return bool(stor16[arg1])
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function MAX_FEE() payable {
    return MAX_FEE
}

function output() payable {
    return outputAddress
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
    stor16[address(arg1)] = uint8(arg2)
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

function deposit() payable {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(masterchefAddress))
        call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
    mem[100] = this.address
    mem[132] = address(masterchefAddress)
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(masterchefAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = address(masterchefAddress)
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor7)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call wantAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 0, stor7) == bool(0, Mask(224, 0, stor7))
            if not 0, Mask(224, 0, stor7):
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
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor11)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0], 0) << 288)
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
                    mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 0, stor11)
                    mem[ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 324] = 32
                    mem[ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0] - (0 / WITHDRAWAL_MAX), 0
                    mem[ceil32(return_data.size) + 456] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0] - (0 / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0] - (0 / WITHDRAWAL_MAX), 0) << 288)
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
                    mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 0, stor11)
                    mem[ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 324] = 32
                    mem[ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX), 0
                    mem[ceil32(return_data.size) + 456] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) << 288)
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
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor11)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1, 0) << 288)
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
                    mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 0, stor11)
                    mem[ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 324] = 32
                    mem[ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1 - (0 / WITHDRAWAL_MAX), 0
                    mem[ceil32(return_data.size) + 456] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1 - (0 / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1 - (0 / WITHDRAWAL_MAX), 0) << 288)
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
                    mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 0, stor11)
                    mem[ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 324] = 32
                    mem[ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX), 0
                    mem[ceil32(return_data.size) + 456] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) << 288)
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
                mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor11)
                mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 260] = 32
                mem[(2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0], 0) << 288)
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
                    mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor11)
                    mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                    mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0] - (0 / WITHDRAWAL_MAX), 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0] - (0 / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0] - (0 / WITHDRAWAL_MAX), 0) << 288)
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
                    mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor11)
                    mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                    mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX), 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) << 288)
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
                mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor11)
                mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 260] = 32
                mem[(2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1, 0) << 288)
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
                    mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor11)
                    mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                    mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1 - (0 / WITHDRAWAL_MAX), 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1 - (0 / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1 - (0 / WITHDRAWAL_MAX), 0) << 288)
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
                    mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor11)
                    mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                    mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX), 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX), 0) << 288)
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
