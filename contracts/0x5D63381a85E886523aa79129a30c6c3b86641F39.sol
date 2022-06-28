contract main {




// =====================  Runtime code  =====================


#
#  - leaveStaking(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - enterStaking(uint256 arg1, address arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const MAXIMUM_REFERRAL_COMMISSION_RATE = 1000

const BONUS_MULTIPLIER = 1

const MAXIMUM_HARVEST_INTERVAL = (336 * 24 * 3600)


address owner;
uint256 stor1;
address sub_0f203e79Address;
address feeAddress;
uint256 sub_16364770;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 sub_1ef80fcc;
uint256 totalLockedUpRewards;
uint16 referralCommissionRate; offset 160
address sub_d891e6e9Address;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint16 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699765;

function poolLength() payable {
    return poolInfo.length
}

function sub_0f203e79(?) payable {
    return sub_0f203e79Address
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function sub_16364770(?) payable {
    return sub_16364770
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_1ef80fcc(?) payable {
    return sub_1ef80fcc
}

function feeAddress() payable {
    return feeAddress
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function referralCommissionRate() payable {
    return referralCommissionRate
}

function sub_d891e6e9(?) payable {
    return sub_d891e6e9Address
}

function _fallback() payable {
    revert
}

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return block.timestamp >= userInfo[arg1][address(arg2)].field_768
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_fb5d93db(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_d891e6e9Address = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setFeeAddress: ZERO'
    feeAddress = arg1
}

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if poolInfo[idx].field_512 <= arg1:
            poolInfo[idx].field_512 = arg1
        idx = idx + 1
        continue 
    startBlock = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (arg2 - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setReferralCommissionRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x73736574526566657272616c436f6d6d697373696f6e526174653a20696e76616c696420726566657272616c20636f6d6d697373696f6e207261746520626173697320706f696e74,
                    mem[236 len 24]
    referralCommissionRate = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require arg1 < poolInfo.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    userInfo[arg1][msg.sender].field_512 = 0
    userInfo[arg1][msg.sender].field_768 = 0
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1:
            if ext_call.return_data[0]:
                if poolInfo[arg1].field_256:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_0f203e79Address)
                        call sub_0f203e79Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not block.number - poolInfo[arg1].field_512:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_16364770) - (poolInfo[arg1].field_512 * sub_16364770) / block.number - poolInfo[arg1].field_512 != sub_16364770:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.number * sub_16364770) - (poolInfo[arg1].field_512 * sub_16364770):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_0f203e79Address)
                                call sub_0f203e79Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / (block.number * sub_16364770) - (poolInfo[arg1].field_512 * sub_16364770) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_0f203e79Address)
                                call sub_0f203e79Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        else:
            if sub_1ef80fcc:
                if poolInfo[arg1].field_256:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_0f203e79Address)
                        call sub_0f203e79Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            if not sub_1ef80fcc:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / sub_1ef80fcc
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not sub_1ef80fcc:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                    else:
                        if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not block.number - poolInfo[arg1].field_512:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if not sub_1ef80fcc:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / sub_1ef80fcc
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not sub_1ef80fcc:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                        else:
                            if (block.number * sub_16364770) - (poolInfo[arg1].field_512 * sub_16364770) / block.number - poolInfo[arg1].field_512 != sub_16364770:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.number * sub_16364770) - (poolInfo[arg1].field_512 * sub_16364770):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_0f203e79Address)
                                call sub_0f203e79Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    if not sub_1ef80fcc:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / sub_1ef80fcc
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not sub_1ef80fcc:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                            else:
                                if (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / (block.number * sub_16364770) - (poolInfo[arg1].field_512 * sub_16364770) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_0f203e79Address)
                                call sub_0f203e79Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not sub_1ef80fcc:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / sub_1ef80fcc
                                else:
                                    if 10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not sub_1ef80fcc:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / sub_1ef80fcc
        poolInfo[arg1].field_512 = block.number
}

function sub_739059fd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if arg1:
        if not ext_call.return_data[0]:
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 + ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not block.number - poolInfo[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 + ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_16364770) - (poolInfo[arg1].field_512 * sub_16364770) / block.number - poolInfo[arg1].field_512 != sub_16364770:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_16364770) - (poolInfo[arg1].field_512 * sub_16364770):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 + ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / (block.number * sub_16364770) - (poolInfo[arg1].field_512 * sub_16364770) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not sub_1ef80fcc:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not sub_1ef80fcc:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / sub_1ef80fcc) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_1ef80fcc:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not block.number - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not sub_1ef80fcc:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / sub_1ef80fcc) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_1ef80fcc:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_16364770) - (poolInfo[arg1].field_512 * sub_16364770) / block.number - poolInfo[arg1].field_512 != sub_16364770:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_16364770) - (poolInfo[arg1].field_512 * sub_16364770):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not sub_1ef80fcc:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / sub_1ef80fcc) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_1ef80fcc:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / (block.number * sub_16364770) - (poolInfo[arg1].field_512 * sub_16364770) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint:
        if not sub_1ef80fcc:
            revert with 0, 'SafeMath: division by zero'
        if (0 / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (0 / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / sub_1ef80fcc) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((0 / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_1ef80fcc:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / sub_1ef80fcc) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
    if (10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / sub_1ef80fcc) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * (block.number * sub_16364770 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16364770 * poolInfo[arg1].field_256) / totalAllocPoint / sub_1ef80fcc * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if idx:
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _205 = mem[64]
            mem[64] = mem[64] + 64
            mem[_205] = 30
            mem[_205 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _207 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _207 + 68] = mem[idx + _205 + 32]
                    idx = idx + 32
                    continue 
                mem[_207 + 68] = mem[_207 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _207 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_229] = 26
                mem[_229 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _229 + 32]
                        idx = idx + 32
                        continue 
                else:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0f203e79Address)
                    call sub_0f203e79Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_357] = 26
                        mem[_357 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _357 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _363 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_363] = 26
                        mem[_363 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _363 + 32]
                            idx = idx + 32
                            continue 
            else:
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _232 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_232] = 26
                    mem[_232 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _232 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_0f203e79Address)
                        call sub_0f203e79Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _362 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_362] = 26
                            mem[_362 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _362 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _370 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_370] = 26
                            mem[_370 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _370 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) / block.number - poolInfo[idx].field_512 != sub_16364770:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770):
                        _234 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_234] = 26
                        mem[_234 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _234 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _369 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_369] = 26
                                mem[_369 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _369 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _379 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_379] = 26
                                mem[_379 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _379 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _241 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_241] = 26
                        mem[_241 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _241 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint:
                                _378 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_378] = 26
                                mem[_378 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _378 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _394 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_394] = 26
                                mem[_394 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _394 + 32]
                                    idx = idx + 32
                                    continue 
        else:
            if not sub_1ef80fcc:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _206 = mem[64]
            mem[64] = mem[64] + 64
            mem[_206] = 30
            mem[_206 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _210 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _210 + 68] = mem[idx + _206 + 32]
                    idx = idx + 32
                    continue 
                mem[_210 + 68] = mem[_210 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _210 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _233 = mem[64]
                mem[64] = mem[64] + 64
                mem[_233] = 26
                mem[_233 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _233 + 32]
                        idx = idx + 32
                        continue 
                else:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0f203e79Address)
                    call sub_0f203e79Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _366 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_366] = 26
                        mem[_366 + 32] = 'SafeMath: division by zero'
                        if sub_1ef80fcc:
                            if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _366 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _377 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_377] = 26
                        mem[_377 + 32] = 'SafeMath: division by zero'
                        if sub_1ef80fcc:
                            if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _377 + 32]
                            idx = idx + 32
                            continue 
            else:
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _240 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_240] = 26
                    mem[_240 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _240 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_0f203e79Address)
                        call sub_0f203e79Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _376 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_376] = 26
                            mem[_376 + 32] = 'SafeMath: division by zero'
                            if sub_1ef80fcc:
                                if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _376 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _390 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_390] = 26
                            mem[_390 + 32] = 'SafeMath: division by zero'
                            if sub_1ef80fcc:
                                if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _390 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) / block.number - poolInfo[idx].field_512 != sub_16364770:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770):
                        _246 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_246] = 26
                        mem[_246 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _246 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _389 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_389] = 26
                                mem[_389 + 32] = 'SafeMath: division by zero'
                                if sub_1ef80fcc:
                                    if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _389 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _406 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_406] = 26
                                mem[_406 + 32] = 'SafeMath: division by zero'
                                if sub_1ef80fcc:
                                    if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _406 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _256 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_256] = 26
                        mem[_256 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _256 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint:
                                _405 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_405] = 26
                                mem[_405 + 32] = 'SafeMath: division by zero'
                                if sub_1ef80fcc:
                                    if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _405 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _428 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_428] = 26
                                mem[_428 + 32] = 'SafeMath: division by zero'
                                if sub_1ef80fcc:
                                    if (10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / sub_1ef80fcc
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _428 + 32]
                                    idx = idx + 32
                                    continue 
        revert with 0, 'SafeMath: division by zero'
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if idx:
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _213 = mem[64]
            mem[64] = mem[64] + 64
            mem[_213] = 30
            mem[_213 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _215 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _215 + 68] = mem[idx + _213 + 32]
                    idx = idx + 32
                    continue 
                mem[_215 + 68] = mem[_215 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _215 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _237 = mem[64]
                mem[64] = mem[64] + 64
                mem[_237] = 26
                mem[_237 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _237 + 32]
                        idx = idx + 32
                        continue 
                else:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0f203e79Address)
                    call sub_0f203e79Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _365 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_365] = 26
                        mem[_365 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _365 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _371 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_371] = 26
                        mem[_371 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _371 + 32]
                            idx = idx + 32
                            continue 
            else:
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _240 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_240] = 26
                    mem[_240 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _240 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_0f203e79Address)
                        call sub_0f203e79Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _370 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_370] = 26
                            mem[_370 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _370 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _378 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_378] = 26
                            mem[_378 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _378 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) / block.number - poolInfo[idx].field_512 != sub_16364770:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770):
                        _242 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_242] = 26
                        mem[_242 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _242 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _377 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_377] = 26
                                mem[_377 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _377 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _387 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_387] = 26
                                mem[_387 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _387 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _249 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_249] = 26
                        mem[_249 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _249 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint:
                                _386 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_386] = 26
                                mem[_386 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _386 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _402 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_402] = 26
                                mem[_402 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _402 + 32]
                                    idx = idx + 32
                                    continue 
        else:
            if not sub_1ef80fcc:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _214 = mem[64]
            mem[64] = mem[64] + 64
            mem[_214] = 30
            mem[_214 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _218 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _218 + 68] = mem[idx + _214 + 32]
                    idx = idx + 32
                    continue 
                mem[_218 + 68] = mem[_218 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _218 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _241 = mem[64]
                mem[64] = mem[64] + 64
                mem[_241] = 26
                mem[_241 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _241 + 32]
                        idx = idx + 32
                        continue 
                else:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_0f203e79Address)
                    call sub_0f203e79Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _374 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_374] = 26
                        mem[_374 + 32] = 'SafeMath: division by zero'
                        if sub_1ef80fcc:
                            if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _374 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _385 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_385] = 26
                        mem[_385 + 32] = 'SafeMath: division by zero'
                        if sub_1ef80fcc:
                            if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _385 + 32]
                            idx = idx + 32
                            continue 
            else:
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _248 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_248] = 26
                    mem[_248 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _248 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_0f203e79Address)
                        call sub_0f203e79Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _384 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_384] = 26
                            mem[_384 + 32] = 'SafeMath: division by zero'
                            if sub_1ef80fcc:
                                if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _384 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _398 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_398] = 26
                            mem[_398 + 32] = 'SafeMath: division by zero'
                            if sub_1ef80fcc:
                                if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _398 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) / block.number - poolInfo[idx].field_512 != sub_16364770:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770):
                        _254 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_254] = 26
                        mem[_254 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _254 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _397 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_397] = 26
                                mem[_397 + 32] = 'SafeMath: division by zero'
                                if sub_1ef80fcc:
                                    if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _397 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _414 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_414] = 26
                                mem[_414 + 32] = 'SafeMath: division by zero'
                                if sub_1ef80fcc:
                                    if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _414 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _264 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_264] = 26
                        mem[_264 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _264 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint:
                                _413 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_413] = 26
                                mem[_413 + 32] = 'SafeMath: division by zero'
                                if sub_1ef80fcc:
                                    if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _413 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _436 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_436] = 26
                                mem[_436 + 32] = 'SafeMath: division by zero'
                                if sub_1ef80fcc:
                                    if (10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / sub_1ef80fcc
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _436 + 32]
                                    idx = idx + 32
                                    continue 
        revert with 0, 'SafeMath: division by zero'
    emit EmissionRateUpdated(sub_16364770, arg1, msg.sender);
    sub_16364770 = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4 > 336 * 24 * 3600:
        revert with 0, 'set: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if idx:
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _258 = mem[64]
                mem[64] = mem[64] + 64
                mem[_258] = 30
                mem[_258 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _261 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _261 + 68] = mem[idx + _258 + 32]
                        idx = idx + 32
                        continue 
                    mem[_261 + 68] = mem[_261 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _261 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _283 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_283] = 26
                    mem[_283 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _283 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_0f203e79Address)
                        call sub_0f203e79Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _411 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_411] = 26
                            mem[_411 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _411 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _417 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_417] = 26
                            mem[_417 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _417 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not block.number - poolInfo[idx].field_512:
                        _286 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_286] = 26
                        mem[_286 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _286 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _416 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_416] = 26
                                mem[_416 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _416 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _424 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_424] = 26
                                mem[_424 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _424 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) / block.number - poolInfo[idx].field_512 != sub_16364770:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770):
                            _288 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_288] = 26
                            mem[_288 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _288 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_0f203e79Address)
                                call sub_0f203e79Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    _423 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_423] = 26
                                    mem[_423 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _423 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _433 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_433] = 26
                                    mem[_433 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _433 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _295 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_295] = 26
                            mem[_295 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _295 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_0f203e79Address)
                                call sub_0f203e79Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint:
                                    _432 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_432] = 26
                                    mem[_432 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _432 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _448 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_448] = 26
                                    mem[_448 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _448 + 32]
                                        idx = idx + 32
                                        continue 
            else:
                if not sub_1ef80fcc:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _260 = mem[64]
                mem[64] = mem[64] + 64
                mem[_260] = 30
                mem[_260 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _264 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _264 + 68] = mem[idx + _260 + 32]
                        idx = idx + 32
                        continue 
                    mem[_264 + 68] = mem[_264 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _264 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_287] = 26
                    mem[_287 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _287 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_0f203e79Address)
                        call sub_0f203e79Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _420 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_420] = 26
                            mem[_420 + 32] = 'SafeMath: division by zero'
                            if sub_1ef80fcc:
                                if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _420 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _431 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_431] = 26
                            mem[_431 + 32] = 'SafeMath: division by zero'
                            if sub_1ef80fcc:
                                if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _431 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not block.number - poolInfo[idx].field_512:
                        _294 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_294] = 26
                        mem[_294 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _294 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _430 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_430] = 26
                                mem[_430 + 32] = 'SafeMath: division by zero'
                                if sub_1ef80fcc:
                                    if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _430 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _444 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_444] = 26
                                mem[_444 + 32] = 'SafeMath: division by zero'
                                if sub_1ef80fcc:
                                    if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _444 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) / block.number - poolInfo[idx].field_512 != sub_16364770:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770):
                            _300 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_300] = 26
                            mem[_300 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _300 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_0f203e79Address)
                                call sub_0f203e79Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    _443 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_443] = 26
                                    mem[_443 + 32] = 'SafeMath: division by zero'
                                    if sub_1ef80fcc:
                                        if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _443 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _460 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_460] = 26
                                    mem[_460 + 32] = 'SafeMath: division by zero'
                                    if sub_1ef80fcc:
                                        if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _460 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _310 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_310] = 26
                            mem[_310 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _310 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_0f203e79Address)
                                call sub_0f203e79Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint:
                                    _459 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_459] = 26
                                    mem[_459 + 32] = 'SafeMath: division by zero'
                                    if sub_1ef80fcc:
                                        if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _459 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _482 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_482] = 26
                                    mem[_482 + 32] = 'SafeMath: division by zero'
                                    if sub_1ef80fcc:
                                        if (10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / sub_1ef80fcc
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _482 + 32]
                                        idx = idx + 32
                                        continue 
            revert with 0, 'SafeMath: division by zero'
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
    poolInfo[arg1].field_1280 = arg4
}

function add(uint256 arg1, address arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e7400,
                    mem[201 len 27]
    if arg4 > 336 * 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if idx:
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _267 = mem[64]
                mem[64] = mem[64] + 64
                mem[_267] = 30
                mem[_267 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _269 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _269 + 68] = mem[idx + _267 + 32]
                        idx = idx + 32
                        continue 
                    mem[_269 + 68] = mem[_269 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _269 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _291 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_291] = 26
                    mem[_291 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _291 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_0f203e79Address)
                        call sub_0f203e79Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _419 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_419] = 26
                            mem[_419 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _419 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _425 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_425] = 26
                            mem[_425 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _425 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not block.number - poolInfo[idx].field_512:
                        _294 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_294] = 26
                        mem[_294 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _294 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _424 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_424] = 26
                                mem[_424 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _424 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _432 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_432] = 26
                                mem[_432 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _432 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) / block.number - poolInfo[idx].field_512 != sub_16364770:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770):
                            _296 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_296] = 26
                            mem[_296 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _296 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_0f203e79Address)
                                call sub_0f203e79Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    _431 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_431] = 26
                                    mem[_431 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _431 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _441 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_441] = 26
                                    mem[_441 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _441 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _303 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_303] = 26
                            mem[_303 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _303 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_0f203e79Address)
                                call sub_0f203e79Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint:
                                    _440 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_440] = 26
                                    mem[_440 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _440 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _456 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_456] = 26
                                    mem[_456 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _456 + 32]
                                        idx = idx + 32
                                        continue 
            else:
                if not sub_1ef80fcc:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _268 = mem[64]
                mem[64] = mem[64] + 64
                mem[_268] = 30
                mem[_268 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _272 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _272 + 68] = mem[idx + _268 + 32]
                        idx = idx + 32
                        continue 
                    mem[_272 + 68] = mem[_272 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _272 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_295] = 26
                    mem[_295 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _295 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_0f203e79Address)
                        call sub_0f203e79Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            _428 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_428] = 26
                            mem[_428 + 32] = 'SafeMath: division by zero'
                            if sub_1ef80fcc:
                                if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _428 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _439 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_439] = 26
                            mem[_439 + 32] = 'SafeMath: division by zero'
                            if sub_1ef80fcc:
                                if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _439 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not block.number - poolInfo[idx].field_512:
                        _302 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_302] = 26
                        mem[_302 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _302 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_0f203e79Address)
                            call sub_0f203e79Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                _438 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_438] = 26
                                mem[_438 + 32] = 'SafeMath: division by zero'
                                if sub_1ef80fcc:
                                    if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _438 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _452 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_452] = 26
                                mem[_452 + 32] = 'SafeMath: division by zero'
                                if sub_1ef80fcc:
                                    if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _452 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) / block.number - poolInfo[idx].field_512 != sub_16364770:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770):
                            _308 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_308] = 26
                            mem[_308 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _308 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_0f203e79Address)
                                call sub_0f203e79Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    _451 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_451] = 26
                                    mem[_451 + 32] = 'SafeMath: division by zero'
                                    if sub_1ef80fcc:
                                        if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _451 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _468 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_468] = 26
                                    mem[_468 + 32] = 'SafeMath: division by zero'
                                    if sub_1ef80fcc:
                                        if (10^12 * 0 / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_1ef80fcc
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _468 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / (block.number * sub_16364770) - (poolInfo[idx].field_512 * sub_16364770) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _318 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_318] = 26
                            mem[_318 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _318 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_0f203e79Address)
                                call sub_0f203e79Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint:
                                    _467 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_467] = 26
                                    mem[_467 + 32] = 'SafeMath: division by zero'
                                    if sub_1ef80fcc:
                                        if (0 / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / sub_1ef80fcc
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _467 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _490 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_490] = 26
                                    mem[_490 + 32] = 'SafeMath: division by zero'
                                    if sub_1ef80fcc:
                                        if (10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / sub_1ef80fcc) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_16364770 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16364770 * poolInfo[idx].field_256) / totalAllocPoint / sub_1ef80fcc
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _490 + 32]
                                        idx = idx + 32
                                        continue 
            revert with 0, 'SafeMath: division by zero'
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg1
    if block.number > startBlock:
        stor36B6[stor5.length] = block.number
    else:
        stor36B6[stor5.length] = startBlock
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = arg3
    stor36B6[stor5.length] = arg4
}



}
