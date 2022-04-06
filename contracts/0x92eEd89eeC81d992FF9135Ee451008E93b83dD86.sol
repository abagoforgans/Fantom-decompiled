contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


address owner;
address vikingAddress;
address devaddr;
uint256 vikingPerBlock;
address feeAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
mapping of uint8 stor9;
uint8 stor10;
uint256 sub_5f21c6a0;
uint256 sub_1a931f0e;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint16 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_1a931f0e(?) payable {
    return sub_1a931f0e
}

function sub_22a79a29(?) payable {
    return bool(stor10)
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function vikingPerBlock() payable {
    return vikingPerBlock
}

function sub_5f21c6a0(?) payable {
    return sub_5f21c6a0
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function viking() payable {
    return vikingAddress
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    if not arg1:
        revert with 0, 'dev: don't set to 0 address'
    devaddr = arg1
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

function setDivisors(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_5f21c6a0 = arg1
    sub_1a931f0e = arg2
    require ext_code.size(vikingAddress)
    if not stor10:
        call vikingAddress.0xb3a9bb24 with:
             gas gas_remaining wei
            args sub_1a931f0e
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vikingAddress)
        call vikingAddress.0xb3a9bb24 with:
             gas gas_remaining wei
            args sub_5f21c6a0
    else:
        call vikingAddress.0xb3a9bb24 with:
             gas gas_remaining wei
            args sub_5f21c6a0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vikingAddress)
        call vikingAddress.0xb3a9bb24 with:
             gas gas_remaining wei
            args sub_1a931f0e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
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
}

function sub_925a4068(?) payable {
    if bool(stor10) != 1:
        if not stor10:
            require ext_code.size(vikingAddress)
            staticcall vikingAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 7 * 10^18:
                stor10 = 1
                require ext_code.size(vikingAddress)
                call vikingAddress.0xb3a9bb24 with:
                     gas gas_remaining wei
                    args sub_1a931f0e
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(vikingAddress)
        staticcall vikingAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 25 * 10^14 * 3600:
            stor10 = 0
            require ext_code.size(vikingAddress)
            call vikingAddress.0xb3a9bb24 with:
                 gas gas_remaining wei
                args sub_5f21c6a0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor10:
                require ext_code.size(vikingAddress)
                staticcall vikingAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 7 * 10^18:
                    stor10 = 1
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0xb3a9bb24 with:
                         gas gas_remaining wei
                        args sub_1a931f0e
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor10) != 1:
        if not stor10:
            require ext_code.size(vikingAddress)
            staticcall vikingAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 7 * 10^18:
                stor10 = 1
                require ext_code.size(vikingAddress)
                call vikingAddress.0xb3a9bb24 with:
                     gas gas_remaining wei
                    args sub_1a931f0e
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(vikingAddress)
        staticcall vikingAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 25 * 10^14 * 3600:
            stor10 = 0
            require ext_code.size(vikingAddress)
            call vikingAddress.0xb3a9bb24 with:
                 gas gas_remaining wei
                args sub_5f21c6a0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor10:
                require ext_code.size(vikingAddress)
                staticcall vikingAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 7 * 10^18:
                    stor10 = 1
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0xb3a9bb24 with:
                         gas gas_remaining wei
                        args sub_1a931f0e
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
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
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * vikingPerBlock) - (poolInfo[arg1].field_512 * vikingPerBlock) / block.number - poolInfo[arg1].field_512 != vikingPerBlock:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * vikingPerBlock) - (poolInfo[arg1].field_512 * vikingPerBlock):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(vikingAddress)
                            call vikingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vikingAddress)
                            call vikingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / (block.number * vikingPerBlock) - (poolInfo[arg1].field_512 * vikingPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(vikingAddress)
                            call vikingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vikingAddress)
                            call vikingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingEgg(uint256 arg1, address arg2) payable {
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
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * vikingPerBlock) - (poolInfo[arg1].field_512 * vikingPerBlock) / block.number - poolInfo[arg1].field_512 != vikingPerBlock:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * vikingPerBlock) - (poolInfo[arg1].field_512 * vikingPerBlock):
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
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / (block.number * vikingPerBlock) - (poolInfo[arg1].field_512 * vikingPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * vikingPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * vikingPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        if bool(stor10) != 1:
            if stor10:
                require idx < poolInfo.length
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
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1201 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1201] = 30
                mem[_1201 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1201 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1311 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1311] = 26
                    mem[_1311 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1319 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1319 + 68] = mem[idx + _1311 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1319 + 68] = mem[_1319 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1319 + -mem[64] + 100
                    _1370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1370] = 26
                    mem[_1370 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1638 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1638] = 26
                        mem[_1638 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1664 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1664 + 68] = mem[idx + _1638 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1664 + 68] = mem[_1664 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1664 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1663 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1663] = 26
                    mem[_1663 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1696 + 68] = mem[idx + _1663 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1696 + 68] = mem[_1696 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1696 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1318 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1318] = 26
                    mem[_1318 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1327 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1327 + 68] = mem[idx + _1318 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1327 + 68] = mem[_1327 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1327 + -mem[64] + 100
                    _1403 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1403] = 26
                    mem[_1403 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1662 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1662] = 26
                        mem[_1662 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1693 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1693 + 68] = mem[idx + _1662 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1693 + 68] = mem[_1693 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1693 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1692] = 26
                    mem[_1692 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1732 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1732 + 68] = mem[idx + _1692 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1732 + 68] = mem[_1732 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1732 + -mem[64] + 100
                if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                    _1326 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1326] = 26
                    mem[_1326 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1341 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1341 + 68] = mem[idx + _1326 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1341 + 68] = mem[_1341 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1341 + -mem[64] + 100
                    _1445 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1445] = 26
                    mem[_1445 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1691 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1691] = 26
                        mem[_1691 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1729 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1729 + 68] = mem[idx + _1691 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1729 + 68] = mem[_1729 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1729 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1728 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1728] = 26
                    mem[_1728 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1780 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1780 + 68] = mem[idx + _1728 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1780 + 68] = mem[_1780 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1780 + -mem[64] + 100
                if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1340 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1340] = 26
                mem[_1340 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1365 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1365 + 68] = mem[idx + _1340 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1365 + 68] = mem[_1365 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1365 + -mem[64] + 100
                _1489 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1489] = 26
                mem[_1489 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1727 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1727] = 26
                    mem[_1727 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1777 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1777 + 68] = mem[idx + _1727 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1777 + 68] = mem[_1777 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1777 + -mem[64] + 100
                if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1776 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1776] = 26
                mem[_1776 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1844 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1844 + 68] = mem[idx + _1776 + 32]
                    idx = idx + 32
                    continue 
                mem[_1844 + 68] = mem[_1844 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1844 + -mem[64] + 100
            require ext_code.size(vikingAddress)
            staticcall vikingAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 7 * 10^18:
                require idx < poolInfo.length
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
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1218 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1218] = 30
                mem[_1218 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1218 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1331 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1331] = 26
                    mem[_1331 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1347 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1347 + 68] = mem[idx + _1331 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1347 + 68] = mem[_1347 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1347 + -mem[64] + 100
                    _1451 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1451] = 26
                    mem[_1451 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1700 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1700] = 26
                        mem[_1700 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1740 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1740 + 68] = mem[idx + _1700 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1740 + 68] = mem[_1740 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1740 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1739 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1739] = 26
                    mem[_1739 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1792 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1792 + 68] = mem[idx + _1739 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1792 + 68] = mem[_1792 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1792 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1346 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1346] = 26
                    mem[_1346 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1372 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1372 + 68] = mem[idx + _1346 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1372 + 68] = mem[_1372 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1372 + -mem[64] + 100
                    _1492 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1492] = 26
                    mem[_1492 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1738 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1738] = 26
                        mem[_1738 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1789 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1789 + 68] = mem[idx + _1738 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1789 + 68] = mem[_1789 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1789 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1788 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1788] = 26
                    mem[_1788 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1856 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1856 + 68] = mem[idx + _1788 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1856 + 68] = mem[_1856 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1856 + -mem[64] + 100
                if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                    _1371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1371] = 26
                    mem[_1371 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1405 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1405 + 68] = mem[idx + _1371 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1405 + 68] = mem[_1405 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1405 + -mem[64] + 100
                    _1531 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1531] = 26
                    mem[_1531 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1787 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1787] = 26
                        mem[_1787 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1853 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1853 + 68] = mem[idx + _1787 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1853 + 68] = mem[_1853 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1853 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1852 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1852] = 26
                    mem[_1852 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1934 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1934 + 68] = mem[idx + _1852 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1934 + 68] = mem[_1934 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1934 + -mem[64] + 100
                if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1404 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1404] = 26
                mem[_1404 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1446 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1446 + 68] = mem[idx + _1404 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1446 + 68] = mem[_1446 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1446 + -mem[64] + 100
                _1563 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1563] = 26
                mem[_1563 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1851 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1851] = 26
                    mem[_1851 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1931 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1931 + 68] = mem[idx + _1851 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1931 + 68] = mem[_1931 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1931 + -mem[64] + 100
                if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1930 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1930] = 26
                mem[_1930 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2021 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2021 + 68] = mem[idx + _1930 + 32]
                    idx = idx + 32
                    continue 
                mem[_2021 + 68] = mem[_2021 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2021 + -mem[64] + 100
            stor10 = 1
            mem[mem[64]] = 0xb3a9bb2400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_1a931f0e
            require ext_code.size(vikingAddress)
            call vikingAddress.0xb3a9bb24 with:
                 gas gas_remaining wei
                args sub_1a931f0e
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < poolInfo.length
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
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1235 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1235] = 30
            mem[_1235 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1235 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _1358 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1358] = 26
                mem[_1358 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1391 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1391 + 68] = mem[idx + _1358 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1391 + 68] = mem[_1391 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1391 + -mem[64] + 100
                _1517 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1517] = 26
                mem[_1517 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1764 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1764] = 26
                    mem[_1764 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1826 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1826 + 68] = mem[idx + _1764 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1826 + 68] = mem[_1826 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1826 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1825 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1825] = 26
                mem[_1825 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1905 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1905 + 68] = mem[idx + _1825 + 32]
                    idx = idx + 32
                    continue 
                mem[_1905 + 68] = mem[_1905 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1905 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _1390 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1390] = 26
                mem[_1390 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1429 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1429 + 68] = mem[idx + _1390 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1429 + 68] = mem[_1429 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1429 + -mem[64] + 100
                _1552 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1552] = 26
                mem[_1552 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1824 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1824] = 26
                    mem[_1824 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1902 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1902 + 68] = mem[idx + _1824 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1902 + 68] = mem[_1902 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1902 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1901 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1901] = 26
                mem[_1901 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1988 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1988 + 68] = mem[idx + _1901 + 32]
                    idx = idx + 32
                    continue 
                mem[_1988 + 68] = mem[_1988 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1988 + -mem[64] + 100
            if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                _1428 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1428] = 26
                mem[_1428 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1470 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1470 + 68] = mem[idx + _1428 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1470 + 68] = mem[_1470 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1470 + -mem[64] + 100
                _1579 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1579] = 26
                mem[_1579 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1900 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1900] = 26
                    mem[_1900 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1985 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1985 + 68] = mem[idx + _1900 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1985 + 68] = mem[_1985 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1985 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1984 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1984] = 26
                mem[_1984 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2074 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2074 + 68] = mem[idx + _1984 + 32]
                    idx = idx + 32
                    continue 
                mem[_2074 + 68] = mem[_2074 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2074 + -mem[64] + 100
            if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1469 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1469] = 26
            mem[_1469 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1512 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1512 + 68] = mem[idx + _1469 + 32]
                    idx = idx + 32
                    continue 
                mem[_1512 + 68] = mem[_1512 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1512 + -mem[64] + 100
            _1605 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1605] = 26
            mem[_1605 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1983 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1983] = 26
                mem[_1983 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2071 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2071 + 68] = mem[idx + _1983 + 32]
                    idx = idx + 32
                    continue 
                mem[_2071 + 68] = mem[_2071 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2071 + -mem[64] + 100
            if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2070 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2070] = 26
            mem[_2070 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2152 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2152 + 68] = mem[idx + _2070 + 32]
                idx = idx + 32
                continue 
            mem[_2152 + 68] = mem[_2152 + 74 len 26]
            revert with memory
              from mem[64]
               len _2152 + -mem[64] + 100
        require ext_code.size(vikingAddress)
        staticcall vikingAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 25 * 10^14 * 3600:
            stor10 = 0
            mem[mem[64]] = 0xb3a9bb2400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_5f21c6a0
            require ext_code.size(vikingAddress)
            call vikingAddress.0xb3a9bb24 with:
                 gas gas_remaining wei
                args sub_5f21c6a0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < poolInfo.length
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
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1223 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1223] = 30
            mem[_1223 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1223 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _1339 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1339] = 26
                mem[_1339 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1362 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1362 + 68] = mem[idx + _1339 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1362 + 68] = mem[_1362 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1362 + -mem[64] + 100
                _1488 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1488] = 26
                mem[_1488 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1726 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1726] = 26
                    mem[_1726 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1773 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1773 + 68] = mem[idx + _1726 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1773 + 68] = mem[_1773 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1773 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1772 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1772] = 26
                mem[_1772 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1840 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1840 + 68] = mem[idx + _1772 + 32]
                    idx = idx + 32
                    continue 
                mem[_1840 + 68] = mem[_1840 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1840 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _1361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1361] = 26
                mem[_1361 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1397 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1397 + 68] = mem[idx + _1361 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1397 + 68] = mem[_1397 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1397 + -mem[64] + 100
                _1529 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1529] = 26
                mem[_1529 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1771 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1771] = 26
                    mem[_1771 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1837 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1837 + 68] = mem[idx + _1771 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1837 + 68] = mem[_1837 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1837 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1836 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1836] = 26
                mem[_1836 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1921 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1921 + 68] = mem[idx + _1836 + 32]
                    idx = idx + 32
                    continue 
                mem[_1921 + 68] = mem[_1921 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1921 + -mem[64] + 100
            if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                _1396 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1396] = 26
                mem[_1396 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1439 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1439 + 68] = mem[idx + _1396 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1439 + 68] = mem[_1439 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1439 + -mem[64] + 100
                _1562 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1562] = 26
                mem[_1562 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1835 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1835] = 26
                    mem[_1835 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1918 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1918 + 68] = mem[idx + _1835 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1918 + 68] = mem[_1918 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1918 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1917 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1917] = 26
                mem[_1917 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2013 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2013 + 68] = mem[idx + _1917 + 32]
                    idx = idx + 32
                    continue 
                mem[_2013 + 68] = mem[_2013 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2013 + -mem[64] + 100
            if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1438 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1438] = 26
            mem[_1438 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1483 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1483 + 68] = mem[idx + _1438 + 32]
                    idx = idx + 32
                    continue 
                mem[_1483 + 68] = mem[_1483 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1483 + -mem[64] + 100
            _1590 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1590] = 26
            mem[_1590 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1916 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1916] = 26
                mem[_1916 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2010 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2010 + 68] = mem[idx + _1916 + 32]
                    idx = idx + 32
                    continue 
                mem[_2010 + 68] = mem[_2010 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2010 + -mem[64] + 100
            if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2009 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2009] = 26
            mem[_2009 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2102 + 68] = mem[idx + _2009 + 32]
                idx = idx + 32
                continue 
            mem[_2102 + 68] = mem[_2102 + 74 len 26]
            revert with memory
              from mem[64]
               len _2102 + -mem[64] + 100
        if stor10:
            require idx < poolInfo.length
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
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1219 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1219] = 30
            mem[_1219 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1219 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _1334 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1334] = 26
                mem[_1334 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1351 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1351 + 68] = mem[idx + _1334 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1351 + 68] = mem[_1351 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1351 + -mem[64] + 100
                _1459 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1459] = 26
                mem[_1459 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1705 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1705] = 26
                    mem[_1705 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1749 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1749 + 68] = mem[idx + _1705 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1749 + 68] = mem[_1749 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1749 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1748 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1748] = 26
                mem[_1748 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1803 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1803 + 68] = mem[idx + _1748 + 32]
                    idx = idx + 32
                    continue 
                mem[_1803 + 68] = mem[_1803 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1803 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _1350 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1350] = 26
                mem[_1350 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1377 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1377 + 68] = mem[idx + _1350 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1377 + 68] = mem[_1377 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1377 + -mem[64] + 100
                _1497 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1497] = 26
                mem[_1497 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1747 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1747] = 26
                    mem[_1747 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1800 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1800 + 68] = mem[idx + _1747 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1800 + 68] = mem[_1800 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1800 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1799 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1799] = 26
                mem[_1799 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1869 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1869 + 68] = mem[idx + _1799 + 32]
                    idx = idx + 32
                    continue 
                mem[_1869 + 68] = mem[_1869 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1869 + -mem[64] + 100
            if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                _1376 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1376] = 26
                mem[_1376 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1413 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1413 + 68] = mem[idx + _1376 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1413 + 68] = mem[_1413 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1413 + -mem[64] + 100
                _1535 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1535] = 26
                mem[_1535 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1798 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1798] = 26
                    mem[_1798 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1866 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1866 + 68] = mem[idx + _1798 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1866 + 68] = mem[_1866 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1866 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1865 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1865] = 26
                mem[_1865 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1949 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1949 + 68] = mem[idx + _1865 + 32]
                    idx = idx + 32
                    continue 
                mem[_1949 + 68] = mem[_1949 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1949 + -mem[64] + 100
            if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1412 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1412] = 26
            mem[_1412 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1454 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1454 + 68] = mem[idx + _1412 + 32]
                    idx = idx + 32
                    continue 
                mem[_1454 + 68] = mem[_1454 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1454 + -mem[64] + 100
            _1566 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1566] = 26
            mem[_1566 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1864 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1864] = 26
                mem[_1864 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1946 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1946 + 68] = mem[idx + _1864 + 32]
                    idx = idx + 32
                    continue 
                mem[_1946 + 68] = mem[_1946 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1946 + -mem[64] + 100
            if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1945 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1945] = 26
            mem[_1945 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2032 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2032 + 68] = mem[idx + _1945 + 32]
                idx = idx + 32
                continue 
            mem[_2032 + 68] = mem[_2032 + 74 len 26]
            revert with memory
              from mem[64]
               len _2032 + -mem[64] + 100
        require ext_code.size(vikingAddress)
        staticcall vikingAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 7 * 10^18:
            require idx < poolInfo.length
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
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1244 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1244] = 30
            mem[_1244 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1244 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _1381 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1381] = 26
                mem[_1381 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1419 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1419 + 68] = mem[idx + _1381 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1419 + 68] = mem[_1419 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1419 + -mem[64] + 100
                _1541 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1541] = 26
                mem[_1541 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1807 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1807] = 26
                    mem[_1807 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1877 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1877 + 68] = mem[idx + _1807 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1877 + 68] = mem[_1877 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1877 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1876 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1876] = 26
                mem[_1876 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1961 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1961 + 68] = mem[idx + _1876 + 32]
                    idx = idx + 32
                    continue 
                mem[_1961 + 68] = mem[_1961 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1961 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _1418 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1418] = 26
                mem[_1418 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1461 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1461 + 68] = mem[idx + _1418 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1461 + 68] = mem[_1461 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1461 + -mem[64] + 100
                _1569 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1569] = 26
                mem[_1569 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1875 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1875] = 26
                    mem[_1875 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1958 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1958 + 68] = mem[idx + _1875 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1958 + 68] = mem[_1958 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1958 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1957 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1957] = 26
                mem[_1957 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2044 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2044 + 68] = mem[idx + _1957 + 32]
                    idx = idx + 32
                    continue 
                mem[_2044 + 68] = mem[_2044 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2044 + -mem[64] + 100
            if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                _1460 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1460] = 26
                mem[_1460 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1499 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1499 + 68] = mem[idx + _1460 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1499 + 68] = mem[_1499 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1499 + -mem[64] + 100
                _1592 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1592] = 26
                mem[_1592 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1956 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1956] = 26
                    mem[_1956 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2041 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2041 + 68] = mem[idx + _1956 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2041 + 68] = mem[_2041 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2041 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2040 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2040] = 26
                mem[_2040 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2125 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2125 + 68] = mem[idx + _2040 + 32]
                    idx = idx + 32
                    continue 
                mem[_2125 + 68] = mem[_2125 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2125 + -mem[64] + 100
            if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1498 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1498] = 26
            mem[_1498 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1536 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1536 + 68] = mem[idx + _1498 + 32]
                    idx = idx + 32
                    continue 
                mem[_1536 + 68] = mem[_1536 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1536 + -mem[64] + 100
            _1615 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1615] = 26
            mem[_1615 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2039 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2039] = 26
                mem[_2039 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2122 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2122 + 68] = mem[idx + _2039 + 32]
                    idx = idx + 32
                    continue 
                mem[_2122 + 68] = mem[_2122 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2122 + -mem[64] + 100
            if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2121 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2121] = 26
            mem[_2121 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2195 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2195 + 68] = mem[idx + _2121 + 32]
                idx = idx + 32
                continue 
            mem[_2195 + 68] = mem[_2195 + 74 len 26]
            revert with memory
              from mem[64]
               len _2195 + -mem[64] + 100
        stor10 = 1
        mem[mem[64]] = 0xb3a9bb2400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_1a931f0e
        require ext_code.size(vikingAddress)
        call vikingAddress.0xb3a9bb24 with:
             gas gas_remaining wei
            args sub_1a931f0e
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < poolInfo.length
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
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1272 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1272] = 30
        mem[_1272 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _1272 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[idx].field_512:
            _1437 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1437] = 26
            mem[_1437 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1480 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1480 + 68] = mem[idx + _1437 + 32]
                    idx = idx + 32
                    continue 
                mem[_1480 + 68] = mem[_1480 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1480 + -mem[64] + 100
            _1589 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1589] = 26
            mem[_1589 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1915 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1915] = 26
                mem[_1915 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2006 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2006 + 68] = mem[idx + _1915 + 32]
                    idx = idx + 32
                    continue 
                mem[_2006 + 68] = mem[_2006 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2006 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2005 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2005] = 26
            mem[_2005 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2098 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2098 + 68] = mem[idx + _2005 + 32]
                idx = idx + 32
                continue 
            mem[_2098 + 68] = mem[_2098 + 74 len 26]
            revert with memory
              from mem[64]
               len _2098 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _1479 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1479] = 26
            mem[_1479 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1523 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1523 + 68] = mem[idx + _1479 + 32]
                    idx = idx + 32
                    continue 
                mem[_1523 + 68] = mem[_1523 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1523 + -mem[64] + 100
            _1612 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1612] = 26
            mem[_1612 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _2004 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2004] = 26
                mem[_2004 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2095 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2095 + 68] = mem[idx + _2004 + 32]
                    idx = idx + 32
                    continue 
                mem[_2095 + 68] = mem[_2095 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2095 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2094 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2094] = 26
            mem[_2094 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2176 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2176 + 68] = mem[idx + _2094 + 32]
                idx = idx + 32
                continue 
            mem[_2176 + 68] = mem[_2176 + 74 len 26]
            revert with memory
              from mem[64]
               len _2176 + -mem[64] + 100
        if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
            _1522 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1522] = 26
            mem[_1522 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1556 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1556 + 68] = mem[idx + _1522 + 32]
                    idx = idx + 32
                    continue 
                mem[_1556 + 68] = mem[_1556 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1556 + -mem[64] + 100
            _1637 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1637] = 26
            mem[_1637 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _2093 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2093] = 26
                mem[_2093 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2173 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2173 + 68] = mem[idx + _2093 + 32]
                    idx = idx + 32
                    continue 
                mem[_2173 + 68] = mem[_2173 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2173 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2172 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2172] = 26
            mem[_2172 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2235 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2235 + 68] = mem[idx + _2172 + 32]
                idx = idx + 32
                continue 
            mem[_2235 + 68] = mem[_2235 + 74 len 26]
            revert with memory
              from mem[64]
               len _2235 + -mem[64] + 100
        if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1555 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1555] = 26
        mem[_1555 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _1584 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1584 + 68] = mem[idx + _1555 + 32]
                idx = idx + 32
                continue 
            mem[_1584 + 68] = mem[_1584 + 74 len 26]
            revert with memory
              from mem[64]
               len _1584 + -mem[64] + 100
        _1661 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1661] = 26
        mem[_1661 + 32] = 'SafeMath: division by zero'
        require ext_code.size(vikingAddress)
        call vikingAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(vikingAddress)
        call vikingAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _2171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2171] = 26
            mem[_2171 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2232 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2232 + 68] = mem[idx + _2171 + 32]
                idx = idx + 32
                continue 
            mem[_2232 + 68] = mem[_2232 + 74 len 26]
            revert with memory
              from mem[64]
               len _2232 + -mem[64] + 100
        if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _2231 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2231] = 26
        mem[_2231 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _2273 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _2273 + 68] = mem[idx + _2231 + 32]
            idx = idx + 32
            continue 
        mem[_2273 + 68] = mem[_2273 + 74 len 26]
        revert with memory
          from mem[64]
           len _2273 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        if bool(stor10) != 1:
            if stor10:
                require idx < poolInfo.length
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
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1205 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1205] = 30
                mem[_1205 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1205 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1315 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1315] = 26
                    mem[_1315 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1323 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1323 + 68] = mem[idx + _1315 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1323 + 68] = mem[_1323 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1323 + -mem[64] + 100
                    _1374 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1374] = 26
                    mem[_1374 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1642 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1642] = 26
                        mem[_1642 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1668 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1668 + 68] = mem[idx + _1642 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1668 + 68] = mem[_1668 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1668 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1667 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1667] = 26
                    mem[_1667 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1700 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1700 + 68] = mem[idx + _1667 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1700 + 68] = mem[_1700 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1700 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1322 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1322] = 26
                    mem[_1322 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1331 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1331 + 68] = mem[idx + _1322 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1331 + 68] = mem[_1331 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1331 + -mem[64] + 100
                    _1407 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1407] = 26
                    mem[_1407 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1666 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1666] = 26
                        mem[_1666 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1697 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1697 + 68] = mem[idx + _1666 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1697 + 68] = mem[_1697 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1697 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1696 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1696] = 26
                    mem[_1696 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1736 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1736 + 68] = mem[idx + _1696 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1736 + 68] = mem[_1736 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1736 + -mem[64] + 100
                if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                    _1330 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1330] = 26
                    mem[_1330 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1345 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1345 + 68] = mem[idx + _1330 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1345 + 68] = mem[_1345 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1345 + -mem[64] + 100
                    _1449 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1449] = 26
                    mem[_1449 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1695 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1695] = 26
                        mem[_1695 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1733 + 68] = mem[idx + _1695 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1733 + 68] = mem[_1733 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1733 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1732] = 26
                    mem[_1732 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1784 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1784 + 68] = mem[idx + _1732 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1784 + 68] = mem[_1784 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1784 + -mem[64] + 100
                if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1344 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1344] = 26
                mem[_1344 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1369 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1369 + 68] = mem[idx + _1344 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1369 + 68] = mem[_1369 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1369 + -mem[64] + 100
                _1493 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1493] = 26
                mem[_1493 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1731 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1731] = 26
                    mem[_1731 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1781 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1781 + 68] = mem[idx + _1731 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1781 + 68] = mem[_1781 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1781 + -mem[64] + 100
                if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1780 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1780] = 26
                mem[_1780 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1848 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1848 + 68] = mem[idx + _1780 + 32]
                    idx = idx + 32
                    continue 
                mem[_1848 + 68] = mem[_1848 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1848 + -mem[64] + 100
            require ext_code.size(vikingAddress)
            staticcall vikingAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 7 * 10^18:
                require idx < poolInfo.length
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
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1222 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1222] = 30
                mem[_1222 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1222 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1335 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1335] = 26
                    mem[_1335 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1351 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1351 + 68] = mem[idx + _1335 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1351 + 68] = mem[_1351 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1351 + -mem[64] + 100
                    _1455 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1455] = 26
                    mem[_1455 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1704 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1704] = 26
                        mem[_1704 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1744 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1744 + 68] = mem[idx + _1704 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1744 + 68] = mem[_1744 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1744 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1743 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1743] = 26
                    mem[_1743 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1796 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1796 + 68] = mem[idx + _1743 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1796 + 68] = mem[_1796 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1796 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1350 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1350] = 26
                    mem[_1350 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1376 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1376 + 68] = mem[idx + _1350 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1376 + 68] = mem[_1376 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1376 + -mem[64] + 100
                    _1496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1496] = 26
                    mem[_1496 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1742 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1742] = 26
                        mem[_1742 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1793 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1793 + 68] = mem[idx + _1742 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1793 + 68] = mem[_1793 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1793 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1792 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1792] = 26
                    mem[_1792 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1860 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1860 + 68] = mem[idx + _1792 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1860 + 68] = mem[_1860 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1860 + -mem[64] + 100
                if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                    _1375 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1375] = 26
                    mem[_1375 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1409 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1409 + 68] = mem[idx + _1375 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1409 + 68] = mem[_1409 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1409 + -mem[64] + 100
                    _1535 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1535] = 26
                    mem[_1535 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1791 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1791] = 26
                        mem[_1791 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1857 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1857 + 68] = mem[idx + _1791 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1857 + 68] = mem[_1857 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1857 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1856] = 26
                    mem[_1856 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1938 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1938 + 68] = mem[idx + _1856 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1938 + 68] = mem[_1938 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1938 + -mem[64] + 100
                if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1408 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1408] = 26
                mem[_1408 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1450 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1450 + 68] = mem[idx + _1408 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1450 + 68] = mem[_1450 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1450 + -mem[64] + 100
                _1567 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1567] = 26
                mem[_1567 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1855 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1855] = 26
                    mem[_1855 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1935 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1935 + 68] = mem[idx + _1855 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1935 + 68] = mem[_1935 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1935 + -mem[64] + 100
                if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1934 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1934] = 26
                mem[_1934 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2025 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2025 + 68] = mem[idx + _1934 + 32]
                    idx = idx + 32
                    continue 
                mem[_2025 + 68] = mem[_2025 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2025 + -mem[64] + 100
            stor10 = 1
            mem[mem[64]] = 0xb3a9bb2400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_1a931f0e
            require ext_code.size(vikingAddress)
            call vikingAddress.0xb3a9bb24 with:
                 gas gas_remaining wei
                args sub_1a931f0e
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < poolInfo.length
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
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1239 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1239] = 30
            mem[_1239 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1239 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _1362 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1362] = 26
                mem[_1362 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1395 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1395 + 68] = mem[idx + _1362 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1395 + 68] = mem[_1395 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1395 + -mem[64] + 100
                _1521 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1521] = 26
                mem[_1521 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1768 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1768] = 26
                    mem[_1768 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1830 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1830 + 68] = mem[idx + _1768 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1830 + 68] = mem[_1830 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1830 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1829 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1829] = 26
                mem[_1829 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1909 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1909 + 68] = mem[idx + _1829 + 32]
                    idx = idx + 32
                    continue 
                mem[_1909 + 68] = mem[_1909 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1909 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _1394 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1394] = 26
                mem[_1394 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1433 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1433 + 68] = mem[idx + _1394 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1433 + 68] = mem[_1433 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1433 + -mem[64] + 100
                _1556 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1556] = 26
                mem[_1556 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1828] = 26
                    mem[_1828 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1906 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1906 + 68] = mem[idx + _1828 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1906 + 68] = mem[_1906 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1906 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1905 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1905] = 26
                mem[_1905 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1992 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1992 + 68] = mem[idx + _1905 + 32]
                    idx = idx + 32
                    continue 
                mem[_1992 + 68] = mem[_1992 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1992 + -mem[64] + 100
            if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                _1432 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1432] = 26
                mem[_1432 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1474 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1474 + 68] = mem[idx + _1432 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1474 + 68] = mem[_1474 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1474 + -mem[64] + 100
                _1583 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1583] = 26
                mem[_1583 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1904 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1904] = 26
                    mem[_1904 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1989 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1989 + 68] = mem[idx + _1904 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1989 + 68] = mem[_1989 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1989 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1988 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1988] = 26
                mem[_1988 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2078 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2078 + 68] = mem[idx + _1988 + 32]
                    idx = idx + 32
                    continue 
                mem[_2078 + 68] = mem[_2078 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2078 + -mem[64] + 100
            if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1473 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1473] = 26
            mem[_1473 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1516 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1516 + 68] = mem[idx + _1473 + 32]
                    idx = idx + 32
                    continue 
                mem[_1516 + 68] = mem[_1516 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1516 + -mem[64] + 100
            _1609 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1609] = 26
            mem[_1609 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1987 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1987] = 26
                mem[_1987 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2075 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2075 + 68] = mem[idx + _1987 + 32]
                    idx = idx + 32
                    continue 
                mem[_2075 + 68] = mem[_2075 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2075 + -mem[64] + 100
            if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2074 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2074] = 26
            mem[_2074 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2156 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2156 + 68] = mem[idx + _2074 + 32]
                idx = idx + 32
                continue 
            mem[_2156 + 68] = mem[_2156 + 74 len 26]
            revert with memory
              from mem[64]
               len _2156 + -mem[64] + 100
        require ext_code.size(vikingAddress)
        staticcall vikingAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 25 * 10^14 * 3600:
            stor10 = 0
            mem[mem[64]] = 0xb3a9bb2400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_5f21c6a0
            require ext_code.size(vikingAddress)
            call vikingAddress.0xb3a9bb24 with:
                 gas gas_remaining wei
                args sub_5f21c6a0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < poolInfo.length
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
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1227 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1227] = 30
            mem[_1227 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1227 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _1343 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1343] = 26
                mem[_1343 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1366 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1366 + 68] = mem[idx + _1343 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1366 + 68] = mem[_1366 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1366 + -mem[64] + 100
                _1492 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1492] = 26
                mem[_1492 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1730 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1730] = 26
                    mem[_1730 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1777 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1777 + 68] = mem[idx + _1730 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1777 + 68] = mem[_1777 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1777 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1776 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1776] = 26
                mem[_1776 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1844 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1844 + 68] = mem[idx + _1776 + 32]
                    idx = idx + 32
                    continue 
                mem[_1844 + 68] = mem[_1844 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1844 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _1365 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1365] = 26
                mem[_1365 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1401 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1401 + 68] = mem[idx + _1365 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1401 + 68] = mem[_1401 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1401 + -mem[64] + 100
                _1533 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1533] = 26
                mem[_1533 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1775 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1775] = 26
                    mem[_1775 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1841 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1841 + 68] = mem[idx + _1775 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1841 + 68] = mem[_1841 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1841 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1840 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1840] = 26
                mem[_1840 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1925 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1925 + 68] = mem[idx + _1840 + 32]
                    idx = idx + 32
                    continue 
                mem[_1925 + 68] = mem[_1925 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1925 + -mem[64] + 100
            if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                _1400 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1400] = 26
                mem[_1400 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1443 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1443 + 68] = mem[idx + _1400 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1443 + 68] = mem[_1443 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1443 + -mem[64] + 100
                _1566 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1566] = 26
                mem[_1566 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1839 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1839] = 26
                    mem[_1839 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1922 + 68] = mem[idx + _1839 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1922 + 68] = mem[_1922 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1922 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1921 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1921] = 26
                mem[_1921 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2017 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2017 + 68] = mem[idx + _1921 + 32]
                    idx = idx + 32
                    continue 
                mem[_2017 + 68] = mem[_2017 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2017 + -mem[64] + 100
            if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1442 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1442] = 26
            mem[_1442 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1487 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1487 + 68] = mem[idx + _1442 + 32]
                    idx = idx + 32
                    continue 
                mem[_1487 + 68] = mem[_1487 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1487 + -mem[64] + 100
            _1594 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1594] = 26
            mem[_1594 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1920 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1920] = 26
                mem[_1920 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2014 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2014 + 68] = mem[idx + _1920 + 32]
                    idx = idx + 32
                    continue 
                mem[_2014 + 68] = mem[_2014 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2014 + -mem[64] + 100
            if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2013 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2013] = 26
            mem[_2013 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2106 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2106 + 68] = mem[idx + _2013 + 32]
                idx = idx + 32
                continue 
            mem[_2106 + 68] = mem[_2106 + 74 len 26]
            revert with memory
              from mem[64]
               len _2106 + -mem[64] + 100
        if stor10:
            require idx < poolInfo.length
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
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1223 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1223] = 30
            mem[_1223 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1223 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _1338 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1338] = 26
                mem[_1338 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1355 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1355 + 68] = mem[idx + _1338 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1355 + 68] = mem[_1355 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1355 + -mem[64] + 100
                _1463 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1463] = 26
                mem[_1463 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1709] = 26
                    mem[_1709 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1753 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1753 + 68] = mem[idx + _1709 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1753 + 68] = mem[_1753 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1753 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1752 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1752] = 26
                mem[_1752 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1807 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1807 + 68] = mem[idx + _1752 + 32]
                    idx = idx + 32
                    continue 
                mem[_1807 + 68] = mem[_1807 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1807 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _1354 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1354] = 26
                mem[_1354 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1381 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1381 + 68] = mem[idx + _1354 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1381 + 68] = mem[_1381 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1381 + -mem[64] + 100
                _1501 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1501] = 26
                mem[_1501 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1751 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1751] = 26
                    mem[_1751 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1804 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1804 + 68] = mem[idx + _1751 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1804 + 68] = mem[_1804 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1804 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1803 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1803] = 26
                mem[_1803 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1873 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1873 + 68] = mem[idx + _1803 + 32]
                    idx = idx + 32
                    continue 
                mem[_1873 + 68] = mem[_1873 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1873 + -mem[64] + 100
            if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                _1380 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1380] = 26
                mem[_1380 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1417 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1417 + 68] = mem[idx + _1380 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1417 + 68] = mem[_1417 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1417 + -mem[64] + 100
                _1539 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1539] = 26
                mem[_1539 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1802 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1802] = 26
                    mem[_1802 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1870 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1870 + 68] = mem[idx + _1802 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1870 + 68] = mem[_1870 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1870 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1869 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1869] = 26
                mem[_1869 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1953 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1953 + 68] = mem[idx + _1869 + 32]
                    idx = idx + 32
                    continue 
                mem[_1953 + 68] = mem[_1953 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1953 + -mem[64] + 100
            if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1416 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1416] = 26
            mem[_1416 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1458 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1458 + 68] = mem[idx + _1416 + 32]
                    idx = idx + 32
                    continue 
                mem[_1458 + 68] = mem[_1458 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1458 + -mem[64] + 100
            _1570 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1570] = 26
            mem[_1570 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1868 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1868] = 26
                mem[_1868 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1950 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1950 + 68] = mem[idx + _1868 + 32]
                    idx = idx + 32
                    continue 
                mem[_1950 + 68] = mem[_1950 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1950 + -mem[64] + 100
            if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1949 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1949] = 26
            mem[_1949 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2036 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2036 + 68] = mem[idx + _1949 + 32]
                idx = idx + 32
                continue 
            mem[_2036 + 68] = mem[_2036 + 74 len 26]
            revert with memory
              from mem[64]
               len _2036 + -mem[64] + 100
        require ext_code.size(vikingAddress)
        staticcall vikingAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 7 * 10^18:
            require idx < poolInfo.length
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
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1248 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1248] = 30
            mem[_1248 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1248 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _1385 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1385] = 26
                mem[_1385 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1423 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1423 + 68] = mem[idx + _1385 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1423 + 68] = mem[_1423 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1423 + -mem[64] + 100
                _1545 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1545] = 26
                mem[_1545 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1811] = 26
                    mem[_1811 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1881 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1881 + 68] = mem[idx + _1811 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1881 + 68] = mem[_1881 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1881 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1880 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1880] = 26
                mem[_1880 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1965 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1965 + 68] = mem[idx + _1880 + 32]
                    idx = idx + 32
                    continue 
                mem[_1965 + 68] = mem[_1965 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1965 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _1422 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1422] = 26
                mem[_1422 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1465 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1465 + 68] = mem[idx + _1422 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1465 + 68] = mem[_1465 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1465 + -mem[64] + 100
                _1573 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1573] = 26
                mem[_1573 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1879 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1879] = 26
                    mem[_1879 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1962 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1962 + 68] = mem[idx + _1879 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1962 + 68] = mem[_1962 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1962 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1961 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1961] = 26
                mem[_1961 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2048 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2048 + 68] = mem[idx + _1961 + 32]
                    idx = idx + 32
                    continue 
                mem[_2048 + 68] = mem[_2048 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2048 + -mem[64] + 100
            if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                _1464 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1464] = 26
                mem[_1464 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1503 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1503 + 68] = mem[idx + _1464 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1503 + 68] = mem[_1503 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1503 + -mem[64] + 100
                _1596 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1596] = 26
                mem[_1596 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1960 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1960] = 26
                    mem[_1960 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2045 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2045 + 68] = mem[idx + _1960 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2045 + 68] = mem[_2045 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2045 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2044 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2044] = 26
                mem[_2044 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2129 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2129 + 68] = mem[idx + _2044 + 32]
                    idx = idx + 32
                    continue 
                mem[_2129 + 68] = mem[_2129 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2129 + -mem[64] + 100
            if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1502 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1502] = 26
            mem[_1502 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1540 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1540 + 68] = mem[idx + _1502 + 32]
                    idx = idx + 32
                    continue 
                mem[_1540 + 68] = mem[_1540 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1540 + -mem[64] + 100
            _1619 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1619] = 26
            mem[_1619 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2043 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2043] = 26
                mem[_2043 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2126 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2126 + 68] = mem[idx + _2043 + 32]
                    idx = idx + 32
                    continue 
                mem[_2126 + 68] = mem[_2126 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2126 + -mem[64] + 100
            if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2125 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2125] = 26
            mem[_2125 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2199 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2199 + 68] = mem[idx + _2125 + 32]
                idx = idx + 32
                continue 
            mem[_2199 + 68] = mem[_2199 + 74 len 26]
            revert with memory
              from mem[64]
               len _2199 + -mem[64] + 100
        stor10 = 1
        mem[mem[64]] = 0xb3a9bb2400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_1a931f0e
        require ext_code.size(vikingAddress)
        call vikingAddress.0xb3a9bb24 with:
             gas gas_remaining wei
            args sub_1a931f0e
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < poolInfo.length
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
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1276 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1276] = 30
        mem[_1276 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _1276 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[idx].field_512:
            _1441 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1441] = 26
            mem[_1441 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1484 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1484 + 68] = mem[idx + _1441 + 32]
                    idx = idx + 32
                    continue 
                mem[_1484 + 68] = mem[_1484 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1484 + -mem[64] + 100
            _1593 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1593] = 26
            mem[_1593 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1919 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1919] = 26
                mem[_1919 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2010 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2010 + 68] = mem[idx + _1919 + 32]
                    idx = idx + 32
                    continue 
                mem[_2010 + 68] = mem[_2010 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2010 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2009 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2009] = 26
            mem[_2009 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2102 + 68] = mem[idx + _2009 + 32]
                idx = idx + 32
                continue 
            mem[_2102 + 68] = mem[_2102 + 74 len 26]
            revert with memory
              from mem[64]
               len _2102 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _1483 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1483] = 26
            mem[_1483 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1527 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1527 + 68] = mem[idx + _1483 + 32]
                    idx = idx + 32
                    continue 
                mem[_1527 + 68] = mem[_1527 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1527 + -mem[64] + 100
            _1616 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1616] = 26
            mem[_1616 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _2008 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2008] = 26
                mem[_2008 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2099 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2099 + 68] = mem[idx + _2008 + 32]
                    idx = idx + 32
                    continue 
                mem[_2099 + 68] = mem[_2099 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2099 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2098 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2098] = 26
            mem[_2098 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2180 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2180 + 68] = mem[idx + _2098 + 32]
                idx = idx + 32
                continue 
            mem[_2180 + 68] = mem[_2180 + 74 len 26]
            revert with memory
              from mem[64]
               len _2180 + -mem[64] + 100
        if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
            _1526 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1526] = 26
            mem[_1526 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1560 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1560 + 68] = mem[idx + _1526 + 32]
                    idx = idx + 32
                    continue 
                mem[_1560 + 68] = mem[_1560 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1560 + -mem[64] + 100
            _1641 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1641] = 26
            mem[_1641 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _2097 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2097] = 26
                mem[_2097 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2177 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2177 + 68] = mem[idx + _2097 + 32]
                    idx = idx + 32
                    continue 
                mem[_2177 + 68] = mem[_2177 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2177 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2176 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2176] = 26
            mem[_2176 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2239 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2239 + 68] = mem[idx + _2176 + 32]
                idx = idx + 32
                continue 
            mem[_2239 + 68] = mem[_2239 + 74 len 26]
            revert with memory
              from mem[64]
               len _2239 + -mem[64] + 100
        if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1559 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1559] = 26
        mem[_1559 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _1588 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1588 + 68] = mem[idx + _1559 + 32]
                idx = idx + 32
                continue 
            mem[_1588 + 68] = mem[_1588 + 74 len 26]
            revert with memory
              from mem[64]
               len _1588 + -mem[64] + 100
        _1665 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1665] = 26
        mem[_1665 + 32] = 'SafeMath: division by zero'
        require ext_code.size(vikingAddress)
        call vikingAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(vikingAddress)
        call vikingAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _2175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2175] = 26
            mem[_2175 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2236 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2236 + 68] = mem[idx + _2175 + 32]
                idx = idx + 32
                continue 
            mem[_2236 + 68] = mem[_2236 + 74 len 26]
            revert with memory
              from mem[64]
               len _2236 + -mem[64] + 100
        if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _2235 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2235] = 26
        mem[_2235 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _2277 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _2277 + 68] = mem[idx + _2235 + 32]
            idx = idx + 32
            continue 
        mem[_2277 + 68] = mem[_2277 + 74 len 26]
        revert with memory
          from mem[64]
           len _2277 + -mem[64] + 100
    vikingPerBlock = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            if bool(stor10) != 1:
                if stor10:
                    require idx < poolInfo.length
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
                    if not ext_call.return_data[0]:
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1262 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1262] = 30
                    mem[_1262 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_512 > block.number:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _1262 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        _1372 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1372] = 26
                        mem[_1372 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _1380 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1380 + 68] = mem[idx + _1372 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1380 + 68] = mem[_1380 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1380 + -mem[64] + 100
                        _1431 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1431] = 26
                        mem[_1431 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1699 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1699] = 26
                            mem[_1699 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1725 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1725 + 68] = mem[idx + _1699 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1725 + 68] = mem[_1725 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1725 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1724 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1724] = 26
                        mem[_1724 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1757 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1757 + 68] = mem[idx + _1724 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1757 + 68] = mem[_1757 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1757 + -mem[64] + 100
                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not block.number - poolInfo[idx].field_512:
                        _1379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1379] = 26
                        mem[_1379 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _1388 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1388 + 68] = mem[idx + _1379 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1388 + 68] = mem[_1388 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1388 + -mem[64] + 100
                        _1464 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1464] = 26
                        mem[_1464 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1723 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1723] = 26
                            mem[_1723 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1754 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1754 + 68] = mem[idx + _1723 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1754 + 68] = mem[_1754 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1754 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1753 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1753] = 26
                        mem[_1753 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1793 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1793 + 68] = mem[idx + _1753 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1793 + 68] = mem[_1793 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1793 + -mem[64] + 100
                    if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                        _1387 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1387] = 26
                        mem[_1387 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _1402 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1402 + 68] = mem[idx + _1387 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1402 + 68] = mem[_1402 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1402 + -mem[64] + 100
                        _1506 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1506] = 26
                        mem[_1506 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1752 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1752] = 26
                            mem[_1752 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1790 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1790 + 68] = mem[idx + _1752 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1790 + 68] = mem[_1790 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1790 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1789 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1789] = 26
                        mem[_1789 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1841 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1841 + 68] = mem[idx + _1789 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1841 + 68] = mem[_1841 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1841 + -mem[64] + 100
                    if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1401] = 26
                    mem[_1401 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1426 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1426 + 68] = mem[idx + _1401 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1426 + 68] = mem[_1426 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1426 + -mem[64] + 100
                    _1550 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1550] = 26
                    mem[_1550 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _1788 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1788] = 26
                        mem[_1788 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1838 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1838 + 68] = mem[idx + _1788 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1838 + 68] = mem[_1838 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1838 + -mem[64] + 100
                    if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1837 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1837] = 26
                    mem[_1837 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1905 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1905 + 68] = mem[idx + _1837 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1905 + 68] = mem[_1905 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1905 + -mem[64] + 100
                require ext_code.size(vikingAddress)
                staticcall vikingAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 7 * 10^18:
                    require idx < poolInfo.length
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
                    if not ext_call.return_data[0]:
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1279 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1279] = 30
                    mem[_1279 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_512 > block.number:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _1279 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        _1392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1392] = 26
                        mem[_1392 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _1408 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1408 + 68] = mem[idx + _1392 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1408 + 68] = mem[_1408 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1408 + -mem[64] + 100
                        _1512 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1512] = 26
                        mem[_1512 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1761 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1761] = 26
                            mem[_1761 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1801 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1801 + 68] = mem[idx + _1761 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1801 + 68] = mem[_1801 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1801 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1800 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1800] = 26
                        mem[_1800 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1853 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1853 + 68] = mem[idx + _1800 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1853 + 68] = mem[_1853 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1853 + -mem[64] + 100
                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not block.number - poolInfo[idx].field_512:
                        _1407 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1407] = 26
                        mem[_1407 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _1433 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1433 + 68] = mem[idx + _1407 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1433 + 68] = mem[_1433 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1433 + -mem[64] + 100
                        _1553 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1553] = 26
                        mem[_1553 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1799 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1799] = 26
                            mem[_1799 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1850 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1850 + 68] = mem[idx + _1799 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1850 + 68] = mem[_1850 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1850 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1849] = 26
                        mem[_1849 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1917 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1917 + 68] = mem[idx + _1849 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1917 + 68] = mem[_1917 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1917 + -mem[64] + 100
                    if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                        _1432 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1432] = 26
                        mem[_1432 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _1466 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1466 + 68] = mem[idx + _1432 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1466 + 68] = mem[_1466 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1466 + -mem[64] + 100
                        _1592 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1592] = 26
                        mem[_1592 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1848 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1848] = 26
                            mem[_1848 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1914 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1914 + 68] = mem[idx + _1848 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1914 + 68] = mem[_1914 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1914 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1913 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1913] = 26
                        mem[_1913 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1995 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1995 + 68] = mem[idx + _1913 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1995 + 68] = mem[_1995 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1995 + -mem[64] + 100
                    if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1465 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1465] = 26
                    mem[_1465 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1507 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1507 + 68] = mem[idx + _1465 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1507 + 68] = mem[_1507 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1507 + -mem[64] + 100
                    _1624 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1624] = 26
                    mem[_1624 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _1912 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1912] = 26
                        mem[_1912 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1992 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1992 + 68] = mem[idx + _1912 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1992 + 68] = mem[_1992 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1992 + -mem[64] + 100
                    if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1991] = 26
                    mem[_1991 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2082 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2082 + 68] = mem[idx + _1991 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2082 + 68] = mem[_2082 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2082 + -mem[64] + 100
                stor10 = 1
                mem[mem[64]] = 0xb3a9bb2400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_1a931f0e
                require ext_code.size(vikingAddress)
                call vikingAddress.0xb3a9bb24 with:
                     gas gas_remaining wei
                    args sub_1a931f0e
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < poolInfo.length
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
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1296 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1296] = 30
                mem[_1296 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1296 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1419 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1419] = 26
                    mem[_1419 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1452 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1452 + 68] = mem[idx + _1419 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1452 + 68] = mem[_1452 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1452 + -mem[64] + 100
                    _1578 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1578] = 26
                    mem[_1578 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1825 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1825] = 26
                        mem[_1825 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1887 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1887 + 68] = mem[idx + _1825 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1887 + 68] = mem[_1887 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1887 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1886 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1886] = 26
                    mem[_1886 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1966 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1966 + 68] = mem[idx + _1886 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1966 + 68] = mem[_1966 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1966 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1451 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1451] = 26
                    mem[_1451 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1490 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1490 + 68] = mem[idx + _1451 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1490 + 68] = mem[_1490 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1490 + -mem[64] + 100
                    _1613 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1613] = 26
                    mem[_1613 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1885 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1885] = 26
                        mem[_1885 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1963 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1963 + 68] = mem[idx + _1885 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1963 + 68] = mem[_1963 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1963 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1962] = 26
                    mem[_1962 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2049 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2049 + 68] = mem[idx + _1962 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2049 + 68] = mem[_2049 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2049 + -mem[64] + 100
                if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                    _1489 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1489] = 26
                    mem[_1489 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1531 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1531 + 68] = mem[idx + _1489 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1531 + 68] = mem[_1531 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1531 + -mem[64] + 100
                    _1640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1640] = 26
                    mem[_1640 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1961 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1961] = 26
                        mem[_1961 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2046 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2046 + 68] = mem[idx + _1961 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2046 + 68] = mem[_2046 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2046 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2045 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2045] = 26
                    mem[_2045 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2135 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2135 + 68] = mem[idx + _2045 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2135 + 68] = mem[_2135 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2135 + -mem[64] + 100
                if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1530 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1530] = 26
                mem[_1530 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1573 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1573 + 68] = mem[idx + _1530 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1573 + 68] = mem[_1573 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1573 + -mem[64] + 100
                _1666 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1666] = 26
                mem[_1666 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2044 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2044] = 26
                    mem[_2044 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2132 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2132 + 68] = mem[idx + _2044 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2132 + 68] = mem[_2132 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2132 + -mem[64] + 100
                if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2131] = 26
                mem[_2131 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2213 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2213 + 68] = mem[idx + _2131 + 32]
                    idx = idx + 32
                    continue 
                mem[_2213 + 68] = mem[_2213 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2213 + -mem[64] + 100
            require ext_code.size(vikingAddress)
            staticcall vikingAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 25 * 10^14 * 3600:
                stor10 = 0
                mem[mem[64]] = 0xb3a9bb2400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_5f21c6a0
                require ext_code.size(vikingAddress)
                call vikingAddress.0xb3a9bb24 with:
                     gas gas_remaining wei
                    args sub_5f21c6a0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < poolInfo.length
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
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1284 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1284] = 30
                mem[_1284 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1284 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1400 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1400] = 26
                    mem[_1400 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1423 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1423 + 68] = mem[idx + _1400 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1423 + 68] = mem[_1423 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1423 + -mem[64] + 100
                    _1549 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1549] = 26
                    mem[_1549 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1787 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1787] = 26
                        mem[_1787 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1834 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1834 + 68] = mem[idx + _1787 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1834 + 68] = mem[_1834 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1834 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1833 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1833] = 26
                    mem[_1833 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1901 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1901 + 68] = mem[idx + _1833 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1901 + 68] = mem[_1901 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1901 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1422 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1422] = 26
                    mem[_1422 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1458 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1458 + 68] = mem[idx + _1422 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1458 + 68] = mem[_1458 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1458 + -mem[64] + 100
                    _1590 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1590] = 26
                    mem[_1590 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1832 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1832] = 26
                        mem[_1832 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1898 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1898 + 68] = mem[idx + _1832 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1898 + 68] = mem[_1898 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1898 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1897 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1897] = 26
                    mem[_1897 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1982 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1982 + 68] = mem[idx + _1897 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1982 + 68] = mem[_1982 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1982 + -mem[64] + 100
                if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                    _1457 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1457] = 26
                    mem[_1457 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1500 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1500 + 68] = mem[idx + _1457 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1500 + 68] = mem[_1500 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1500 + -mem[64] + 100
                    _1623 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1623] = 26
                    mem[_1623 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1896 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1896] = 26
                        mem[_1896 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1979 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1979 + 68] = mem[idx + _1896 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1979 + 68] = mem[_1979 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1979 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1978 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1978] = 26
                    mem[_1978 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2074 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2074 + 68] = mem[idx + _1978 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2074 + 68] = mem[_2074 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2074 + -mem[64] + 100
                if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1499 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1499] = 26
                mem[_1499 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1544 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1544 + 68] = mem[idx + _1499 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1544 + 68] = mem[_1544 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1544 + -mem[64] + 100
                _1651 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1651] = 26
                mem[_1651 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1977] = 26
                    mem[_1977 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2071 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2071 + 68] = mem[idx + _1977 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2071 + 68] = mem[_2071 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2071 + -mem[64] + 100
                if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2070 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2070] = 26
                mem[_2070 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2163 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2163 + 68] = mem[idx + _2070 + 32]
                    idx = idx + 32
                    continue 
                mem[_2163 + 68] = mem[_2163 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2163 + -mem[64] + 100
            if stor10:
                require idx < poolInfo.length
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
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1280 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1280] = 30
                mem[_1280 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1280 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1395 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1395] = 26
                    mem[_1395 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1412 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1412 + 68] = mem[idx + _1395 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1412 + 68] = mem[_1412 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1412 + -mem[64] + 100
                    _1520 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1520] = 26
                    mem[_1520 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1766 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1766] = 26
                        mem[_1766 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1810 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1810 + 68] = mem[idx + _1766 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1810 + 68] = mem[_1810 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1810 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1809 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1809] = 26
                    mem[_1809 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1864 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1864 + 68] = mem[idx + _1809 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1864 + 68] = mem[_1864 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1864 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1411 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1411] = 26
                    mem[_1411 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1438 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1438 + 68] = mem[idx + _1411 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1438 + 68] = mem[_1438 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1438 + -mem[64] + 100
                    _1558 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1558] = 26
                    mem[_1558 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1808 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1808] = 26
                        mem[_1808 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1861 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1861 + 68] = mem[idx + _1808 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1861 + 68] = mem[_1861 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1861 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1860] = 26
                    mem[_1860 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1930 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1930 + 68] = mem[idx + _1860 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1930 + 68] = mem[_1930 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1930 + -mem[64] + 100
                if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                    _1437 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1437] = 26
                    mem[_1437 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1474 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1474 + 68] = mem[idx + _1437 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1474 + 68] = mem[_1474 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1474 + -mem[64] + 100
                    _1596 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1596] = 26
                    mem[_1596 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1859] = 26
                        mem[_1859 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1927 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1927 + 68] = mem[idx + _1859 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1927 + 68] = mem[_1927 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1927 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1926 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1926] = 26
                    mem[_1926 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2010 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2010 + 68] = mem[idx + _1926 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2010 + 68] = mem[_2010 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2010 + -mem[64] + 100
                if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1473 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1473] = 26
                mem[_1473 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1515 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1515 + 68] = mem[idx + _1473 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1515 + 68] = mem[_1515 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1515 + -mem[64] + 100
                _1627 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1627] = 26
                mem[_1627 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1925 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1925] = 26
                    mem[_1925 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2007 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2007 + 68] = mem[idx + _1925 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2007 + 68] = mem[_2007 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2007 + -mem[64] + 100
                if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2006 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2006] = 26
                mem[_2006 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2093 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2093 + 68] = mem[idx + _2006 + 32]
                    idx = idx + 32
                    continue 
                mem[_2093 + 68] = mem[_2093 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2093 + -mem[64] + 100
            require ext_code.size(vikingAddress)
            staticcall vikingAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 7 * 10^18:
                require idx < poolInfo.length
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
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1305 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1305] = 30
                mem[_1305 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1305 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1442 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1442] = 26
                    mem[_1442 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1480 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1480 + 68] = mem[idx + _1442 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1480 + 68] = mem[_1480 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1480 + -mem[64] + 100
                    _1602 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1602] = 26
                    mem[_1602 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1868 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1868] = 26
                        mem[_1868 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1938 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1938 + 68] = mem[idx + _1868 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1938 + 68] = mem[_1938 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1938 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1937 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1937] = 26
                    mem[_1937 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2022 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2022 + 68] = mem[idx + _1937 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2022 + 68] = mem[_2022 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2022 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1479] = 26
                    mem[_1479 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1522 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1522 + 68] = mem[idx + _1479 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1522 + 68] = mem[_1522 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1522 + -mem[64] + 100
                    _1630 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1630] = 26
                    mem[_1630 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1936 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1936] = 26
                        mem[_1936 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2019 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2019 + 68] = mem[idx + _1936 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2019 + 68] = mem[_2019 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2019 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2018 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2018] = 26
                    mem[_2018 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2105 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2105 + 68] = mem[idx + _2018 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2105 + 68] = mem[_2105 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2105 + -mem[64] + 100
                if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                    _1521 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1521] = 26
                    mem[_1521 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1560 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1560 + 68] = mem[idx + _1521 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1560 + 68] = mem[_1560 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1560 + -mem[64] + 100
                    _1653 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1653] = 26
                    mem[_1653 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _2017 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2017] = 26
                        mem[_2017 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2102 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2102 + 68] = mem[idx + _2017 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2102 + 68] = mem[_2102 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2102 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2101 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2101] = 26
                    mem[_2101 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2186 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2186 + 68] = mem[idx + _2101 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2186 + 68] = mem[_2186 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2186 + -mem[64] + 100
                if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1559 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1559] = 26
                mem[_1559 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1597 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1597 + 68] = mem[idx + _1559 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1597 + 68] = mem[_1597 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1597 + -mem[64] + 100
                _1676 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1676] = 26
                mem[_1676 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2100 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2100] = 26
                    mem[_2100 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2183 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2183 + 68] = mem[idx + _2100 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2183 + 68] = mem[_2183 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2183 + -mem[64] + 100
                if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2182] = 26
                mem[_2182 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2256 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2256 + 68] = mem[idx + _2182 + 32]
                    idx = idx + 32
                    continue 
                mem[_2256 + 68] = mem[_2256 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2256 + -mem[64] + 100
            stor10 = 1
            mem[mem[64]] = 0xb3a9bb2400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_1a931f0e
            require ext_code.size(vikingAddress)
            call vikingAddress.0xb3a9bb24 with:
                 gas gas_remaining wei
                args sub_1a931f0e
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < poolInfo.length
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
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1333 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1333] = 30
            mem[_1333 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1333 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _1498 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1498] = 26
                mem[_1498 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1541 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1541 + 68] = mem[idx + _1498 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1541 + 68] = mem[_1541 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1541 + -mem[64] + 100
                _1650 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1650] = 26
                mem[_1650 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1976 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1976] = 26
                    mem[_1976 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2067 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2067 + 68] = mem[idx + _1976 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2067 + 68] = mem[_2067 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2067 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2066 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2066] = 26
                mem[_2066 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2159 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2159 + 68] = mem[idx + _2066 + 32]
                    idx = idx + 32
                    continue 
                mem[_2159 + 68] = mem[_2159 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2159 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _1540 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1540] = 26
                mem[_1540 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1584 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1584 + 68] = mem[idx + _1540 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1584 + 68] = mem[_1584 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1584 + -mem[64] + 100
                _1673 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1673] = 26
                mem[_1673 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _2065 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2065] = 26
                    mem[_2065 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2156 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2156 + 68] = mem[idx + _2065 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2156 + 68] = mem[_2156 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2156 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2155] = 26
                mem[_2155 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2237 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2237 + 68] = mem[idx + _2155 + 32]
                    idx = idx + 32
                    continue 
                mem[_2237 + 68] = mem[_2237 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2237 + -mem[64] + 100
            if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                _1583 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1583] = 26
                mem[_1583 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1617 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1617 + 68] = mem[idx + _1583 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1617 + 68] = mem[_1617 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1617 + -mem[64] + 100
                _1698 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1698] = 26
                mem[_1698 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _2154 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2154] = 26
                    mem[_2154 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2234 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2234 + 68] = mem[idx + _2154 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2234 + 68] = mem[_2234 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2234 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2233 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2233] = 26
                mem[_2233 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2296 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2296 + 68] = mem[idx + _2233 + 32]
                    idx = idx + 32
                    continue 
                mem[_2296 + 68] = mem[_2296 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2296 + -mem[64] + 100
            if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1616 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1616] = 26
            mem[_1616 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1645 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1645 + 68] = mem[idx + _1616 + 32]
                    idx = idx + 32
                    continue 
                mem[_1645 + 68] = mem[_1645 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1645 + -mem[64] + 100
            _1722 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1722] = 26
            mem[_1722 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2232 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2232] = 26
                mem[_2232 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2293 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2293 + 68] = mem[idx + _2232 + 32]
                    idx = idx + 32
                    continue 
                mem[_2293 + 68] = mem[_2293 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2293 + -mem[64] + 100
            if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2292 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2292] = 26
            mem[_2292 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2334 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2334 + 68] = mem[idx + _2292 + 32]
                idx = idx + 32
                continue 
            mem[_2334 + 68] = mem[_2334 + 74 len 26]
            revert with memory
              from mem[64]
               len _2334 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if stor9[address(arg2)]:
        revert with 0, 'add: pool already added'
    mem[0] = arg2
    mem[32] = 9
    stor9[address(arg2)] = 1
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            if bool(stor10) != 1:
                if stor10:
                    require idx < poolInfo.length
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
                    if not ext_call.return_data[0]:
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1259 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1259] = 30
                    mem[_1259 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_512 > block.number:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _1259 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        _1369 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1369] = 26
                        mem[_1369 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _1377 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1377 + 68] = mem[idx + _1369 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1377 + 68] = mem[_1377 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1377 + -mem[64] + 100
                        _1428 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1428] = 26
                        mem[_1428 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1696 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1696] = 26
                            mem[_1696 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1722 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1722 + 68] = mem[idx + _1696 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1722 + 68] = mem[_1722 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1722 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1721 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1721] = 26
                        mem[_1721 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1754 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1754 + 68] = mem[idx + _1721 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1754 + 68] = mem[_1754 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1754 + -mem[64] + 100
                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not block.number - poolInfo[idx].field_512:
                        _1376 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1376] = 26
                        mem[_1376 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _1385 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1385 + 68] = mem[idx + _1376 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1385 + 68] = mem[_1385 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1385 + -mem[64] + 100
                        _1461 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1461] = 26
                        mem[_1461 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1720 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1720] = 26
                            mem[_1720 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1751 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1751 + 68] = mem[idx + _1720 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1751 + 68] = mem[_1751 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1751 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1750 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1750] = 26
                        mem[_1750 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1790 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1790 + 68] = mem[idx + _1750 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1790 + 68] = mem[_1790 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1790 + -mem[64] + 100
                    if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                        _1384 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1384] = 26
                        mem[_1384 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _1399 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1399 + 68] = mem[idx + _1384 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1399 + 68] = mem[_1399 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1399 + -mem[64] + 100
                        _1503 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1503] = 26
                        mem[_1503 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1749 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1749] = 26
                            mem[_1749 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1787 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1787 + 68] = mem[idx + _1749 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1787 + 68] = mem[_1787 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1787 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1786 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1786] = 26
                        mem[_1786 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1838 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1838 + 68] = mem[idx + _1786 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1838 + 68] = mem[_1838 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1838 + -mem[64] + 100
                    if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1398 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1398] = 26
                    mem[_1398 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1423 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1423 + 68] = mem[idx + _1398 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1423 + 68] = mem[_1423 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1423 + -mem[64] + 100
                    _1547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1547] = 26
                    mem[_1547 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _1785 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1785] = 26
                        mem[_1785 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1835 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1835 + 68] = mem[idx + _1785 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1835 + 68] = mem[_1835 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1835 + -mem[64] + 100
                    if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1834] = 26
                    mem[_1834 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1902 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1902 + 68] = mem[idx + _1834 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1902 + 68] = mem[_1902 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1902 + -mem[64] + 100
                require ext_code.size(vikingAddress)
                staticcall vikingAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 7 * 10^18:
                    require idx < poolInfo.length
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
                    if not ext_call.return_data[0]:
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1276 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1276] = 30
                    mem[_1276 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_512 > block.number:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _1276 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        _1389 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1389] = 26
                        mem[_1389 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _1405 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1405 + 68] = mem[idx + _1389 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1405 + 68] = mem[_1405 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1405 + -mem[64] + 100
                        _1509 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1509] = 26
                        mem[_1509 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1758 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1758] = 26
                            mem[_1758 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1798 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1798 + 68] = mem[idx + _1758 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1798 + 68] = mem[_1798 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1798 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1797 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1797] = 26
                        mem[_1797 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1850 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1850 + 68] = mem[idx + _1797 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1850 + 68] = mem[_1850 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1850 + -mem[64] + 100
                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not block.number - poolInfo[idx].field_512:
                        _1404 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1404] = 26
                        mem[_1404 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _1430 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1430 + 68] = mem[idx + _1404 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1430 + 68] = mem[_1430 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1430 + -mem[64] + 100
                        _1550 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1550] = 26
                        mem[_1550 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1796 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1796] = 26
                            mem[_1796 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1847 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1847 + 68] = mem[idx + _1796 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1847 + 68] = mem[_1847 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1847 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1846 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1846] = 26
                        mem[_1846 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1914 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1914 + 68] = mem[idx + _1846 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1914 + 68] = mem[_1914 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1914 + -mem[64] + 100
                    if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                        _1429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1429] = 26
                        mem[_1429 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _1463 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1463 + 68] = mem[idx + _1429 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1463 + 68] = mem[_1463 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1463 + -mem[64] + 100
                        _1589 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1589] = 26
                        mem[_1589 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(vikingAddress)
                        call vikingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1845 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1845] = 26
                            mem[_1845 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1911 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1911 + 68] = mem[idx + _1845 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1911 + 68] = mem[_1911 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1911 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1910 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1910] = 26
                        mem[_1910 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1992 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1992 + 68] = mem[idx + _1910 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1992 + 68] = mem[_1992 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1992 + -mem[64] + 100
                    if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1462 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1462] = 26
                    mem[_1462 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1504 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1504 + 68] = mem[idx + _1462 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1504 + 68] = mem[_1504 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1504 + -mem[64] + 100
                    _1621 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1621] = 26
                    mem[_1621 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _1909 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1909] = 26
                        mem[_1909 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1989 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1989 + 68] = mem[idx + _1909 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1989 + 68] = mem[_1989 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1989 + -mem[64] + 100
                    if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1988] = 26
                    mem[_1988 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2079 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2079 + 68] = mem[idx + _1988 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2079 + 68] = mem[_2079 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2079 + -mem[64] + 100
                stor10 = 1
                mem[mem[64]] = 0xb3a9bb2400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_1a931f0e
                require ext_code.size(vikingAddress)
                call vikingAddress.0xb3a9bb24 with:
                     gas gas_remaining wei
                    args sub_1a931f0e
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < poolInfo.length
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
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1293 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1293] = 30
                mem[_1293 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1293 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1416 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1416] = 26
                    mem[_1416 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1449 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1449 + 68] = mem[idx + _1416 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1449 + 68] = mem[_1449 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1449 + -mem[64] + 100
                    _1575 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1575] = 26
                    mem[_1575 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1822 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1822] = 26
                        mem[_1822 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1884 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1884 + 68] = mem[idx + _1822 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1884 + 68] = mem[_1884 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1884 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1883 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1883] = 26
                    mem[_1883 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1963 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1963 + 68] = mem[idx + _1883 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1963 + 68] = mem[_1963 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1963 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1448 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1448] = 26
                    mem[_1448 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1487 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1487 + 68] = mem[idx + _1448 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1487 + 68] = mem[_1487 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1487 + -mem[64] + 100
                    _1610 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1610] = 26
                    mem[_1610 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1882 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1882] = 26
                        mem[_1882 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1960 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1960 + 68] = mem[idx + _1882 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1960 + 68] = mem[_1960 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1960 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1959 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1959] = 26
                    mem[_1959 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2046 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2046 + 68] = mem[idx + _1959 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2046 + 68] = mem[_2046 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2046 + -mem[64] + 100
                if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                    _1486 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1486] = 26
                    mem[_1486 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1528 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1528 + 68] = mem[idx + _1486 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1528 + 68] = mem[_1528 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1528 + -mem[64] + 100
                    _1637 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1637] = 26
                    mem[_1637 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1958 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1958] = 26
                        mem[_1958 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2043 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2043 + 68] = mem[idx + _1958 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2043 + 68] = mem[_2043 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2043 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2042 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2042] = 26
                    mem[_2042 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2132 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2132 + 68] = mem[idx + _2042 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2132 + 68] = mem[_2132 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2132 + -mem[64] + 100
                if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1527] = 26
                mem[_1527 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1570 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1570 + 68] = mem[idx + _1527 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1570 + 68] = mem[_1570 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1570 + -mem[64] + 100
                _1663 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1663] = 26
                mem[_1663 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2041 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2041] = 26
                    mem[_2041 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2129 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2129 + 68] = mem[idx + _2041 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2129 + 68] = mem[_2129 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2129 + -mem[64] + 100
                if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2128] = 26
                mem[_2128 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2210 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2210 + 68] = mem[idx + _2128 + 32]
                    idx = idx + 32
                    continue 
                mem[_2210 + 68] = mem[_2210 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2210 + -mem[64] + 100
            require ext_code.size(vikingAddress)
            staticcall vikingAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 25 * 10^14 * 3600:
                stor10 = 0
                mem[mem[64]] = 0xb3a9bb2400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_5f21c6a0
                require ext_code.size(vikingAddress)
                call vikingAddress.0xb3a9bb24 with:
                     gas gas_remaining wei
                    args sub_5f21c6a0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < poolInfo.length
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
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1281 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1281] = 30
                mem[_1281 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1281 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1397] = 26
                    mem[_1397 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1420 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1420 + 68] = mem[idx + _1397 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1420 + 68] = mem[_1420 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1420 + -mem[64] + 100
                    _1546 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1546] = 26
                    mem[_1546 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1784 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1784] = 26
                        mem[_1784 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1831 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1831 + 68] = mem[idx + _1784 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1831 + 68] = mem[_1831 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1831 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1830 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1830] = 26
                    mem[_1830 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1898 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1898 + 68] = mem[idx + _1830 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1898 + 68] = mem[_1898 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1898 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1419 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1419] = 26
                    mem[_1419 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1455 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1455 + 68] = mem[idx + _1419 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1455 + 68] = mem[_1455 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1455 + -mem[64] + 100
                    _1587 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1587] = 26
                    mem[_1587 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1829 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1829] = 26
                        mem[_1829 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1895 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1895 + 68] = mem[idx + _1829 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1895 + 68] = mem[_1895 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1895 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1894 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1894] = 26
                    mem[_1894 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1979 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1979 + 68] = mem[idx + _1894 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1979 + 68] = mem[_1979 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1979 + -mem[64] + 100
                if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                    _1454 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1454] = 26
                    mem[_1454 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1497 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1497 + 68] = mem[idx + _1454 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1497 + 68] = mem[_1497 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1497 + -mem[64] + 100
                    _1620 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1620] = 26
                    mem[_1620 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1893 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1893] = 26
                        mem[_1893 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1976 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1976 + 68] = mem[idx + _1893 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1976 + 68] = mem[_1976 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1976 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1975 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1975] = 26
                    mem[_1975 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2071 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2071 + 68] = mem[idx + _1975 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2071 + 68] = mem[_2071 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2071 + -mem[64] + 100
                if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1496 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1496] = 26
                mem[_1496 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1541 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1541 + 68] = mem[idx + _1496 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1541 + 68] = mem[_1541 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1541 + -mem[64] + 100
                _1648 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1648] = 26
                mem[_1648 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1974 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1974] = 26
                    mem[_1974 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2068 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2068 + 68] = mem[idx + _1974 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2068 + 68] = mem[_2068 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2068 + -mem[64] + 100
                if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2067 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2067] = 26
                mem[_2067 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2160 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2160 + 68] = mem[idx + _2067 + 32]
                    idx = idx + 32
                    continue 
                mem[_2160 + 68] = mem[_2160 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2160 + -mem[64] + 100
            if stor10:
                require idx < poolInfo.length
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
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1277 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1277] = 30
                mem[_1277 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1277 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1392 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1392] = 26
                    mem[_1392 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1409 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1409 + 68] = mem[idx + _1392 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1409 + 68] = mem[_1409 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1409 + -mem[64] + 100
                    _1517 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1517] = 26
                    mem[_1517 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1763] = 26
                        mem[_1763 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1807 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1807 + 68] = mem[idx + _1763 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1807 + 68] = mem[_1807 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1807 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1806 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1806] = 26
                    mem[_1806 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1861 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1861 + 68] = mem[idx + _1806 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1861 + 68] = mem[_1861 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1861 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1408 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1408] = 26
                    mem[_1408 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1435 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1435 + 68] = mem[idx + _1408 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1435 + 68] = mem[_1435 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1435 + -mem[64] + 100
                    _1555 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1555] = 26
                    mem[_1555 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1805 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1805] = 26
                        mem[_1805 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1858 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1858 + 68] = mem[idx + _1805 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1858 + 68] = mem[_1858 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1858 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1857 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1857] = 26
                    mem[_1857 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1927 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1927 + 68] = mem[idx + _1857 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1927 + 68] = mem[_1927 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1927 + -mem[64] + 100
                if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                    _1434 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1434] = 26
                    mem[_1434 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1471 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1471 + 68] = mem[idx + _1434 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1471 + 68] = mem[_1471 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1471 + -mem[64] + 100
                    _1593 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1593] = 26
                    mem[_1593 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1856 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1856] = 26
                        mem[_1856 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1924 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1924 + 68] = mem[idx + _1856 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1924 + 68] = mem[_1924 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1924 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1923 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1923] = 26
                    mem[_1923 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2007 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2007 + 68] = mem[idx + _1923 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2007 + 68] = mem[_2007 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2007 + -mem[64] + 100
                if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1470 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1470] = 26
                mem[_1470 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1512 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1512 + 68] = mem[idx + _1470 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1512 + 68] = mem[_1512 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1512 + -mem[64] + 100
                _1624 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1624] = 26
                mem[_1624 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1922 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1922] = 26
                    mem[_1922 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2004 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2004 + 68] = mem[idx + _1922 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2004 + 68] = mem[_2004 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2004 + -mem[64] + 100
                if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2003 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2003] = 26
                mem[_2003 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2090 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2090 + 68] = mem[idx + _2003 + 32]
                    idx = idx + 32
                    continue 
                mem[_2090 + 68] = mem[_2090 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2090 + -mem[64] + 100
            require ext_code.size(vikingAddress)
            staticcall vikingAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 7 * 10^18:
                require idx < poolInfo.length
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
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1302 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1302] = 30
                mem[_1302 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _1302 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1439 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1439] = 26
                    mem[_1439 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1477 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1477 + 68] = mem[idx + _1439 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1477 + 68] = mem[_1477 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1477 + -mem[64] + 100
                    _1599 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1599] = 26
                    mem[_1599 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1865 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1865] = 26
                        mem[_1865 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1935 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1935 + 68] = mem[idx + _1865 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1935 + 68] = mem[_1935 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1935 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1934 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1934] = 26
                    mem[_1934 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2019 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2019 + 68] = mem[idx + _1934 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2019 + 68] = mem[_2019 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2019 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1476 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1476] = 26
                    mem[_1476 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1519 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1519 + 68] = mem[idx + _1476 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1519 + 68] = mem[_1519 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1519 + -mem[64] + 100
                    _1627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1627] = 26
                    mem[_1627 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1933 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1933] = 26
                        mem[_1933 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2016 + 68] = mem[idx + _1933 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2016 + 68] = mem[_2016 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2016 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2015 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2015] = 26
                    mem[_2015 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2102 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2102 + 68] = mem[idx + _2015 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2102 + 68] = mem[_2102 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2102 + -mem[64] + 100
                if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                    _1518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1518] = 26
                    mem[_1518 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1557 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1557 + 68] = mem[idx + _1518 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1557 + 68] = mem[_1557 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1557 + -mem[64] + 100
                    _1650 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1650] = 26
                    mem[_1650 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(vikingAddress)
                    call vikingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _2014 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2014] = 26
                        mem[_2014 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2099 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2099 + 68] = mem[idx + _2014 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2099 + 68] = mem[_2099 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2099 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2098 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2098] = 26
                    mem[_2098 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2183 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2183 + 68] = mem[idx + _2098 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2183 + 68] = mem[_2183 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2183 + -mem[64] + 100
                if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1556 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1556] = 26
                mem[_1556 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1594 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1594 + 68] = mem[idx + _1556 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1594 + 68] = mem[_1594 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1594 + -mem[64] + 100
                _1673 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1673] = 26
                mem[_1673 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _2097 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2097] = 26
                    mem[_2097 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2180 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2180 + 68] = mem[idx + _2097 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2180 + 68] = mem[_2180 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2180 + -mem[64] + 100
                if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2179 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2179] = 26
                mem[_2179 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2253 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2253 + 68] = mem[idx + _2179 + 32]
                    idx = idx + 32
                    continue 
                mem[_2253 + 68] = mem[_2253 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2253 + -mem[64] + 100
            stor10 = 1
            mem[mem[64]] = 0xb3a9bb2400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_1a931f0e
            require ext_code.size(vikingAddress)
            call vikingAddress.0xb3a9bb24 with:
                 gas gas_remaining wei
                args sub_1a931f0e
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < poolInfo.length
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
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1330 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1330] = 30
            mem[_1330 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _1330 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _1495 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1495] = 26
                mem[_1495 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1538 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1538 + 68] = mem[idx + _1495 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1538 + 68] = mem[_1538 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1538 + -mem[64] + 100
                _1647 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1647] = 26
                mem[_1647 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1973 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1973] = 26
                    mem[_1973 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2064 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2064 + 68] = mem[idx + _1973 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2064 + 68] = mem[_2064 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2064 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2063 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2063] = 26
                mem[_2063 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2156 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2156 + 68] = mem[idx + _2063 + 32]
                    idx = idx + 32
                    continue 
                mem[_2156 + 68] = mem[_2156 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2156 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _1537 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1537] = 26
                mem[_1537 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1581 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1581 + 68] = mem[idx + _1537 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1581 + 68] = mem[_1581 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1581 + -mem[64] + 100
                _1670 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1670] = 26
                mem[_1670 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _2062 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2062] = 26
                    mem[_2062 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2153 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2153 + 68] = mem[idx + _2062 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2153 + 68] = mem[_2153 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2153 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2152 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2152] = 26
                mem[_2152 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2234 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2234 + 68] = mem[idx + _2152 + 32]
                    idx = idx + 32
                    continue 
                mem[_2234 + 68] = mem[_2234 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2234 + -mem[64] + 100
            if (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) / block.number - poolInfo[idx].field_512 != vikingPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock):
                _1580 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1580] = 26
                mem[_1580 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1614 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1614 + 68] = mem[idx + _1580 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1614 + 68] = mem[_1614 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1614 + -mem[64] + 100
                _1695 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1695] = 26
                mem[_1695 + 32] = 'SafeMath: division by zero'
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(vikingAddress)
                call vikingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _2151 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2151] = 26
                    mem[_2151 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2231 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2231 + 68] = mem[idx + _2151 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2231 + 68] = mem[_2231 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2231 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2230] = 26
                mem[_2230 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2293 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2293 + 68] = mem[idx + _2230 + 32]
                    idx = idx + 32
                    continue 
                mem[_2293 + 68] = mem[_2293 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2293 + -mem[64] + 100
            if (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / (block.number * vikingPerBlock) - (poolInfo[idx].field_512 * vikingPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1613 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1613] = 26
            mem[_1613 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1642 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1642 + 68] = mem[idx + _1613 + 32]
                    idx = idx + 32
                    continue 
                mem[_1642 + 68] = mem[_1642 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1642 + -mem[64] + 100
            _1719 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1719] = 26
            mem[_1719 + 32] = 'SafeMath: division by zero'
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(vikingAddress)
            call vikingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _2229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2229] = 26
                mem[_2229 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2290 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2290 + 68] = mem[idx + _2229 + 32]
                    idx = idx + 32
                    continue 
                mem[_2290 + 68] = mem[_2290 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2290 + -mem[64] + 100
            if 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2289 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2289] = 26
            mem[_2289 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * vikingPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * vikingPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _2331 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2331 + 68] = mem[idx + _2289 + 32]
                idx = idx + 32
                continue 
            mem[_2331 + 68] = mem[_2331 + 74 len 26]
            revert with memory
              from mem[64]
               len _2331 + -mem[64] + 100
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
}



}
