contract main {




// =====================  Runtime code  =====================


#
#  - harvest(address arg1)
#  - unpause()
#  - harvest()
#  - panic()
#  - beforeDeposit()
#  - pause()
#  - managerHarvest()
#
const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 stor0; offset 160
address owner;
address keeperAddress;
address strategistAddress;
address unirouterAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
address wantAddress;
address outputAddress;
address nativeAddress;
address inputAddress;
array of address lpTokens;
address chefAddress;
uint256 sub_363b0485;
uint256 sub_3e2d57cc;
uint256 sub_5d1eb244;
uint256 sub_a07cb27e;
uint8 sub_671f6a26;
uint8 stor20; offset 160
address stor20;
uint8 stor21; offset 160
address stor21;
uint8 stor22;
uint256 lastHarvest;

function native() payable {
    return nativeAddress
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

function chef() payable {
    return chefAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return unirouterAddress
}

function sub_363b0485(?) payable {
    return sub_363b0485
}

function sub_3d2f8c87(?) payable {
    return sub_5d1eb244
}

function sub_3e2d57cc(?) payable {
    return sub_3e2d57cc
}

function sub_4d651e4b(?) payable {
    return sub_a07cb27e
}

function paused() payable {
    return bool(stor0)
}

function sub_5d1eb244(?) payable {
    return sub_5d1eb244
}

function sub_671f6a26(?) payable {
    require sub_671f6a26 < 2
    return sub_671f6a26
}

function harvestOnDeposit() payable {
    return bool(stor22)
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function beefyFeeRecipient() payable {
    return beefyFeeRecipientAddress
}

function callFee() payable {
    return callFee
}

function sub_a07cb27e(?) payable {
    return sub_a07cb27e
}

function keeper() payable {
    return keeperAddress
}

function beefyFee() payable {
    return beefyFee
}

function input() payable {
    return inputAddress
}

function lastHarvest() payable {
    return lastHarvest
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function funds() payable {
    return address(stor20.field_0), bool(uint8(stor20.field_160)), address(stor21.field_0), bool(uint8(stor21.field_160))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
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

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setBeefyFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beefyFeeRecipientAddress = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -callFee + 888
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

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    stor22 = uint8(arg1)
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if not stor22:
        withdrawalFee = 10
    else:
        withdrawalFee = 0
}

function rewardsAvailable() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.pendingBeets(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_363b0485, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_363b0485, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function balanceOf() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_363b0485, this.address
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
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(chefAddress)
    call chefAddress.emergencyWithdraw(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args sub_363b0485, this.address
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
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(chefAddress)
        call chefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args sub_363b0485, ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_363b0485, this.address
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
        emit Deposit((2 * ext_call.return_data[0]));
}

function callReward() payable {
    require ext_code.size(chefAddress)
    call chefAddress.harvest(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args sub_363b0485, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(outputAddress)
    staticcall outputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        return 0
    require sub_671f6a26 <= 1
    require sub_671f6a26 < 2
    require ext_code.size(unirouterAddress)
    call unirouterAddress.swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) with:
         gas gas_remaining wei
        args 224, address(stor20.field_0), 0, address(stor21.field_0), 0, 1, block.timestamp, sub_5d1eb244, sub_671f6a26, outputAddress, nativeAddress, ext_call.return_data[0], 192, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0]
    if 45 * ext_call.return_data[0] / ext_call.return_data[0] != 45:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 45 * ext_call.return_data[0] / 1000:
        return 0
    require 45 * ext_call.return_data[0] / 1000
    if 45 * ext_call.return_data[0] / 1000 * callFee / 45 * ext_call.return_data[0] / 1000 != callFee:
        revert with 0, 'SafeMath: multiplication overflow'
    return (45 * ext_call.return_data[0] / 1000 * callFee / 1000)
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
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
            else:
                if stor0:
                    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * withdrawalFee / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] * withdrawalFee / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000)
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), 0) << 288)
        else:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = arg1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
            else:
                if stor0:
                    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = arg1
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                    else:
                        require arg1
                        if arg1 * withdrawalFee / arg1 != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * withdrawalFee / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = arg1 - (arg1 * withdrawalFee / 10000)
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000), 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000), 0) << 288)
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
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 132] = arg1 - ext_call.return_data[0]
        mem[ceil32(return_data.size) + 164] = this.address
        require ext_code.size(chefAddress)
        call chefAddress.withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args sub_363b0485, arg1 - ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
            else:
                if stor0:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * withdrawalFee / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] * withdrawalFee / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000)
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000), 0) << 288)
        else:
            if tx.origin == owner:
                mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = arg1
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
            else:
                if stor0:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = arg1
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = arg1
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                    else:
                        require arg1
                        if arg1 * withdrawalFee / arg1 != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * withdrawalFee / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = arg1 - (arg1 * withdrawalFee / 10000)
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000), 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000), 0) << 288)
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
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_363b0485, this.address
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
    emit Withdraw((2 * ext_call.return_data[0]));
}



}
