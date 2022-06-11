contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 stor52;
uint256 stor52; offset 8
uint256 sub_7cf0123d;
mapping of struct userInfo;
array of uint256 tierPrice;
uint256 stor55;
uint256 stor56;
uint256 stor57;
uint256 stor58;
array of uint256 sub_926bf11f;
uint256 stor65;
uint256 stor66;
uint256 stor67;
uint256 stor68;
array of uint256 withdrawFeePercent;
uint8 canEmergencyWithdraw; offset 160
uint128 stor75; offset 160
address sub_2196c151Address;
address feeRecipientAddress;
array of uint256 stor114332191156634837962569466132321615539172479032643914300051486532615039167018;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function sub_2196c151(?) payable {
    return sub_2196c151Address
}

function feeRecipient() payable {
    return feeRecipientAddress
}

function sub_7cf0123d(?) payable {
    return sub_7cf0123d
}

function tierPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 10
    return tierPrice[arg1]
}

function withdrawFeePercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < withdrawFeePercent.length
    return withdrawFeePercent[arg1].field_0
}

function owner() payable {
    return owner
}

function sub_926bf11f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 10
    return sub_926bf11f[arg1]
}

function canEmergencyWithdraw() payable {
    return bool(canEmergencyWithdraw)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    feeRecipientAddress = arg1
}

function updateEmergencyWithdrawStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor75 = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateWithdrawFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg2 >= 100:
        revert with 0, 'too high percent'
    require arg1 < withdrawFeePercent.length
    withdrawFeePercent[arg1].field_0 = arg2
}

function sub_2fad3232(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require msg.sender == owner
    if uint8(arg1) <= 0:
        revert with 0, 'invalid _tierId'
    if uint8(arg1) > 10:
        revert with 0, 'invalid _tierId'
    require uint8(arg1) < 10
    tierPrice[uint8(arg1)] = arg2
    if uint8(arg1) > sub_7cf0123d:
        uint8(stor52.field_0) = uint8(arg1)
        Mask(248, 0, stor52.field_8) = 0
}

function sub_ec72c216(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require msg.sender == owner
    if uint8(arg1) <= 0:
        revert with 0, 'invalid _tierId'
    if uint8(arg1) > 10:
        revert with 0, 'invalid _tierId'
    require uint8(arg1) < 10
    sub_926bf11f[uint8(arg1)] = arg2
    if uint8(arg1) > sub_7cf0123d:
        uint8(stor52.field_0) = uint8(arg1)
        Mask(248, 0, stor52.field_8) = 0
}

function getUserTier(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 1
    s = 0
    while uint8(idx) <= sub_7cf0123d:
        require uint8(idx) < 10
        if tierPrice[uint8(idx)]:
            require uint8(idx) < 10
            mem[0] = arg1
            mem[32] = 53
            if userInfo[address(arg1)].field_0 >= tierPrice[uint8(idx)]:
                idx = idx + 1
                s = idx
                continue 
        return uint8(s)
    return uint8(16001 * None)
}

function emergencyWithdraw() payable {
    if not canEmergencyWithdraw:
        revert with 0, 'function disabled'
    if not userInfo[msg.sender].field_0:
        revert with 0, 'nothing to withdraw'
    userInfo[msg.sender].field_0 = 0
    require ext_code.size(sub_2196c151Address)
    call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, userInfo[msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EmergencyWithdrawn(userInfo[msg.sender].field_0, msg.sender);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[msg.sender].field_0 += arg1
    userInfo[msg.sender].field_256 = block.timestamp
    require ext_code.size(sub_2196c151Address)
    call sub_2196c151Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Staked(arg1, msg.sender);
}

function __Ownable_init_unchained(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = arg1
        emit OwnershipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            owner = arg1
            emit OwnershipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            owner = arg1
            emit OwnershipTransferred(0, arg1);
            uint8(stor0.field_8) = 0
}

function calculateWithdrawFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > userInfo[address(arg1)].field_0:
        revert with 0, 'not enough amount to withdraw'
    if userInfo[address(arg1)].field_256 + (240 * 24 * 3600) < userInfo[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < userInfo[address(arg1)].field_256 + (240 * 24 * 3600):
        require 0 < withdrawFeePercent.length
        if not arg2:
            return 0
        if uint256(withdrawFeePercent.field_0) * arg2 / arg2 != uint256(withdrawFeePercent.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return (uint256(withdrawFeePercent.field_0) * arg2 / 100)
    if userInfo[address(arg1)].field_256 + (480 * 24 * 3600) < userInfo[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < userInfo[address(arg1)].field_256 + (480 * 24 * 3600):
        require 1 < withdrawFeePercent.length
        if not arg2:
            return 0
        if uint256(withdrawFeePercent.field_256) * arg2 / arg2 != uint256(withdrawFeePercent.field_256):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return (uint256(withdrawFeePercent.field_256) * arg2 / 100)
    if userInfo[address(arg1)].field_256 + (720 * 24 * 3600) < userInfo[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < userInfo[address(arg1)].field_256 + (720 * 24 * 3600):
        require 2 < withdrawFeePercent.length
        if not arg2:
            return 0
        if uint256(withdrawFeePercent.field_512) * arg2 / arg2 != uint256(withdrawFeePercent.field_512):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return (uint256(withdrawFeePercent.field_512) * arg2 / 100)
    if userInfo[address(arg1)].field_256 + (1440 * 24 * 3600) < userInfo[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < userInfo[address(arg1)].field_256 + (1440 * 24 * 3600):
        require 3 < withdrawFeePercent.length
        if not arg2:
            return 0
        if uint256(withdrawFeePercent.field_768) * arg2 / arg2 != uint256(withdrawFeePercent.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return (uint256(withdrawFeePercent.field_768) * arg2 / 100)
    if userInfo[address(arg1)].field_256 + (2160 * 24 * 3600) < userInfo[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= userInfo[address(arg1)].field_256 + (2160 * 24 * 3600):
        require 5 < withdrawFeePercent.length
        if not arg2:
            return 0
        if uint256(withdrawFeePercent.field_1280) * arg2 / arg2 != uint256(withdrawFeePercent.field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return (uint256(withdrawFeePercent.field_1280) * arg2 / 100)
    require 4 < withdrawFeePercent.length
    if not arg2:
        return 0
    if uint256(withdrawFeePercent.field_1024) * arg2 / arg2 != uint256(withdrawFeePercent.field_1024):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (uint256(withdrawFeePercent.field_1024) * arg2 / 100)
}

function sub_b4a12722(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if uint8(stor0.field_8):
        owner = address(arg3)
        emit OwnershipTransferred(0, address(arg3));
        sub_2196c151Address = address(arg1)
        stor55 = 2000 * 10^18
        stor56 = 5000 * 10^18
        stor57 = 10000 * 10^18
        stor58 = 20000 * 10^18
        stor65 = 1
        stor66 = 2
        stor67 = 5
        stor68 = 10
        sub_7cf0123d = 4
        withdrawFeePercent.length++
        storFCC5[stor74.length] = 30
        withdrawFeePercent.length++
        storFCC5[stor74.length] = 25
        withdrawFeePercent.length++
        storFCC5[stor74.length] = 20
        withdrawFeePercent.length++
        storFCC5[stor74.length] = 10
        withdrawFeePercent.length++
        storFCC5[stor74.length] = 5
        withdrawFeePercent.length++
        storFCC5[stor74.length] = 0
        feeRecipientAddress = address(arg2)
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            owner = address(arg3)
            emit OwnershipTransferred(0, address(arg3));
            sub_2196c151Address = address(arg1)
            stor55 = 2000 * 10^18
            stor56 = 5000 * 10^18
            stor57 = 10000 * 10^18
            stor58 = 20000 * 10^18
            stor65 = 1
            stor66 = 2
            stor67 = 5
            stor68 = 10
            sub_7cf0123d = 4
            withdrawFeePercent.length++
            storFCC5[stor74.length] = 30
            withdrawFeePercent.length++
            storFCC5[stor74.length] = 25
            withdrawFeePercent.length++
            storFCC5[stor74.length] = 20
            withdrawFeePercent.length++
            storFCC5[stor74.length] = 10
            withdrawFeePercent.length++
            storFCC5[stor74.length] = 5
            withdrawFeePercent.length++
            storFCC5[stor74.length] = 0
            feeRecipientAddress = address(arg2)
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                owner = address(arg3)
                emit OwnershipTransferred(0, address(arg3));
                sub_2196c151Address = address(arg1)
                stor55 = 2000 * 10^18
                stor56 = 5000 * 10^18
                stor57 = 10000 * 10^18
                stor58 = 20000 * 10^18
                stor65 = 1
                stor66 = 2
                stor67 = 5
                stor68 = 10
                sub_7cf0123d = 4
                withdrawFeePercent.length++
                storFCC5[stor74.length] = 30
                withdrawFeePercent.length++
                storFCC5[stor74.length] = 25
                withdrawFeePercent.length++
                storFCC5[stor74.length] = 20
                withdrawFeePercent.length++
                storFCC5[stor74.length] = 10
                withdrawFeePercent.length++
                storFCC5[stor74.length] = 5
                withdrawFeePercent.length++
                storFCC5[stor74.length] = 0
                feeRecipientAddress = address(arg2)
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                owner = address(arg3)
                emit OwnershipTransferred(0, address(arg3));
                uint8(stor0.field_8) = 0
                sub_2196c151Address = address(arg1)
                stor55 = 2000 * 10^18
                stor56 = 5000 * 10^18
                stor57 = 10000 * 10^18
                stor58 = 20000 * 10^18
                stor65 = 1
                stor66 = 2
                stor67 = 5
                stor68 = 10
                sub_7cf0123d = 4
                withdrawFeePercent.length++
                storFCC5[stor74.length] = 30
                withdrawFeePercent.length++
                storFCC5[stor74.length] = 25
                withdrawFeePercent.length++
                storFCC5[stor74.length] = 20
                withdrawFeePercent.length++
                storFCC5[stor74.length] = 10
                withdrawFeePercent.length++
                storFCC5[stor74.length] = 5
                withdrawFeePercent.length++
                storFCC5[stor74.length] = 0
                feeRecipientAddress = address(arg2)
                uint8(stor0.field_8) = 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > userInfo[msg.sender].field_0:
        revert with 0, 'not enough amount to withdraw'
    if arg1 > userInfo[address(msg.sender)].field_0:
        revert with 0, 'not enough amount to withdraw'
    if userInfo[address(msg.sender)].field_256 + (240 * 24 * 3600) < userInfo[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < userInfo[address(msg.sender)].field_256 + (240 * 24 * 3600):
        require 0 < withdrawFeePercent.length
        if not arg1:
            if arg1 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            userInfo[msg.sender].field_0 -= arg1
            require ext_code.size(sub_2196c151Address)
            call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args feeRecipientAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(sub_2196c151Address)
            call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Withdrawn(0, msg.sender, arg1);
        else:
            if uint256(withdrawFeePercent.field_0) * arg1 / arg1 != uint256(withdrawFeePercent.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if arg1 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            userInfo[msg.sender].field_0 -= arg1
            require ext_code.size(sub_2196c151Address)
            call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args feeRecipientAddress, uint256(withdrawFeePercent.field_0) * arg1 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if uint256(withdrawFeePercent.field_0) * arg1 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(sub_2196c151Address)
            call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1 - (uint256(withdrawFeePercent.field_0) * arg1 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Withdrawn((uint256(withdrawFeePercent.field_0) * arg1 / 100), msg.sender, arg1);
    else:
        if userInfo[address(msg.sender)].field_256 + (480 * 24 * 3600) < userInfo[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < userInfo[address(msg.sender)].field_256 + (480 * 24 * 3600):
            require 1 < withdrawFeePercent.length
            if not arg1:
                if arg1 > userInfo[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                userInfo[msg.sender].field_0 -= arg1
                require ext_code.size(sub_2196c151Address)
                call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args feeRecipientAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(sub_2196c151Address)
                call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Withdrawn(0, msg.sender, arg1);
            else:
                if uint256(withdrawFeePercent.field_256) * arg1 / arg1 != uint256(withdrawFeePercent.field_256):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if arg1 > userInfo[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                userInfo[msg.sender].field_0 -= arg1
                require ext_code.size(sub_2196c151Address)
                call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args feeRecipientAddress, uint256(withdrawFeePercent.field_256) * arg1 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if uint256(withdrawFeePercent.field_256) * arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(sub_2196c151Address)
                call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1 - (uint256(withdrawFeePercent.field_256) * arg1 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Withdrawn((uint256(withdrawFeePercent.field_256) * arg1 / 100), msg.sender, arg1);
        else:
            if userInfo[address(msg.sender)].field_256 + (720 * 24 * 3600) < userInfo[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp < userInfo[address(msg.sender)].field_256 + (720 * 24 * 3600):
                require 2 < withdrawFeePercent.length
                if not arg1:
                    if arg1 > userInfo[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    userInfo[msg.sender].field_0 -= arg1
                    require ext_code.size(sub_2196c151Address)
                    call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args feeRecipientAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(sub_2196c151Address)
                    call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit Withdrawn(0, msg.sender, arg1);
                else:
                    if uint256(withdrawFeePercent.field_512) * arg1 / arg1 != uint256(withdrawFeePercent.field_512):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if arg1 > userInfo[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    userInfo[msg.sender].field_0 -= arg1
                    require ext_code.size(sub_2196c151Address)
                    call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args feeRecipientAddress, uint256(withdrawFeePercent.field_512) * arg1 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if uint256(withdrawFeePercent.field_512) * arg1 / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(sub_2196c151Address)
                    call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1 - (uint256(withdrawFeePercent.field_512) * arg1 / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit Withdrawn((uint256(withdrawFeePercent.field_512) * arg1 / 100), msg.sender, arg1);
            else:
                if userInfo[address(msg.sender)].field_256 + (1440 * 24 * 3600) < userInfo[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp < userInfo[address(msg.sender)].field_256 + (1440 * 24 * 3600):
                    require 3 < withdrawFeePercent.length
                    if not arg1:
                        if arg1 > userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        userInfo[msg.sender].field_0 -= arg1
                        require ext_code.size(sub_2196c151Address)
                        call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args feeRecipientAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(sub_2196c151Address)
                        call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Withdrawn(0, msg.sender, arg1);
                    else:
                        if uint256(withdrawFeePercent.field_768) * arg1 / arg1 != uint256(withdrawFeePercent.field_768):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if arg1 > userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        userInfo[msg.sender].field_0 -= arg1
                        require ext_code.size(sub_2196c151Address)
                        call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args feeRecipientAddress, uint256(withdrawFeePercent.field_768) * arg1 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if uint256(withdrawFeePercent.field_768) * arg1 / 100 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(sub_2196c151Address)
                        call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1 - (uint256(withdrawFeePercent.field_768) * arg1 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Withdrawn((uint256(withdrawFeePercent.field_768) * arg1 / 100), msg.sender, arg1);
                else:
                    if userInfo[address(msg.sender)].field_256 + (2160 * 24 * 3600) < userInfo[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= userInfo[address(msg.sender)].field_256 + (2160 * 24 * 3600):
                        require 5 < withdrawFeePercent.length
                        if not arg1:
                            if arg1 > userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            userInfo[msg.sender].field_0 -= arg1
                            require ext_code.size(sub_2196c151Address)
                            call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args feeRecipientAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if 0 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(sub_2196c151Address)
                            call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit Withdrawn(0, msg.sender, arg1);
                        else:
                            if uint256(withdrawFeePercent.field_1280) * arg1 / arg1 != uint256(withdrawFeePercent.field_1280):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if arg1 > userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            userInfo[msg.sender].field_0 -= arg1
                            require ext_code.size(sub_2196c151Address)
                            call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args feeRecipientAddress, uint256(withdrawFeePercent.field_1280) * arg1 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if uint256(withdrawFeePercent.field_1280) * arg1 / 100 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(sub_2196c151Address)
                            call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1 - (uint256(withdrawFeePercent.field_1280) * arg1 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit Withdrawn((uint256(withdrawFeePercent.field_1280) * arg1 / 100), msg.sender, arg1);
                    else:
                        require 4 < withdrawFeePercent.length
                        if not arg1:
                            if arg1 > userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            userInfo[msg.sender].field_0 -= arg1
                            require ext_code.size(sub_2196c151Address)
                            call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args feeRecipientAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if 0 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(sub_2196c151Address)
                            call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit Withdrawn(0, msg.sender, arg1);
                        else:
                            if uint256(withdrawFeePercent.field_1024) * arg1 / arg1 != uint256(withdrawFeePercent.field_1024):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if arg1 > userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            userInfo[msg.sender].field_0 -= arg1
                            require ext_code.size(sub_2196c151Address)
                            call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args feeRecipientAddress, uint256(withdrawFeePercent.field_1024) * arg1 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if uint256(withdrawFeePercent.field_1024) * arg1 / 100 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            require ext_code.size(sub_2196c151Address)
                            call sub_2196c151Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1 - (uint256(withdrawFeePercent.field_1024) * arg1 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit Withdrawn((uint256(withdrawFeePercent.field_1024) * arg1 / 100), msg.sender, arg1);
}



}
