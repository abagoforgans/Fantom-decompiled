contract main {




// =====================  Runtime code  =====================


const sub_04f57d6f(?) = 100

const sub_16cf9467(?) = 1000

const sub_4bb4f1e5(?) = 0x4348bbb326c67742d90f87ced103badab867ffbe

const VERSION = '', 0


address owner;
uint256 stor1;
address bankAddress;
uint32 stor3;
address treasuryAddress;
uint256 stor3;
address sub_c6b3387eAddress;
uint256 rewardFee;
uint256 claimReward;
array of struct vaultStrategy;
mapping of uint256 sub_b70ae724;

function getVaultStrategy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= vaultStrategy.length:
        revert with 0, 50
    return vaultStrategy[arg1].field_256
}

function vaultLength() payable {
    return vaultStrategy.length
}

function treasury() payable {
    return address(treasuryAddress)
}

function bank() payable {
    return bankAddress
}

function rewardFee() payable {
    return rewardFee
}

function owner() payable {
    return owner
}

function sub_929060d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < vaultStrategy.length
    return vaultStrategy[arg1].field_0, vaultStrategy[arg1].field_256, bool(vaultStrategy[arg1].field_416)
}

function sub_b70ae724(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b70ae724[arg1]
}

function claimReward() payable {
    return claimReward
}

function sub_c6b3387e(?) payable {
    return sub_c6b3387eAddress
}

function _fallback() payable {
    revert
}

function getVaultConfig() payable {
    return address(treasuryAddress), bankAddress, rewardFee, claimReward
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBank(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bankAddress = arg1
}

function setRewardFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1000:
        rewardFee = arg1
}

function setClaimReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 100:
        claimReward = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(treasuryAddress) = arg1
}

function sub_17e5ed31(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c6b3387eAddress = address(arg1)
}

function setVaultStatus(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= vaultStrategy.length:
        revert with 0, 'invalid vault'
    vaultStrategy[arg1].field_416 = Mask(96, 0, arg2)
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

function compoundVault(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= vaultStrategy.length:
        revert with 0, 50
    require ext_code.size(vaultStrategy[arg1].field_256)
    call vaultStrategy[arg1].field_256.compound(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8c3a878c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(bankAddress)
    call bankAddress.0xf2fde38b with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6a5c3ed1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= vaultStrategy.length:
        revert with 0, 'invalid vault'
    vaultStrategy[arg1].field_416 = 0
    require ext_code.size(vaultStrategy[arg1].field_256)
    call vaultStrategy[arg1].field_256.0xf2fde38b with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkVaultApproved(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= vaultStrategy.length:
        revert with 0, 50
    require ext_code.size(vaultStrategy[arg1].field_0)
    staticcall vaultStrategy[arg1].field_0.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), vaultStrategy[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getBankPoolPayoutRate() payable {
    if not bankAddress:
        return 0
    if sub_b70ae724[address(msg.sender)] >= vaultStrategy.length:
        revert with 0, 50
    if vaultStrategy[stor8[address(msg.sender)]].field_256 != msg.sender:
        return 0
    require ext_code.size(bankAddress)
    staticcall bankAddress.getPoolPayoutRate(uint256 arg1) with:
            gas gas_remaining wei
           args sub_b70ae724[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function depositToBankVault(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bankAddress:
        if sub_b70ae724[address(msg.sender)] >= vaultStrategy.length:
            revert with 0, 50
        if vaultStrategy[stor8[address(msg.sender)]].field_256 == msg.sender:
            require ext_code.size(bankAddress)
            call bankAddress.depositFromVault(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_b70ae724[address(msg.sender)], arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0, 'contract'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract'
    if arg1 >= vaultStrategy.length:
        revert with 0, 50
    require ext_code.size(vaultStrategy[arg1].field_256)
    call vaultStrategy[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit EmergencyWithdraw(ext_call.return_data[0], arg1, msg.sender);
}

function setVault(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= vaultStrategy.length:
        revert with 0, 'invalid vault'
    sub_b70ae724[stor7[arg1].field_256] = -1
    vaultStrategy[arg1].field_256 = arg2
    require ext_code.size(arg2)
    staticcall arg2.depositToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    vaultStrategy[arg1].field_0 = ext_call.return_data[12 len 20]
    sub_b70ae724[address(arg2)] = arg1
}

function addVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b70ae724[address(arg1)] = vaultStrategy.length
    require ext_code.size(arg1)
    staticcall arg1.depositToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[96] = ext_call.return_data[12 len 20]
    vaultStrategy.length++
    vaultStrategy[vaultStrategy.length].field_0 = mem[108 len 20]
    vaultStrategy[vaultStrategy.length].field_256 = arg1
    vaultStrategy[vaultStrategy.length].field_416 = 1
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'contract'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract'
    if arg1 >= vaultStrategy.length:
        revert with 0, 50
    if arg2 <= 0:
        emit Withdraw(arg2, arg1, msg.sender);
    else:
        if arg1 >= vaultStrategy.length:
            revert with 0, 50
        require ext_code.size(vaultStrategy[arg1].field_256)
        staticcall vaultStrategy[arg1].field_256.getNextCompoundDelay() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg1 >= vaultStrategy.length:
                revert with 0, 50
            require ext_code.size(vaultStrategy[arg1].field_256)
            call vaultStrategy[arg1].field_256.compound(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vaultStrategy[arg1].field_256)
        call vaultStrategy[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Withdraw(ext_call.return_data[0], arg1, msg.sender);
    stor1 = 1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'contract'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract'
    if arg1 >= vaultStrategy.length:
        revert with 0, 50
    require ext_code.size(vaultStrategy[arg1].field_0)
    staticcall vaultStrategy[arg1].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, '>balance'
    if arg2:
        if arg1 >= vaultStrategy.length:
            revert with 0, 50
        require ext_code.size(vaultStrategy[arg1].field_256)
        staticcall vaultStrategy[arg1].field_256.getNextCompoundDelay() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg1 >= vaultStrategy.length:
                revert with 0, 50
            require ext_code.size(vaultStrategy[arg1].field_256)
            call vaultStrategy[arg1].field_256.compound(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vaultStrategy[arg1].field_256)
        call vaultStrategy[arg1].field_256.deposit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_c6b3387eAddress:
            require ext_code.size(sub_c6b3387eAddress)
            call sub_c6b3387eAddress.0x223f9908 with:
                 gas gas_remaining wei
                args msg.sender, 1, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg2, arg1, msg.sender);
    stor1 = 1
}

function withdrawToTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = address(treasuryAddress)
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor3)
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
