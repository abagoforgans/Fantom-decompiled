contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const sub_577e5db2(?) = 400

const sub_ad2d6130(?) = 4

const MAXIMUM_DEPOSIT_FEE = 400


address owner;
uint256 stor1;
address sub_e72d0bd0Address;
address syrupAddress;
address feeAddress;
address devaddr;
uint256 sub_c54873cb;
uint256 BONUS_MULTIPLIER;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
address sub_17c0431bAddress;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of struct stor110349606679412691172957834289542550319383271247755660854362242977991410020071;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return address(poolInfo[arg1].field_0), 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           uint16(poolInfo[arg1].field_1024),
           uint16(poolInfo[arg1].field_1024)
}

function sub_17c0431b(?) payable {
    return sub_17c0431bAddress
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function syrup() payable {
    return syrupAddress
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_c54873cb(?) payable {
    return sub_c54873cb
}

function devaddr() payable {
    return devaddr
}

function sub_e72d0bd0(?) payable {
    return sub_e72d0bd0Address
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

function sub_3c3f37b2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_17c0431bAddress = arg1
    emit SetReferralAddress(msg.sender, arg1);
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'setDevAddress: FORBIDDEN?'
    if not arg1:
        revert with 0, 'setDevAddress: ZERO'
    devaddr = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function checkPoolDuplicate(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if address(poolInfo[idx].field_0) == arg1:
            revert with 0, 'add: existing pool'
        idx = idx + 1
        continue 
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setFeeAddress: ZERO'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    if (arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / arg2 - arg1 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg1 > 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe7365744d756c7469706c6965723a20696e76616c6964206d756c7469706c696572206e756d6265,
                    mem[204 len 24]
    BONUS_MULTIPLIER = arg1
    emit SetMultiplier(arg1);
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

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if not arg1:
        require ext_code.size(syrupAddress)
        call syrupAddress.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, userInfo[arg1][msg.sender].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo[arg1].field_0)):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(poolInfo[arg1].field_0)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, userInfo[arg1][msg.sender].field_32)
    mem[324 len 0] = 0
    call address(poolInfo[arg1].field_0) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, 0, userInfo[arg1][msg.sender].field_0), mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x725361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePool: pool exists?'
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(address(poolInfo[arg1].field_0))
        staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
        else:
            if not poolInfo[arg1].field_256:
                poolInfo[arg1].field_512 = block.number
            else:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_e72d0bd0Address)
                    call sub_e72d0bd0Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_e72d0bd0Address)
                    call sub_e72d0bd0Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args syrupAddress, 0 / totalAllocPoint
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
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if sub_17c0431bAddress:
                        require ext_code.size(sub_e72d0bd0Address)
                        call sub_e72d0bd0Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_e72d0bd0Address)
                        call sub_e72d0bd0Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_e72d0bd0Address)
                        call sub_e72d0bd0Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args syrupAddress, 0 / totalAllocPoint
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if sub_17c0431bAddress:
                            require ext_code.size(sub_e72d0bd0Address)
                            call sub_e72d0bd0Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_c54873cb:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_e72d0bd0Address)
                            call sub_e72d0bd0Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_e72d0bd0Address)
                            call sub_e72d0bd0Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args syrupAddress, 0 / totalAllocPoint
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if sub_17c0431bAddress:
                                require ext_code.size(sub_e72d0bd0Address)
                                call sub_e72d0bd0Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_e72d0bd0Address)
                            call sub_e72d0bd0Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_e72d0bd0Address)
                            call sub_e72d0bd0Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args syrupAddress, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if sub_17c0431bAddress:
                                require ext_code.size(sub_e72d0bd0Address)
                                call sub_e72d0bd0Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}

function pendingMonster(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(address(poolInfo[arg1].field_0))
    staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
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
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_c54873cb:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(poolInfo[idx].field_0))
            staticcall address(poolInfo[idx].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
            else:
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                else:
                    _193 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_193] = 30
                    mem[_193 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_512 > block.number:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _193 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        _209 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_209] = 26
                        mem[_209 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _211 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _211 + 68] = mem[idx + _209 + 32]
                                idx = idx + 32
                                continue 
                            mem[_211 + 68] = mem[_211 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _211 + -mem[64] + 100
                        _231 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_231] = 26
                        mem[_231 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_e72d0bd0Address)
                        call sub_e72d0bd0Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = syrupAddress
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_e72d0bd0Address)
                        call sub_e72d0bd0Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args syrupAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _265 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_265] = 26
                            mem[_265 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                _270 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _270 + 68] = mem[idx + _265 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_270 + 68] = mem[_270 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _270 + -mem[64] + 100
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            if sub_17c0431bAddress:
                                _342 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_342] = 26
                                mem[_342 + 32] = 'SafeMath: division by zero'
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = devaddr
                                mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                require ext_code.size(sub_e72d0bd0Address)
                                call sub_e72d0bd0Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _269 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_269] = 26
                            mem[_269 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                _280 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _280 + 68] = mem[idx + _269 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_280 + 68] = mem[_280 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _280 + -mem[64] + 100
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            if sub_17c0431bAddress:
                                _351 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_351] = 26
                                mem[_351 + 32] = 'SafeMath: division by zero'
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = devaddr
                                mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                require ext_code.size(sub_e72d0bd0Address)
                                call sub_e72d0bd0Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                            _210 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_210] = 26
                            mem[_210 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _217 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _217 + 68] = mem[idx + _210 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_217 + 68] = mem[_217 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _217 + -mem[64] + 100
                            _239 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_239] = 26
                            mem[_239 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_e72d0bd0Address)
                            call sub_e72d0bd0Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = syrupAddress
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_e72d0bd0Address)
                            call sub_e72d0bd0Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args syrupAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _268 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_268] = 26
                                mem[_268 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _277 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _277 + 68] = mem[idx + _268 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_277 + 68] = mem[_277 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _277 + -mem[64] + 100
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if sub_17c0431bAddress:
                                    _350 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_350] = 26
                                    mem[_350 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _276 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_276] = 26
                                mem[_276 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _293 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _293 + 68] = mem[idx + _276 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_293 + 68] = mem[_293 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _293 + -mem[64] + 100
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if sub_17c0431bAddress:
                                    _355 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_355] = 26
                                    mem[_355 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_c54873cb:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb):
                                _216 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_216] = 26
                                mem[_216 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _224 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _224 + 68] = mem[idx + _216 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_224 + 68] = mem[_224 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _224 + -mem[64] + 100
                                _244 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_244] = 26
                                mem[_244 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_e72d0bd0Address)
                                call sub_e72d0bd0Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = syrupAddress
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_e72d0bd0Address)
                                call sub_e72d0bd0Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args syrupAddress, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _275 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_275] = 26
                                    mem[_275 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _290 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _290 + 68] = mem[idx + _275 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_290 + 68] = mem[_290 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _290 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if sub_17c0431bAddress:
                                        _354 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_354] = 26
                                        mem[_354 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                        require ext_code.size(sub_e72d0bd0Address)
                                        call sub_e72d0bd0Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 20
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _289 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_289] = 26
                                    mem[_289 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _307 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _307 + 68] = mem[idx + _289 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_307 + 68] = mem[_307 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _307 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if sub_17c0431bAddress:
                                        _357 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_357] = 26
                                        mem[_357 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                        require ext_code.size(sub_e72d0bd0Address)
                                        call sub_e72d0bd0Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 20
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _223 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_223] = 26
                                mem[_223 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _232 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _232 + 68] = mem[idx + _223 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_232 + 68] = mem[_232 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _232 + -mem[64] + 100
                                _246 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_246] = 26
                                mem[_246 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_e72d0bd0Address)
                                call sub_e72d0bd0Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = syrupAddress
                                mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_e72d0bd0Address)
                                call sub_e72d0bd0Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args syrupAddress, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint:
                                    _288 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_288] = 26
                                    mem[_288 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _304 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _304 + 68] = mem[idx + _288 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_304 + 68] = mem[_304 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _304 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if sub_17c0431bAddress:
                                        _356 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_356] = 26
                                        mem[_356 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 20
                                        require ext_code.size(sub_e72d0bd0Address)
                                        call sub_e72d0bd0Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 20
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _303 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_303] = 26
                                    mem[_303 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _320 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _320 + 68] = mem[idx + _303 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_320 + 68] = mem[_320 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _320 + -mem[64] + 100
                                    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if sub_17c0431bAddress:
                                        _360 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_360] = 26
                                        mem[_360 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 20
                                        require ext_code.size(sub_e72d0bd0Address)
                                        call sub_e72d0bd0Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 20
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint16 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x737365743a20696e76616c696420686172766573742066656520626173697320706f696e74,
                    mem[201 len 27]
    if not arg5:
        require arg1 < poolInfo.length
        poolInfo[arg1].field_256 = arg2
        uint16(poolInfo[arg1].field_1024) = arg3
        uint16(poolInfo[arg1].field_1040) = arg4
        if poolInfo[arg1].field_256 != arg2:
            if poolInfo[arg1].field_256 > totalAllocPoint:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 8
                if poolInfo[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = poolInfo[idx].field_256 + s
                continue 
            if -stor[(5 * stor8.length) + _247 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _247 + 1]):
                if not -stor[(5 * stor8.length) + _247 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _247 + 1]):
                    require 0 < poolInfo.length
                    if uint256(poolInfo.field_256) > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalAllocPoint -= uint256(poolInfo.field_256)
                    require 0 < poolInfo.length
                    uint256(poolInfo.field_256) = 0
                else:
                    if (-10 * stor[(5 * stor8.length) + _247 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _247 + 1]) / -stor[(5 * stor8.length) + _247 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _247 + 1]) != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    require 0 < poolInfo.length
                    if uint256(poolInfo.field_256) > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (-10 * stor[(5 * stor8.length) + _247 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _247 + 1]) / 15 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint = ((-10 * stor[(5 * stor8.length) + _247 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _247 + 1]) / 15) + totalAllocPoint - uint256(poolInfo.field_256)
                    require 0 < poolInfo.length
                    uint256(poolInfo.field_256) = (-10 * stor[(5 * stor8.length) + _247 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _247 + 1]) / 15
    else:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(poolInfo[idx].field_0))
                staticcall address(poolInfo[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                else:
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.number
                    else:
                        _279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_279] = 30
                        mem[_279 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > block.number:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _279 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            _341 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_341] = 26
                            mem[_341 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _343 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _343 + 68] = mem[idx + _341 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_343 + 68] = mem[_343 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _343 + -mem[64] + 100
                            _363 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_363] = 26
                            mem[_363 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_e72d0bd0Address)
                            call sub_e72d0bd0Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = syrupAddress
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_e72d0bd0Address)
                            call sub_e72d0bd0Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args syrupAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _397 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_397] = 26
                                mem[_397 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _402 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _402 + 68] = mem[idx + _397 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_402 + 68] = mem[_402 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _402 + -mem[64] + 100
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if sub_17c0431bAddress:
                                    _474 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_474] = 26
                                    mem[_474 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _401 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_401] = 26
                                mem[_401 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _412 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _412 + 68] = mem[idx + _401 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_412 + 68] = mem[_412 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _412 + -mem[64] + 100
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if sub_17c0431bAddress:
                                    _483 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_483] = 26
                                    mem[_483 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                _342 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_342] = 26
                                mem[_342 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _349 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _349 + 68] = mem[idx + _342 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_349 + 68] = mem[_349 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _349 + -mem[64] + 100
                                _371 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_371] = 26
                                mem[_371 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_e72d0bd0Address)
                                call sub_e72d0bd0Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = syrupAddress
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_e72d0bd0Address)
                                call sub_e72d0bd0Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args syrupAddress, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _400 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_400] = 26
                                    mem[_400 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _409 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _409 + 68] = mem[idx + _400 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_409 + 68] = mem[_409 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _409 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if sub_17c0431bAddress:
                                        _482 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_482] = 26
                                        mem[_482 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                        require ext_code.size(sub_e72d0bd0Address)
                                        call sub_e72d0bd0Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 20
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _408 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_408] = 26
                                    mem[_408 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _425 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _425 + 68] = mem[idx + _408 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_425 + 68] = mem[_425 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _425 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if sub_17c0431bAddress:
                                        _487 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_487] = 26
                                        mem[_487 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                        require ext_code.size(sub_e72d0bd0Address)
                                        call sub_e72d0bd0Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 20
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_c54873cb:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb):
                                    _348 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_348] = 26
                                    mem[_348 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _356 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _356 + 68] = mem[idx + _348 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_356 + 68] = mem[_356 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _356 + -mem[64] + 100
                                    _376 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_376] = 26
                                    mem[_376 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = syrupAddress
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args syrupAddress, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _407 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_407] = 26
                                        mem[_407 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _422 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _422 + 68] = mem[idx + _407 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_422 + 68] = mem[_422 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _422 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if sub_17c0431bAddress:
                                            _486 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_486] = 26
                                            mem[_486 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                            require ext_code.size(sub_e72d0bd0Address)
                                            call sub_e72d0bd0Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 20
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _421 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_421] = 26
                                        mem[_421 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _439 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _439 + 68] = mem[idx + _421 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_439 + 68] = mem[_439 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _439 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if sub_17c0431bAddress:
                                            _489 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_489] = 26
                                            mem[_489 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                            require ext_code.size(sub_e72d0bd0Address)
                                            call sub_e72d0bd0Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 20
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _355 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_355] = 26
                                    mem[_355 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _364 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _364 + 68] = mem[idx + _355 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_364 + 68] = mem[_364 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _364 + -mem[64] + 100
                                    _378 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_378] = 26
                                    mem[_378 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = syrupAddress
                                    mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args syrupAddress, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint:
                                        _420 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_420] = 26
                                        mem[_420 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _436 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _436 + 68] = mem[idx + _420 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_436 + 68] = mem[_436 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _436 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if sub_17c0431bAddress:
                                            _488 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_488] = 26
                                            mem[_488 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 20
                                            require ext_code.size(sub_e72d0bd0Address)
                                            call sub_e72d0bd0Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 20
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _435 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_435] = 26
                                        mem[_435 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _452 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _452 + 68] = mem[idx + _435 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_452 + 68] = mem[_452 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _452 + -mem[64] + 100
                                        if (10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if sub_17c0431bAddress:
                                            _492 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_492] = 26
                                            mem[_492 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 20
                                            require ext_code.size(sub_e72d0bd0Address)
                                            call sub_e72d0bd0Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 20
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require arg1 < poolInfo.length
        poolInfo[arg1].field_256 = arg2
        uint16(poolInfo[arg1].field_1024) = arg3
        mem[0] = 8
        uint16(poolInfo[arg1].field_1040) = arg4
        if poolInfo[arg1].field_256 != arg2:
            _268 = mem[64]
            mem[64] = mem[64] + 64
            mem[_268] = 30
            mem[_268 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[arg1].field_256 > totalAllocPoint:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 8
                if poolInfo[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = poolInfo[idx].field_256 + s
                continue 
            if -stor[(5 * stor8.length) + _527 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _527 + 1]):
                if not -stor[(5 * stor8.length) + _527 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _527 + 1]):
                    require 0 < poolInfo.length
                    if uint256(poolInfo.field_256) > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalAllocPoint -= uint256(poolInfo.field_256)
                    require 0 < poolInfo.length
                    uint256(poolInfo.field_256) = 0
                else:
                    if (-10 * stor[(5 * stor8.length) + _527 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _527 + 1]) / -stor[(5 * stor8.length) + _527 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _527 + 1]) != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require 0 < poolInfo.length
                    if uint256(poolInfo.field_256) > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (-10 * stor[(5 * stor8.length) + _527 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _527 + 1]) / 15 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint = ((-10 * stor[(5 * stor8.length) + _527 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _527 + 1]) / 15) + totalAllocPoint - uint256(poolInfo.field_256)
                    require 0 < poolInfo.length
                    uint256(poolInfo.field_256) = (-10 * stor[(5 * stor8.length) + _527 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _527 + 1]) / 15
    emit UpdatePoolInfo(arg2, arg3 << 240, arg4, arg1);
}

function add(uint256 arg1, address arg2, uint16 arg3, uint16 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x737365743a20696e76616c696420686172766573742066656520626173697320706f696e74,
                    mem[201 len 27]
    if not arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if address(poolInfo[idx].field_0) == arg2:
                revert with 0, 'add: existing pool'
            idx = idx + 1
            continue 
        if arg1 + totalAllocPoint < totalAllocPoint:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint += arg1
        poolInfo.length++
        address(poolInfo[poolInfo.length].field_0) = arg2
        storF3F7[stor8.length] = arg1
        if block.number > startBlock:
            storF3F7[stor8.length] = block.number
            storF3F7[stor8.length] = 0
            uint16(storF3F7[stor8.length].field_0) = arg3
            uint16(storF3F7[stor8.length].field_16) = arg4
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 8
                _517 = sha3(8)
                if poolInfo[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = poolInfo[idx].field_256 + s
                continue 
            if -stor[(5 * stor8.length) + _517 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _517 + 1]):
                if not -stor[(5 * stor8.length) + _517 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _517 + 1]):
                    require 0 < poolInfo.length
                    if uint256(poolInfo.field_256) > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalAllocPoint -= uint256(poolInfo.field_256)
                    require 0 < poolInfo.length
                    uint256(poolInfo.field_256) = 0
                else:
                    if (-10 * stor[(5 * stor8.length) + _517 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _517 + 1]) / -stor[(5 * stor8.length) + _517 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _517 + 1]) != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require 0 < poolInfo.length
                    if uint256(poolInfo.field_256) > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (-10 * stor[(5 * stor8.length) + _517 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _517 + 1]) / 15 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint = ((-10 * stor[(5 * stor8.length) + _517 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _517 + 1]) / 15) + totalAllocPoint - uint256(poolInfo.field_256)
                    require 0 < poolInfo.length
                    uint256(poolInfo.field_256) = (-10 * stor[(5 * stor8.length) + _517 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _517 + 1]) / 15
        else:
            storF3F7[stor8.length] = startBlock
            storF3F7[stor8.length] = 0
            uint16(storF3F7[stor8.length].field_0) = arg3
            uint16(storF3F7[stor8.length].field_16) = arg4
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 8
                _518 = sha3(8)
                if poolInfo[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = poolInfo[idx].field_256 + s
                continue 
            if -stor[(5 * stor8.length) + _518 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _518 + 1]):
                if not -stor[(5 * stor8.length) + _518 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _518 + 1]):
                    require 0 < poolInfo.length
                    if uint256(poolInfo.field_256) > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalAllocPoint -= uint256(poolInfo.field_256)
                    require 0 < poolInfo.length
                    uint256(poolInfo.field_256) = 0
                else:
                    if (-10 * stor[(5 * stor8.length) + _518 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _518 + 1]) / -stor[(5 * stor8.length) + _518 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _518 + 1]) != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require 0 < poolInfo.length
                    if uint256(poolInfo.field_256) > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (-10 * stor[(5 * stor8.length) + _518 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _518 + 1]) / 15 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint = ((-10 * stor[(5 * stor8.length) + _518 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _518 + 1]) / 15) + totalAllocPoint - uint256(poolInfo.field_256)
                    require 0 < poolInfo.length
                    uint256(poolInfo.field_256) = (-10 * stor[(5 * stor8.length) + _518 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _518 + 1]) / 15
    else:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(poolInfo[idx].field_0))
                staticcall address(poolInfo[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                else:
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.number
                    else:
                        _308 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_308] = 30
                        mem[_308 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > block.number:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _308 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            _338 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_338] = 26
                            mem[_338 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _340 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _340 + 68] = mem[idx + _338 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_340 + 68] = mem[_340 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _340 + -mem[64] + 100
                            _360 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_360] = 26
                            mem[_360 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_e72d0bd0Address)
                            call sub_e72d0bd0Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = syrupAddress
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_e72d0bd0Address)
                            call sub_e72d0bd0Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args syrupAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _394 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_394] = 26
                                mem[_394 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _399 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _399 + 68] = mem[idx + _394 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_399 + 68] = mem[_399 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _399 + -mem[64] + 100
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if sub_17c0431bAddress:
                                    _471 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_471] = 26
                                    mem[_471 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _398 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_398] = 26
                                mem[_398 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    _409 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _409 + 68] = mem[idx + _398 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_409 + 68] = mem[_409 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _409 + -mem[64] + 100
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                if sub_17c0431bAddress:
                                    _480 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_480] = 26
                                    mem[_480 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                _339 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_339] = 26
                                mem[_339 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    _346 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _346 + 68] = mem[idx + _339 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_346 + 68] = mem[_346 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _346 + -mem[64] + 100
                                _368 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_368] = 26
                                mem[_368 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_e72d0bd0Address)
                                call sub_e72d0bd0Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = syrupAddress
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_e72d0bd0Address)
                                call sub_e72d0bd0Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args syrupAddress, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _397 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_397] = 26
                                    mem[_397 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _406 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _406 + 68] = mem[idx + _397 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_406 + 68] = mem[_406 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _406 + -mem[64] + 100
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if sub_17c0431bAddress:
                                        _479 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_479] = 26
                                        mem[_479 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                        require ext_code.size(sub_e72d0bd0Address)
                                        call sub_e72d0bd0Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 20
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _405 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_405] = 26
                                    mem[_405 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        _422 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _422 + 68] = mem[idx + _405 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_422 + 68] = mem[_422 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _422 + -mem[64] + 100
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    if sub_17c0431bAddress:
                                        _484 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_484] = 26
                                        mem[_484 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                        require ext_code.size(sub_e72d0bd0Address)
                                        call sub_e72d0bd0Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 20
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_c54873cb:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb):
                                    _345 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_345] = 26
                                    mem[_345 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _353 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _353 + 68] = mem[idx + _345 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_353 + 68] = mem[_353 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _353 + -mem[64] + 100
                                    _373 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_373] = 26
                                    mem[_373 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = syrupAddress
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args syrupAddress, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _404 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_404] = 26
                                        mem[_404 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _419 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _419 + 68] = mem[idx + _404 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_419 + 68] = mem[_419 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _419 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if sub_17c0431bAddress:
                                            _483 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_483] = 26
                                            mem[_483 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                            require ext_code.size(sub_e72d0bd0Address)
                                            call sub_e72d0bd0Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 20
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _418 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_418] = 26
                                        mem[_418 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _436 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _436 + 68] = mem[idx + _418 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_436 + 68] = mem[_436 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _436 + -mem[64] + 100
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if sub_17c0431bAddress:
                                            _486 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_486] = 26
                                            mem[_486 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0 / totalAllocPoint / 20
                                            require ext_code.size(sub_e72d0bd0Address)
                                            call sub_e72d0bd0Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 20
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_c54873cb) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _352 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_352] = 26
                                    mem[_352 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        _361 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _361 + 68] = mem[idx + _352 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_361 + 68] = mem[_361 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _361 + -mem[64] + 100
                                    _375 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_375] = 26
                                    mem[_375 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = syrupAddress
                                    mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_e72d0bd0Address)
                                    call sub_e72d0bd0Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args syrupAddress, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint:
                                        _417 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_417] = 26
                                        mem[_417 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _433 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _433 + 68] = mem[idx + _417 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_433 + 68] = mem[_433 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _433 + -mem[64] + 100
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if sub_17c0431bAddress:
                                            _485 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_485] = 26
                                            mem[_485 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 20
                                            require ext_code.size(sub_e72d0bd0Address)
                                            call sub_e72d0bd0Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 20
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _432 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_432] = 26
                                        mem[_432 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            _449 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _449 + 68] = mem[idx + _432 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_449 + 68] = mem[_449 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _449 + -mem[64] + 100
                                        if (10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        if sub_17c0431bAddress:
                                            _489 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_489] = 26
                                            mem[_489 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 20
                                            require ext_code.size(sub_e72d0bd0Address)
                                            call sub_e72d0bd0Address.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (block.number * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_c54873cb * poolInfo[idx].field_256) / totalAllocPoint / 20
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if address(poolInfo[idx].field_0) == arg2:
                revert with 0, 'add: existing pool'
            idx = idx + 1
            continue 
        if arg1 + totalAllocPoint < totalAllocPoint:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint += arg1
        if block.number > startBlock:
            _579 = mem[64]
            mem[64] = mem[64] + 192
            mem[_579] = arg2
            mem[_579 + 32] = arg1
            mem[_579 + 64] = block.number
            mem[_579 + 96] = 0
            mem[_579 + 128] = arg3
            mem[_579 + 160] = arg4
            poolInfo.length++
            address(poolInfo[poolInfo.length].field_0) = arg2
            storF3F7[stor8.length] = arg1
            storF3F7[stor8.length] = block.number
            storF3F7[stor8.length] = 0
            uint16(storF3F7[stor8.length].field_0) = arg3
            uint16(storF3F7[stor8.length].field_16) = arg4
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 8
                _689 = sha3(8)
                if poolInfo[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = poolInfo[idx].field_256 + s
                continue 
            if -stor[(5 * stor8.length) + _689 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _689 + 1]):
                if not -stor[(5 * stor8.length) + _689 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _689 + 1]):
                    require 0 < poolInfo.length
                    if uint256(poolInfo.field_256) > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalAllocPoint -= uint256(poolInfo.field_256)
                    require 0 < poolInfo.length
                    uint256(poolInfo.field_256) = 0
                else:
                    if (-10 * stor[(5 * stor8.length) + _689 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _689 + 1]) / -stor[(5 * stor8.length) + _689 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _689 + 1]) != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require 0 < poolInfo.length
                    if uint256(poolInfo.field_256) > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (-10 * stor[(5 * stor8.length) + _689 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _689 + 1]) / 15 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint = ((-10 * stor[(5 * stor8.length) + _689 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _689 + 1]) / 15) + totalAllocPoint - uint256(poolInfo.field_256)
                    require 0 < poolInfo.length
                    uint256(poolInfo.field_256) = (-10 * stor[(5 * stor8.length) + _689 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _689 + 1]) / 15
        else:
            _586 = mem[64]
            mem[64] = mem[64] + 192
            mem[_586] = arg2
            mem[_586 + 32] = arg1
            mem[_586 + 64] = startBlock
            mem[_586 + 96] = 0
            mem[_586 + 128] = arg3
            mem[_586 + 160] = arg4
            poolInfo.length++
            address(poolInfo[poolInfo.length].field_0) = arg2
            storF3F7[stor8.length] = arg1
            storF3F7[stor8.length] = startBlock
            storF3F7[stor8.length] = 0
            uint16(storF3F7[stor8.length].field_0) = arg3
            uint16(storF3F7[stor8.length].field_16) = arg4
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 8
                _690 = sha3(8)
                if poolInfo[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = poolInfo[idx].field_256 + s
                continue 
            if -stor[(5 * stor8.length) + _690 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _690 + 1]):
                if not -stor[(5 * stor8.length) + _690 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _690 + 1]):
                    require 0 < poolInfo.length
                    if uint256(poolInfo.field_256) > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalAllocPoint -= uint256(poolInfo.field_256)
                    require 0 < poolInfo.length
                    uint256(poolInfo.field_256) = 0
                else:
                    if (-10 * stor[(5 * stor8.length) + _690 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _690 + 1]) / -stor[(5 * stor8.length) + _690 + 1] + (poolInfo.length * stor[(5 * stor8.length) + _690 + 1]) != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require 0 < poolInfo.length
                    if uint256(poolInfo.field_256) > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (-10 * stor[(5 * stor8.length) + _690 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _690 + 1]) / 15 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint = ((-10 * stor[(5 * stor8.length) + _690 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _690 + 1]) / 15) + totalAllocPoint - uint256(poolInfo.field_256)
                    require 0 < poolInfo.length
                    uint256(poolInfo.field_256) = (-10 * stor[(5 * stor8.length) + _690 + 1]) + (10 * poolInfo.length * stor[(5 * stor8.length) + _690 + 1]) / 15
    emit 0x47d4859d: arg1, arg3 << 240, arg4, arg2
}



}
